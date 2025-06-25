import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

class AppDropdownItem<T> {
  const AppDropdownItem({
    required this.value,
    this.child,
    this.label,
    this.queryString,
    this.height = 40,
  });

  final T value;
  final Widget? child;
  final String? label;
  final String? queryString;
  final double height;
}

class AppDropdown<T> extends StatefulWidget {
  const AppDropdown({
    required this.button,
    required this.items,
    this.customItems,
    this.selectedValue,
    super.key,
    this.onItemSelected,
    this.overlayWidth,
    this.overlayPadding,
    this.decoration,
    this.overlayAlignment = Alignment.centerLeft,
    this.itemBorderRadius,
    this.itemGap,
    this.selectedItemBackgroundColor,
    this.selectedItemForegroundColor,
    this.overlayColor,
    this.itemsAlignment,
    this.overlayHeight,
    this.readOnly = false,
    this.enableSearch = false,
    this.itemPadding,
    this.enabled = true,
  });

  final bool enableSearch;
  final bool enabled;
  final T? selectedValue;
  final Widget button;
  final List<AppDropdownItem<T>> items;
  final List<Widget>? customItems;
  final void Function(T)? onItemSelected;
  final double? overlayWidth;
  final double? itemBorderRadius;
  final double? overlayHeight;
  final EdgeInsetsGeometry? overlayPadding;
  final EdgeInsetsGeometry? itemPadding;
  final int? itemGap;
  final BoxDecoration? decoration;
  final Color? selectedItemBackgroundColor;
  final Color? selectedItemForegroundColor;
  final Color? overlayColor;
  final AlignmentGeometry overlayAlignment;
  final AlignmentGeometry? itemsAlignment;
  final bool readOnly;

  @override
  State<AppDropdown<T>> createState() => _AppDropdownState<T>();
}

