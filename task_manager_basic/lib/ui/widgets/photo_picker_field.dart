import 'package:flutter/material.dart';

class PhotoPickerField extends StatelessWidget {
  const PhotoPickerField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 16,
        children: [
          Container(
            alignment: Alignment.center,
            width: 90,
            height: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                )
            ),
            child: Text('Photo', style: TextStyle(color: Colors.white),),
          ),
          Expanded(child: Text('No photo selected')),
        ],
      ),
    );
  }
}