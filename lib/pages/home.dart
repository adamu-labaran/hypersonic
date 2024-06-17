import 'package:flutter/material.dart';
import 'package:hypersonic/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // list of product
    const categories = [
      "assets/images/car2.png",
      "assets/images/audi1.jpg",
      "assets/images/audi2.jpg",
      "assets/images/audi3.jpg",
      "assets/images/audi4.jpg",
      "assets/images/audi5.jpg",
      "assets/images/audi5.jpg",
      "assets/images/audi1.jpg",
      "assets/images/car2.png",
      "assets/images/car2.png",
      "assets/images/car2.png",
      "assets/images/car2.png",
      "assets/images/car2.png",
      "assets/images/car2.png",
      "assets/images/car2.png",
      "assets/images/car2.png",
    ];
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // crating another file with AppWidget so it take care of textStyle
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      // Text was wrapped with column widget to provide a balance between name and greeting
                      'welcome, Adamu',
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Text(
                      'Goood Morning',
                      style: AppWidget.lightTextFieldStyyle(),
                    ),
                  ],
                ),
                // user image after login to the app: the image was wrapped with widget 'clipRRect',
                //and set borderradius.circular
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/f13.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            /**
             * working with text field where a user will search for a product 
             * */
            // SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Product",
                  hintStyle: AppWidget.lightTextFieldStyyle(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            /**
             * working to display the product from user search bar
             * the product will display the user search result 
             * with alternate search suggestion of see all at the far right
             * 
             */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: AppWidget
                      .semiboldTextFieldstyle(), // imported semiboldTextFieldstyle() from support_widget file
                ),
                Text(
                  'see all',
                  style: AppWidget
                      .seeAllTextFieldStyle(), // imported semiboldTextFieldstyle() from support_widget file
                )
              ],
            ),
            // listView.builder to pop up the search result
            //in the horizontal direction using container widget
            SizedBox(height: 10.0),
            Row(
              children: [
                Container(
                  height: 150,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFFD6F3e),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text("All",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold))),
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTile(image: categories[index]);
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All product',
                  style: AppWidget
                      .semiboldTextFieldstyle(), // imported semiboldTextFieldstyle() from support_widget file
                ),
                Text(
                  'see all',
                  style: AppWidget
                      .seeAllTextFieldStyle(), // imported semiboldTextFieldstyle() from support_widget file
                )
              ],
            ),
            // working on all the product from the see all sugesstion
            SizedBox(height: 10.0),
            Container(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                   // SINGLE PPRODUCT
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/car2.png',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'swift car',
                            style: AppWidget.semiboldTextFieldstyle(),
                          ),
                          SizedBox(width: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e), fontSize: 15),
                              ),
                              SizedBox(width: 30.0),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(Icons.add, color: Colors.white)),
                                  //END OF SINGLE PRODUCT
                            ],
                          )
                        ],
                      )),
                   // SINGLE PPRODUCT
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/audi5.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Audi',
                            style: AppWidget.semiboldTextFieldstyle(),
                          ),
                          SizedBox(width: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e), fontSize: 15),
                              ),
                              SizedBox(width: 30.0),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(Icons.add, color: Colors.white)),
                                  //END OF SINGLE PRODUCT
                            ],
                          )
                        ],
                      )),
                    // SINGLE PPRODUCT
                  Container(
                    margin: EdgeInsets.only(right: 20.0),

                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/swift-lam.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'swift car',
                            style: AppWidget.semiboldTextFieldstyle(),
                          ),
                          SizedBox(width: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e), fontSize: 15),
                              ),
                              SizedBox(width: 30.0),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(Icons.add, color: Colors.white)),
                                  //END OF SINGLE PRODUCT
                            ],
                          )
                        ],
                      )),
                    // SINGLE PPRODUCT
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/swift-lam.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'swift car',
                            style: AppWidget.semiboldTextFieldstyle(),
                          ),
                          SizedBox(width: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e), fontSize: 15),
                              ),
                              SizedBox(width: 30.0),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(Icons.add, color: Colors.white)),
                                  //END OF SINGLE PRODUCT
                            ],
                          )
                        ],
                      )),
                    // SINGLE PPRODUCT
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/swift-lam.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'swift car',
                            style: AppWidget.semiboldTextFieldstyle(),
                          ),
                          SizedBox(width: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e), fontSize: 15),
                              ),
                              SizedBox(width: 30.0),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(Icons.add, color: Colors.white)),
                                  //END OF SINGLE PRODUCT
                            ],
                          )
                        ],
                      )),
                    // SINGLE PPRODUCT
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/swift-lam.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'swift car',
                            style: AppWidget.semiboldTextFieldstyle(),
                          ),
                          SizedBox(width: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e), fontSize: 15),
                              ),
                              SizedBox(width: 30.0),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(Icons.add, color: Colors.white)),
                                  //END OF SINGLE PRODUCT
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// class that will handle the pop up product
/// to the user when querying to a specific product
class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 65,
            width: 65,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
