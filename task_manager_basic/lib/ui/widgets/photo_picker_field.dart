import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoPickerField extends StatelessWidget {
  const PhotoPickerField({
    super.key,
    required this.onTap,
    this.selectedPhoto,
  });

  final VoidCallback onTap;
  final XFile? selectedPhoto;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                  )),
              child: Text(
                'Photo',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
                child: Text(
              selectedPhoto == null ? 'No photo selected' : selectedPhoto!.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
          ],
        ),
      ),
    );
  }
}
