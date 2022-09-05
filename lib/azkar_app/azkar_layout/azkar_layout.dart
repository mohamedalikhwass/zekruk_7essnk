import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibration/vibration.dart';

import '../../network/local/cache_helper.dart';
import '../../shaerd/components/components.dart';
import '../moduls/azkar_setting.dart';
import 'azkar_cubit/azkar_cubit.dart';
import 'azkar_cubit/azkar_states.dart';

class AzkarLayout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var cubit = AzkarCubit.get(context);
    return BlocConsumer<AzkarCubit,AzkarStates>(
      listener:(context, state) {

      },
      builder:(context, state) {
          return Scaffold(
            appBar: AppBar(
              title:  Text('${cubit.titleOfAzkar[cubit.currentIndex]}'),
              actions: [
                IconButton(
                  icon: Icon(Icons.settings),
                    onPressed:()
                    {
                      navigatorTo(context, AzkarSettingScreen());
                    }

                    ),
              ],
              //leading:Text('${cubit.titleOfAzkar[cubit.currentIndex]}'),
            ),
            bottomNavigationBar: BottomNavigationBar
              (
              currentIndex: cubit.currentIndex,
              onTap: (index)
              {
                cubit.changeBottomNAvBar(index);
              },
              elevation: 0,
             iconSize: 30,




              items:  [
                BottomNavigationBarItem(
                  icon: Icon(Icons.wb_sunny_rounded),
                  label: 'أذكار الصباح',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.nights_stay_sharp),
                  label: 'أذكار المساء',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  label: 'المسبحه',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.airline_seat_individual_suite_rounded),
                  label: 'أذكار النوم',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.accessibility),
                  label: 'أذكار الأستيقاظ',
                )


              ],
            ),
            body: cubit.screens[cubit.currentIndex],

          );
      },

    );
  }
}
