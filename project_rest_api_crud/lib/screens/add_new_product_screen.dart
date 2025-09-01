import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _productImageTEController =
      TextEditingController();
  final TextEditingController _productCodeTEController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _inProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: _buildNewProductForm(),
        ),
      ),
    );
  }

  void _onTapAddProductButton() {
    if (_formKey.currentState!.validate()) {
      addNewProduct();
    }
  }

  Future<void> addNewProduct() async {
    _inProgress = true;
    setState(() {});
    Uri uri = Uri.parse('http://35.73.30.144:2008/api/v1/CreateProduct');
    int totalPrice = int.parse(_unitPriceTEController.text) * int.parse(_quantityTEController.text);
    Map<String, dynamic> requestBody = {
      "ProductName": _productNameTEController.text,
      "ProductCode": _productCodeTEController.text,
      "Img": _productImageTEController.text,
      "Qty": _quantityTEController.text,
      "UnitPrice": _unitPriceTEController.text,
      "TotalPrice": totalPrice,
    };
    Response response = await post(uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(requestBody));

    if (response.statusCode == 200) {
      _clearTextFields();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Product added Successfully !")));
    }
    _inProgress = false;
    setState(() {});
  }

  Widget _buildNewProductForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _productNameTEController,
            decoration:
                InputDecoration(hintText: "Name", labelText: "Product Name"),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Enter a valid value";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _productCodeTEController,
            decoration:
            InputDecoration(hintText: "Code", labelText: "Product Code"),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Enter a valid value";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityTEController,
            decoration:
                InputDecoration(hintText: "Quantity", labelText: "Quantity"),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Enter a valid value";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _unitPriceTEController,
            decoration:
            InputDecoration(hintText: "Price", labelText: "Unit Price"),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Enter a valid value";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _productImageTEController,
            decoration:
                InputDecoration(hintText: "Image", labelText: "Image URL"),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Enter a valid value";
              }
              return null;
            },
          ),
          SizedBox(
            height: 48,
          ),
          _inProgress
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : CupertinoButton(
                  child: Text("Add Product"),
                  onPressed: () {
                    _onTapAddProductButton();
                  },
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 120),
                )
        ],
      ),
    );
  }

  void _clearTextFields() {
    _productNameTEController.clear();
    _unitPriceTEController.clear();
    _quantityTEController.clear();
    _totalPriceTEController.clear();
    _productImageTEController.clear();
    _productCodeTEController.clear();
  }

  @override
  void dispose() {
    _productNameTEController.dispose();
    _unitPriceTEController.dispose();
    _quantityTEController.dispose();
    _totalPriceTEController.dispose();
    _productImageTEController.dispose();
    _productCodeTEController.dispose();
    super.dispose();
  }
}