class _AppDropdownState<T> extends State<AppDropdown<T>> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool _isOpen = false;
  final _buttonKey = GlobalKey();

  double _overlayHeight = 0;

  final TextEditingController _searchController = TextEditingController();
  late ValueNotifier<List<AppDropdownItem<T>>> _filteredItemsNotifier;

  @override
  void initState() {
    super.initState();
    _filteredItemsNotifier = ValueNotifier(widget.items);
    _calculateOverlayHeight();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void didUpdateWidget(AppDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items != widget.items) {
      _filteredItemsNotifier.value = widget.items;
      _searchController.clear();
      _calculateOverlayHeight();
    }
  }

  void _onSearchChanged() {
    if (mounted) {
      _filteredItemsNotifier.value =
          widget.items.where((item) {
            return (item.queryString ?? '').toLowerCase().contains(
              _searchController.text.toLowerCase(),
            );
          }).toList();
      _calculateOverlayHeight();
    }
  }

  void _calculateOverlayHeight() {
    if (widget.overlayHeight == null) {
      _overlayHeight = _filteredItemsNotifier.value.fold(
        widget.enableSearch ? 60.0 : 0.0,
        (sum, item) => sum + item.height + (widget.itemGap ?? 8),
      );
      _overlayHeight = _overlayHeight > 0.4.sh ? 0.4.sh : _overlayHeight;
    } else {
      _overlayHeight = widget.overlayHeight!;
    }
    // Mark overlay for rebuild to reflect new height
    _overlayEntry?.markNeedsBuild();
  }

  void _removeOverlay() {
    _searchController.clear();
    _filteredItemsNotifier.value = widget.items;
    _overlayEntry?.remove();
    _overlayEntry = null;
    _isOpen = false;
  }

  void _toggleDropdown() {
    if (widget.enabled && !widget.readOnly) {
      if (_isOpen) {
        _removeOverlay();
      } else {
        _createOverlay();
        setState(() => _isOpen = true);
      }
    }
  }

  void _createOverlay() {
    _overlayEntry = _customDropdownOverlay();
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _customDropdownOverlay() {
    final renderBox = context.findRenderObject()! as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    final buttonSize = renderBox.size;
    final buttonWidth = _getButtonWidth();
    final showAbove =
        offset.dy + _overlayHeight > MediaQuery.of(context).size.height;

    return OverlayEntry(
      builder: (context) {
        return GestureDetector(
          onTap: _removeOverlay,
          behavior: HitTestBehavior.translucent,
          child: ColoredBox(
            color: Colors.transparent,
            child: Stack(
              children: [
                CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset: _getOffset(buttonSize, showAbove),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: _overlayHeight,
                        minWidth: widget.overlayWidth ?? buttonWidth,
                        maxWidth: widget.overlayWidth ?? buttonWidth,
                      ),
                      child: Container(
                        padding: widget.overlayPadding,
                        decoration:
                            widget.decoration ??
                            BoxDecoration(
                              color:
                                  widget.overlayColor ??
                                  context.appTheme.background,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                        child: Column(
                          children: [
                            if (widget.enableSearch)
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextField(
                                  controller: _searchController,
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 6.h,
                                      horizontal: 8.w,
                                    ),
                                    isDense: true,
                                  ),
                                ),
                              ),
                            Expanded(
                              child: ValueListenableBuilder<
                                List<AppDropdownItem<T>>
                              >(
                                valueListenable: _filteredItemsNotifier,
                                builder: (context, filteredItems, _) {
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    itemCount: filteredItems.length,
                                    itemBuilder: (context, index) {
                                      final item = filteredItems[index];
                                      final isSelected =
                                          item.value == widget.selectedValue;
                                      return InkWell(
                                        onTap:
                                            widget.enabled
                                                ? () {
                                                  widget.onItemSelected?.call(
                                                    item.value,
                                                  );
                                                  _removeOverlay();
                                                }
                                                : null,
                                        child: Container(
                                          padding:
                                              widget.itemPadding ??
                                              EdgeInsets.symmetric(
                                                horizontal: 16.w,
                                              ),
                                          height: item.height,
                                          decoration: BoxDecoration(
                                            color:
                                                isSelected
                                                    ? widget.selectedItemBackgroundColor ??
                                                        context
                                                            .appTheme
                                                            .background
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.circular(
                                              widget.itemBorderRadius ?? 4.r,
                                            ),
                                          ),
                                          alignment: widget.itemsAlignment,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child:
                                                item.child ??
                                                SizedBox(
                                                  width:
                                                      widget.overlayWidth ??
                                                      buttonWidth,
                                                  child: Text(
                                                    item.label!,
                                                    style: TextStyle(
                                                      color:
                                                          isSelected
                                                              ? widget.selectedItemForegroundColor ??
                                                                  context
                                                                      .appTheme
                                                                      .primary
                                                              : context
                                                                  .appTheme
                                                                  .darkText,
                                                    ),
                                                  ),
                                                ),
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder:
                                        (context, index) =>
                                            widget.itemGap != null
                                                ? widget.itemGap!.ph
                                                : 8.ph,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  double _getButtonWidth() {
    final renderBox =
        _buttonKey.currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.size.width ?? 0;
  }

  Offset _getOffset(Size buttonSize, bool showAbove) {
    final dx = switch (widget.overlayAlignment) {
      Alignment.centerLeft => 0.0,
      Alignment.center => (buttonSize.width - (widget.overlayWidth ?? 0)) / 2,
      Alignment.centerRight => buttonSize.width - (widget.overlayWidth ?? 0),
      _ => 0.0,
    };
    final dy = showAbove ? -_overlayHeight - 5 : buttonSize.height + 5;
    return Offset(dx, dy);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _filteredItemsNotifier.dispose();
    _overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        key: _buttonKey,
        child: InkWell(
          onTap: widget.enabled ? _toggleDropdown : null,
          child: widget.button,
        ),
      ),
    );
  }
}
