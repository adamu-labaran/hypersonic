import 'package:flutter/material.dart';
import 'package:hypersonic/widget/support_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        padding: EdgeInsets.only(top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // back arrow where a user can go navigate back to home page
            Stack(
                // using stack to remove unnecessary space from product
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 5.0, left: 20.0),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(Icons.arrow_back_ios_new_outlined)),
                  ),
                  // seleected product item
                  Center(
                      child:
                          Image.asset('assets/images/car2.png', height: 200)),
                ]),
            // displaying product details
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'swift car',
                          style: AppWidget.boldTextFieldStyle(),
                        ),
                        Text(
                          '\$100',
                          style: AppWidget
                              .seeAllTextFieldStyle(), // imported semiboldTextFieldstyle() from support_widget file
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text('Details', style: AppWidget.semiboldTextFieldstyle(),),
                    SizedBox(height: 10.0),
                    Text('description'),
                    SizedBox(height: 90),
                    // checking out widget
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFfd6f3e), 
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text('Check out', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
