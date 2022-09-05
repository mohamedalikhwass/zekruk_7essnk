import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vibration/vibration.dart';
import '../azkar_layout/azkar_cubit/azkar_cubit.dart';
import '../azkar_layout/azkar_cubit/azkar_states.dart';
import '../model/azkar_model.dart';
import '../model/azkar_model.dart';
import '../model/azkar_model.dart';

class AzkarAlastekazScreen  extends StatelessWidget {

  int index= 1;
  @override
  Widget build(BuildContext context) {

    var cubit =AzkarCubit.get(context);
    return BlocConsumer<AzkarCubit,AzkarStates>(
        listener:(context, state) {

        },
        builder:(context, state) {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: 5,),
              if(cubit.changeSliderTop)
                CarouselSlider(
                  items: [
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'عطر فمك طوال اليوم بالصلاة على النبي',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'ذكرالله يُرضي الرحمن ويسعد الإنسان ويذهب الأحزان ويملأالميزان',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'أجعل القراّن ربيع قلبك فقرأ ولو  أيه كل يوم',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'الاستغفار يَفتح الأقفال ويشرح البال ويُكثر المال ويُصلح الحال',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'يوم تشعر بضيق وفراغ ردد: لا إله إلا أنت سبحانك إني كنت من الظالمين',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,


                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'مَن قرأ سورة الدخان في ليلة أصبح يستغفر له 70 ألف ملك',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'إن لله مسافات لا تُقطع بالاقدام وإنما تُقطع بالقلوب',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'ما من عبدٍ يذكر الله في نفسه إلا وذكره الله في نفسه',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'فَاصبر على همومك واستعن عليها بذكر الله ، فَوالله لا مُذهِب  لها إلّا بالله',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'إن القلوب تصدأ كصدأ الحديد؛ وجلاؤها الاستغفار',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'لا تنسونا من صالح دعائكم.للاقتراحات تواصلوا معنا',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                  options:CarouselOptions(
                    height: 60,
                    autoPlay: true,
                    initialPage: 0,
                    viewportFraction: 1.0 ,
                    autoPlayAnimationDuration: Duration(seconds: 2,),
                    autoPlayInterval:  Duration(seconds: 10,),

                  ) ,

                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.amber.withOpacity(.7),
                    child: Stack(

                      alignment: Alignment.topCenter,


                      children: [

                        Text('$index / 4',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(

                                // width: double.infinity,
                                // height: 435,
                                color: Colors.grey.withOpacity(.5),


                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 18),
                                  child: Center(
                                    child: SingleChildScrollView(
                                      physics:BouncingScrollPhysics() ,
                                      child: Text('${alastekazList[cubit.alastekazListIndex]}',
                                        style: TextStyle(
                                          fontSize: cubit.changeTextSize,
                                          wordSpacing: 0.8,
                                          fontFamily: 'quran',


                                        ),
                                        textAlign:TextAlign.center ,
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      color: Colors.amber,
                      iconSize: 40,


                      onPressed: ()
                      {
                        {
                          if(1<index&&4>=index) {
                            index--;
                            cubit.AzkaralastekazChangeText(index);
                          }
                          else
                            return null;
                          // else if(index==0)
                          //   index=0;
                        }
                      }
                      , icon: Icon(Icons.arrow_back_ios)),
                  SizedBox(width: 25,),
                  TextButton(
                    onPressed: ()
                    {
                      if(0<index&&4>=index) {
                        index=1;
                        cubit.AzkaralastekazChangeText(index);

                      }
                    },
                    child: Text('يلا نبدأ من الأول',
                      style: TextStyle(fontSize: 25)
                      ,),
                  ),
                  SizedBox(width: 25,),
                  IconButton(
                      color: Colors.amber,
                      iconSize: 40,


                      onPressed: ()
                      {
                        if(1<=index&&4>index) {
                          index++;
                          cubit.AzkaralastekazChangeText(index);
                          if(cubit.changeTextTowst) {
                            // if (index == 2) {
                            //   Fluttertoast.showToast(
                            //     msg: 'متكسلش وكمل للاخر',
                            //     toastLength: Toast.LENGTH_LONG,
                            //     gravity: ToastGravity.CENTER,
                            //     timeInSecForIosWeb: 1,
                            //     backgroundColor: Colors.amber,
                            //     textColor: Colors.white,
                            //     fontSize: 20.0,
                            //
                            //   );
                            // }
                            // else if (index == 22) {
                            //   Fluttertoast.showToast(
                            //     msg: 'هانت خلاص قربت تخلص',
                            //     toastLength: Toast.LENGTH_LONG,
                            //     gravity: ToastGravity.CENTER,
                            //     timeInSecForIosWeb: 1,
                            //     backgroundColor: Colors.amber,
                            //     textColor: Colors.white,
                            //     fontSize: 20.0,
                            //
                            //   );
                            // }
                             if (index == 4) {
                               Vibration.vibrate(duration: 500);
                              Fluttertoast.showToast(
                                msg: 'خلصت خلاص ربنا يجعله في مييزان حسناتك\n لاتنسونامن صالح دعائكم',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 3,
                                backgroundColor: Colors.amber,
                                textColor: Colors.white,
                                fontSize: 20.0,


                              );
                            }
                          }
                        }
                        else
                          return null;
                      },
                      icon: Icon(Icons.arrow_forward_ios)),

                ],
              ),
              SizedBox(height: 10,),


            ],


          );
        }
    );

  }
}
