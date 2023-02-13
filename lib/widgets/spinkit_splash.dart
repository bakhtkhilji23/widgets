import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:widgets/utils/colors.dart';

class SpinkitSplashWidget extends StatelessWidget {
  const SpinkitSplashWidget({super.key});

  static const kits = <Widget>[
    SpinKitRotatingCircle(color: blackColor),
    SpinKitRotatingPlain(color: blackColor),
    SpinKitChasingDots(color: blackColor),
    SpinKitPumpingHeart(color: blackColor),
    SpinKitPulse(color: blackColor),
    SpinKitDoubleBounce(color: blackColor),
    SpinKitWave(color: blackColor, type: SpinKitWaveType.start),
    SpinKitWave(color: blackColor, type: SpinKitWaveType.center),
    SpinKitWave(color: blackColor, type: SpinKitWaveType.end),
    SpinKitPianoWave(color: blackColor, type: SpinKitPianoWaveType.start),
    SpinKitPianoWave(color: blackColor, type: SpinKitPianoWaveType.center),
    SpinKitPianoWave(color: blackColor, type: SpinKitPianoWaveType.end),
    SpinKitThreeBounce(color: blackColor),
    SpinKitThreeInOut(color: blackColor),
    SpinKitWanderingCubes(color: blackColor),
    SpinKitWanderingCubes(color: blackColor, shape: BoxShape.circle),
    SpinKitCircle(color: blackColor),
    SpinKitFadingFour(color: blackColor),
    SpinKitFadingFour(color: blackColor, shape: BoxShape.rectangle),
    SpinKitFadingCube(color: blackColor),
    SpinKitCubeGrid(size: 51.0, color: blackColor),
    SpinKitFoldingCube(color: blackColor),
    SpinKitRing(color: blackColor),
    SpinKitDualRing(color: blackColor),
    SpinKitSpinningLines(color: blackColor),
    SpinKitFadingGrid(color: blackColor),
    SpinKitFadingGrid(color: blackColor, shape: BoxShape.rectangle),
    SpinKitSquareCircle(color: blackColor),
    SpinKitSpinningCircle(color: blackColor),
    SpinKitSpinningCircle(color: blackColor, shape: BoxShape.rectangle),
    SpinKitFadingCircle(color: blackColor),
    SpinKitHourGlass(color: blackColor),
    SpinKitPouringHourGlass(color: blackColor),
    SpinKitPouringHourGlassRefined(color: blackColor),
    SpinKitRipple(color: blackColor),
    SpinKitDancingSquare(color: blackColor),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemCount: kits.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
      itemBuilder: (BuildContext context, int index) {
        return kits[index];
      },
    ));
  }
}
