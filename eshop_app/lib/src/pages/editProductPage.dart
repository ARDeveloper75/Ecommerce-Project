import 'package:eshop_app/src/pages/addCatagoryPage.dart';
import 'package:eshop_app/src/pages/addProductPage.dart';
import 'package:eshop_app/src/pages/cartPage.dart';
import 'package:eshop_app/src/pages/homePage.dart';
import 'package:eshop_app/src/pages/productFavoritePage.dart';
import 'package:eshop_app/src/services/serviceController.dart';
import 'package:eshop_app/src/widgets/kText.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProductPage extends StatelessWidget {
  final _ = Get.put(ServiceController(), permanent: true);

  final TextEditingController titleC = TextEditingController();
  final TextEditingController priceC = TextEditingController();
  final TextEditingController discountC = TextEditingController();
  final TextEditingController ratingC = TextEditingController();
  final TextEditingController imageUrlC = TextEditingController();
  final TextEditingController descriptionC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Get.to(ProductFavoritePage());
              },
              title: KText(
                text: 'Update Product',
                fontSize: 20,
              ),
              leading: Icon(
                EvaIcons.heart,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.format_align_center),
        ),
        title: Row(
          children: [
            // SizedBox(
            //   width: 70,
            // ),
            KText(
              text: 'Update Product',
              fontSize: 20,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(HomePage());
            },
            icon: Icon(
              EvaIcons.homeOutline,
              color: Colors.grey,
              size: 23,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => CartPage());
            },
            icon: Icon(
              EvaIcons.shoppingCartOutline,
              size: 23,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            titleField(),
            SizedBox(height: 20),
            priceField(),
            SizedBox(height: 20),
            discountField(),
            SizedBox(height: 20),
            ratingField(),
            SizedBox(height: 20),
            imageUrlField(),
            SizedBox(height: 20),
            descriptionField(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton.icon(
                  onPressed: () async {
                    _.addProductC.addProduct();
                    Get.back();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: KText(
                    text: 'Update Product',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: KText(
                text: 'Or',
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton.icon(
                  onPressed: () async {
                    Get.to(AddCatagoryPage());
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: KText(
                    text: 'Add Catagory',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(HomePage());
              },
              child: Container(
                height: 60,
                width: 50,
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 50,
                child: Icon(
                  Icons.credit_card_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(AddProductPage());
              },
              child: Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ),
            Container(
              height: 60,
              width: 50,
              child: Icon(
                Icons.attach_money_outlined,
                color: Colors.black54,
                size: 30,
              ),
            ),
            Icon(
              Icons.person_outline,
              color: Colors.black54,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget titleField() {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.text,
          // controller: titleC,
          onChanged: _.addProductC.title,
          cursorColor: Colors.green,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          toolbarOptions: ToolbarOptions(
            copy: false,
            paste: false,
            selectAll: false,
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
              ),
            ),
            // hintText: 'Enter your prodcut name',
            // hintStyle: GoogleFonts.lato(
            // color: HexColor('3D4584'),
            // ),
            labelText: 'Enter your product',
            labelStyle: GoogleFonts.lato(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(
              EvaIcons.text,
              color: Colors.grey,
              size: 22,
            ),
            fillColor: Colors.white,
            filled: false,
          ),
        ),
      ),
    );
  }

  Widget priceField() {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          // controller: priceC,
          onChanged: _.addProductC.price,
          cursorColor: Colors.green,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          toolbarOptions: ToolbarOptions(
            copy: false,
            paste: false,
            selectAll: false,
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
              ),
            ),
            // hintText: 'Enter your prodcut name',
            // hintStyle: GoogleFonts.lato(
            //   color: HexColor('3D4584'),
            // ),
            labelText: 'Enter your price',
            labelStyle: GoogleFonts.lato(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(
              Icons.monetization_on,
              color: Colors.grey,
              size: 22,
            ),
            fillColor: Colors.white,
            filled: false,
          ),
        ),
      ),
    );
  }

  Widget discountField() {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          // controller: discountC,
          onChanged: _.addProductC.discount,
          cursorColor: Colors.green,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          toolbarOptions: ToolbarOptions(
            copy: false,
            paste: false,
            selectAll: false,
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
              ),
            ),
            // hintText: 'Enter your prodcut name',
            // hintStyle: GoogleFonts.lato(
            //   color: HexColor('3D4584'),
            // ),
            labelText: 'Enter your discount',
            labelStyle: GoogleFonts.lato(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(
              Icons.money_off_csred_rounded,
              color: Colors.grey,
              size: 22,
            ),
            fillColor: Colors.white,
            filled: false,
          ),
        ),
      ),
    );
  }

  Widget ratingField() {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          // controller: ratingC,
          onChanged: _.addProductC.rating,
          cursorColor: Colors.green,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          toolbarOptions: ToolbarOptions(
            copy: false,
            paste: false,
            selectAll: false,
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
              ),
            ),
            // hintText: 'Enter your prodcut name',
            // hintStyle: GoogleFonts.lato(
            //   color: HexColor('3D4584'),
            // ),
            labelText: 'Enter your rating',
            labelStyle: GoogleFonts.lato(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(
              Icons.star,
              color: Colors.grey,
              size: 22,
            ),
            fillColor: Colors.white,
            filled: false,
          ),
        ),
      ),
    );
  }

  Widget imageUrlField() {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.url,
          // controller: imageUrlC,
          onChanged: _.addProductC.imageUrl,
          cursorColor: Colors.green,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          toolbarOptions: ToolbarOptions(
            copy: false,
            paste: false,
            selectAll: false,
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
              ),
            ),
            // hintText: 'Enter your prodcut name',
            // hintStyle: GoogleFonts.lato(
            //   color: HexColor('3D4584'),
            // ),
            labelText: 'Enter product image URL',
            labelStyle: GoogleFonts.lato(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(
              Icons.link,
              color: Colors.grey,
              size: 22,
            ),
            fillColor: Colors.white,
            filled: false,
          ),
        ),
      ),
    );
  }

  Widget descriptionField() {
    return Center(
      child: Container(
        height: 120,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.text,
          // controller: descriptionC,
          onChanged: _.addProductC.description,
          maxLines: 100,
          cursorColor: Colors.green,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          toolbarOptions: ToolbarOptions(
            copy: true,
            paste: false,
            selectAll: false,
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
              ),
            ),
            // hintText: 'Enter your prodcut name',
            // hintStyle: GoogleFonts.lato(
            //   color: HexColor('3D4584'),
            // ),
            labelText: 'Enter your description',
            labelStyle: GoogleFonts.lato(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(
              Icons.description,
              color: Colors.grey,
              size: 22,
            ),
            fillColor: Colors.white,
            filled: false,
          ),
        ),
      ),
    );
  }
}
