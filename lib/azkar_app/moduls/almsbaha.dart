
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getwidget/getwidget.dart';

import 'package:text_scroll/text_scroll.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:vibration/vibration.dart';

import '../azkar_layout/azkar_cubit/azkar_cubit.dart';
import '../azkar_layout/azkar_cubit/azkar_states.dart';

class almsbhaScreen  extends StatelessWidget {

int index1 =1;
int index2 =1;
int value=1;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AzkarCubit,AzkarStates>(
       listener: (context, state) {

       },
      builder: (context, state) {
         var cubit =AzkarCubit.get(context);
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(

                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if(cubit.changeMasbahaList==true)
                      // Container(
                      //    width: 50,
                      //   child: ToggleButtons(
                      //       children: [
                      //         Text('kdndn'),
                      //         Text('kdndn'),
                      //         TextScroll('fnnowenfkefflkwefwewoewo',intervalSpaces: 50,)
                      //       ],
                      //       isSelected:[
                      //         true,
                      //         false,
                      //         false,
                      //       ],
                      //     direction: Axis.vertical,
                      //   ),
                      // ),
                    ToggleSwitch(
                      labels:cubit.masbahaAlslahList,
                      onToggle: ( num)
                      {
                          cubit.togelBetweenTextAlmsbaha(num);
                      },
                      initialLabelIndex: cubit.togelBetweenText,
                      animate: true,
                      iconSize: 20.0,
                      textDirectionRTL: true,
                      radiusStyle: true,
                      minWidth: double.infinity,
                      minHeight: 40,
                      fontSize: 18,
                      isVertical: true,
                      changeOnTap: false,
                      doubleTapDisable: true,


                      customTextStyles: [
                        TextStyle(fontSize: 20,textBaseline:TextBaseline.alphabetic ),
                        TextStyle(fontSize: 20),
                        TextStyle(fontSize: 20),
                       // TextStyle(fontSize: 10,),

                      ],


                    ),
                    if(cubit.changeMasbahaList==false)
                      ToggleSwitch(
                        labels:cubit.masbahaList,
                        onToggle: ( num)
                        {
                          cubit.togelBetweenTextAlmsbaha(num);
                        },
                        initialLabelIndex: cubit.togelBetweenText,
                        animate: true,
                        iconSize: 20.0,
                        textDirectionRTL: true,
                        radiusStyle: false,
                        minWidth: double.infinity,
                        minHeight: 40,
                        fontSize: 18,
                        isVertical: true,
                      ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 90,
                          height: 40,
                          child: GFButton(
                            onPressed: ()
                            {
                              bool value =true;
                              cubit.changeMasbaha(value);
                            },
                            child: Text('ختم الصلاة',textAlign: TextAlign.center,

                              style: TextStyle(
                                  fontSize: 16,
                                fontWeight: FontWeight.bold,


                              )
                              ,),
                            type: GFButtonType.outline2x,
                            color: Colors.amber,

                          ),
                        ),
                        if(cubit.changeMasbahaList==true)
                        Expanded(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.amber,
                            child: CircleAvatar(
                              radius: 70,
                              child: Text(
                                '$index1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,

                                ),

                              ),


                            ),
                          ),
                        ),
                        if(cubit.changeMasbahaList==false)
                          Expanded(
                            child: CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.amber,
                              child: CircleAvatar(
                                radius: 70,
                                child: Text(
                                  '$index2',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 45,

                                  ),

                                ),


                              ),
                            ),
                          ),

                        Container(
                          width: 90,
                          height: 40,
                          child: GFButton(
                            onPressed: ()
                            {
                              bool value =false;
                              cubit.changeMasbaha(value);

                            },
                            child: Text('  المسبحة',textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )
                              ,),
                            type: GFButtonType.outline2x,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    if(cubit.changeMasbahaList==true)
                      TextButton(
                        onPressed: ()
                        {
                          if(0<index1&&100>=index1) {
                            index1=1;
                            cubit.AlmsbhaChangeText(index1);

                          }
                        },
                        child: Text('يلا نبدأ من الأول',
                          style: TextStyle(fontSize: 25)
                          ,),
                      ),

                    if(cubit.changeMasbahaList==false)
                    TextButton(
                      onPressed: ()
                      {
                        if(0<index2&&1000>=index2) {
                          index2=1;
                          cubit.AlmsbhaChangeText(index2);

                        }
                      },
                      child: Text('يلا نبدأ من الأول',
                        style: TextStyle(fontSize: 25)
                        ,),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: IconButton(
                          color: Colors.amber,
                          iconSize: 150,


                          onPressed: () {
                            {

                              if (cubit.changeMasbahaList == true) {

                                if (1 <= index1 && 99 >= index1) {

                                  index1++;
                                  cubit.AlmsbhaChangeText(index1);


                                  if (index1 == 33) {
                                    Vibration.vibrate(duration: 500);
                                    Fluttertoast.showToast(
                                      msg: 'خلصت سبحان الله',
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.amber,
                                      textColor: Colors.white,
                                      fontSize: 20.0,


                                    );

                                  }
                                  else if (index1 == 66) {
                                    Vibration.vibrate(duration: 500);
                                    Fluttertoast.showToast(
                                      msg: 'خلصت الحمد لله',
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.amber,
                                      textColor: Colors.white,
                                      fontSize: 20.0,


                                    );
                                  }
                                  else if (index1 == 99) {
                                    Vibration.vibrate(duration: 500);
                                    Fluttertoast.showToast(
                                      msg: 'خلصت الله أكبر',
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.amber,
                                      textColor: Colors.white,
                                      fontSize: 20.0,


                                    );
                                  }
                                  else if (index1 == 100) {
                                    Vibration.vibrate(duration: 500);
                                    Fluttertoast.showToast(
                                      msg: ' تمام المائة تقول  لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير',
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 20,
                                      backgroundColor: Colors.amber,
                                      textColor: Colors.white,
                                      fontSize: 20.0,



                                    );
                                  }
                                }
                              }
                              else if(cubit.changeMasbahaList==false)
                                {
                                if(1<=index2&&999>=index2) {
                                  index2++;
                                  cubit.AlmsbhaChangeText(index2);
                                if (index2 == 1000) {
                                  Fluttertoast.showToast(
                                    msg: ' خلصت أبدأ من الأول\nلا تنسونا من صالح دعائكم',
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 5,
                                    backgroundColor: Colors.amber,
                                    textColor: Colors.white,
                                    fontSize: 20.0,


                                  );
                                }
                                }
                                }
                            }
                          }
                          , icon:  Icon(Icons.add)),
                    ),


                  ],
                ),
              ),
            );
      },
    );
  }

}
