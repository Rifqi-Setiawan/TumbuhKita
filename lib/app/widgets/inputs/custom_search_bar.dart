import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';

class CustomSearchBar extends StatefulWidget {
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final VoidCallback? onFilterTap;
  final String hintText;

  const CustomSearchBar({
    super.key,
    this.onChanged,
    this.onSubmitted,
    this.onFilterTap,
    this.hintText = "Cari artikel atau forum...",
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const Color searchBarBackgroundColor = Colors.white; 
    const Color searchIconColor = Color(0xFF888888); 
    const double searchBarHeight = 50.0; 

    return Container(
      height: searchBarHeight.h, 
      padding: EdgeInsets.symmetric(horizontal: 8.w), 
      decoration: BoxDecoration(
        color: searchBarBackgroundColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              onChanged: widget.onChanged,
              onSubmitted: widget.onSubmitted,
              style: TextStyle(
                fontSize: 14.sp, 
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: AppTextStyles.caption1Semibold.copyWith(
                  color: Colors.black.withOpacity(0.2)
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            child: Icon(
              Icons.search,
              color: searchIconColor,
              size: 28.sp, 
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}