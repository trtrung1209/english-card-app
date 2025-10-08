import 'package:english_card_app/values/app_assets.dart';
import 'package:english_card_app/values/app_colors.dart';
import 'package:english_card_app/values/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0,
        title: Text('English today', style: AppStyles.h3.copyWith(
          color: AppColors.textColor,
          fontSize: 36
        ),),
        leading: InkWell(
          onTap: () {

          },
          child: Image.asset(AppAssets.menu),
        ),
      ),

      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              height: size.height * 1/10,
              alignment: Alignment.centerLeft ,
              child: 
              Text(
                '"It iss amazing how complete is the delusion that beauty is goodness."',
                style: AppStyles.h5.copyWith(
                  fontSize: 12,
                  color: AppColors.textColor,
                ),)),
            Container(
              height: size.height * 2/3,
              child: PageView.builder(itemCount: 5, itemBuilder: (context, index){
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(24))
                  ),
                );
              }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: (){
          print('Exchange');
        },
        child: Image.asset(AppAssets.exchange),
        ),
    );
  }
}