import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:image_picker/image_picker.dart';

class EditSelectedProduct extends StatefulWidget {
  @override
  _EditSelectedProductState createState() => _EditSelectedProductState();
}

class _EditSelectedProductState extends State<EditSelectedProduct> {
  String id = '123452324545';

  bool imageAvailability;
  bool listedOnline = false;
  String mfgdate,
      expDate,
      productQuantity,
      unit,
      productDescription,
      productWeight,
      brand,
      productName,
      productCategory,
      supplierName;
  double costPrice, sellPrice;
  File _image;
  final picker = ImagePicker();
  List<ImageSource> values = [ImageSource.camera, ImageSource.gallery];

  @override
  void initState() {
    imageAvailability = false;
  }

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("From where do you want to take the photo?"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text("Gallery"),
                      onTap: () {
                        getImageFromGallery();
                        Navigator.pop(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        getImageFromCamera();
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ));
        });
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        imageAvailability = true;
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        imageAvailability = true;
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: imageAvailability
                        ? GestureDetector(
                            onTap: () {
                              _showSelectionDialog(context);
                            },
                            child: Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Center(
                                    child:
                                        Container(child: Image.file(_image)))),
                          )
                        : Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 35,
                                right: MediaQuery.of(context).size.width / 4,
                                left: MediaQuery.of(context).size.width / 4,
                                bottom: MediaQuery.of(context).size.width / 50),
                            decoration: BoxDecoration(
                                color: Color(0xffF9F9F9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: GestureDetector(
                              child: Container(
                                child: Icon(
                                  Icons.add_a_photo,
                                  size: MediaQuery.of(context).size.height / 10,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                _showSelectionDialog(context);
                              },
                            )),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                          child: imageAvailability
                              ? null
                              : Center(
                                  child: Text(
                                    'Add Product image',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                  ),
                                ))),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Center(
                        child: Text(
                          id,
                          style: TextStyle(
                              fontFamily: 'LibreBarcode',
                              fontSize:
                                  MediaQuery.of(context).size.height / 28),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    height: MediaQuery.of(context).size.height / 20,
                    child: TextField(
                      decoration: InputDecoration(
                              labelText: 'Supplier Name',
                              focusColor: kPrimaryColor,
                              hintText: 'Abc Product Supplier',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 80),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24.0)),
                              ),
                              fillColor: Colors.white,
                              filled: true)
                          .copyWith(
                              // errorText: lphone
                              //     ? "We need Contact number for contact and Record "
                              //     : null,
                              ),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: MediaQuery.of(context).size.height / 50),
                      onChanged: (value) {
                        supplierName = value;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    height: MediaQuery.of(context).size.height / 20,
                    child: TextField(
                      decoration: InputDecoration(
                              labelText: 'Product Category',
                              focusColor: kPrimaryColor,
                              hintText: 'Eg. Office or Dairy, etc.',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 80),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24.0)),
                              ),
                              fillColor: Colors.white,
                              filled: true)
                          .copyWith(
                              // errorText: lphone
                              //     ? "We need Contact number for contact and Record "
                              //     : null,
                              ),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: MediaQuery.of(context).size.height / 50),
                      onChanged: (value) {
                        productCategory = value;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    height: MediaQuery.of(context).size.height / 20,
                    child: TextField(
                      decoration: InputDecoration(
                              labelText: 'Product Name',
                              focusColor: kPrimaryColor,
                              hintText: 'Product Name here',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 80),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24.0)),
                              ),
                              fillColor: Colors.white,
                              filled: true)
                          .copyWith(
                              // errorText: lphone
                              //     ? "We need Contact number for contact and Record "
                              //     : null,
                              ),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: MediaQuery.of(context).size.height / 50),
                      onChanged: (value) {
                        productName = value;
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, right: 5, left: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            decoration: InputDecoration(
                                    labelText: 'Product Weight',
                                    focusColor: kPrimaryColor,
                                    hintText: 'Eg. 250 gm',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              productWeight = value;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            decoration: InputDecoration(
                                    labelText: 'Brand',
                                    focusColor: kPrimaryColor,
                                    hintText: 'Eg. Parley',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              brand = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, right: 5, left: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                    labelText: 'Purchasing Price Rs',
                                    focusColor: kPrimaryColor,
                                    hintText: 'Eg. 10',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              costPrice = double.parse(value);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                    labelText: 'Selling Price',
                                    focusColor: kPrimaryColor,
                                    hintText: 'Eg.100',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              sellPrice = double.parse(value);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    height: MediaQuery.of(context).size.height / 20,
                    child: TextField(
                      decoration: InputDecoration(
                              labelText: 'Product Description',
                              focusColor: kPrimaryColor,
                              hintText: 'Product Description here',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 80),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24.0)),
                              ),
                              fillColor: Colors.white,
                              filled: true)
                          .copyWith(
                              // errorText: lphone
                              //     ? "We need Contact number for contact and Record "
                              //     : null,
                              ),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: MediaQuery.of(context).size.height / 50),
                      onChanged: (value) {
                        productDescription = value;
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, right: 5, left: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                    labelText: 'Product Quantity',
                                    focusColor: kPrimaryColor,
                                    hintText: '0',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              productQuantity = value;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            decoration: InputDecoration(
                                    labelText: 'Unit',
                                    focusColor: kPrimaryColor,
                                    hintText: 'Eg. Kg,g,lit,etc.',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              unit = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, right: 5, left: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            decoration: InputDecoration(
                                    labelText: 'Mfg. Date',
                                    focusColor: kPrimaryColor,
                                    hintText: 'Ex. 01/01/2021',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              mfgdate = value;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 20),
                          height: MediaQuery.of(context).size.height / 20,
                          child: TextField(
                            decoration: InputDecoration(
                                    labelText: 'Exp. Date',
                                    focusColor: kPrimaryColor,
                                    hintText: 'Ex. 01/01/2021',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                80),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0)),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true)
                                .copyWith(
                                    // errorText: lphone
                                    //     ? "We need Contact number for contact and Record "
                                    //     : null,
                                    ),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    MediaQuery.of(context).size.height / 50),
                            onChanged: (value) {
                              expDate = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9.6,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Checkbox(
                            value: listedOnline,
                            onChanged: (values) {
                              setState(() {
                                listedOnline
                                    ? listedOnline = false
                                    : listedOnline = true;
                              });
                            },
                          ),
                          Text(
                            'List Online',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    MediaQuery.of(context).size.height / 60,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffBE3500),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              margin: EdgeInsets.only(
                                  right: 10, left: 20, top: 5, bottom: 1),
                              child: Center(
                                child: Text(
                                  'RESCAN',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffBE3500),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              margin: EdgeInsets.only(
                                  right: 10, left: 20, top: 5, bottom: 1),
                              child: Center(
                                child: Text(
                                  'ADD PRODUCT',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
