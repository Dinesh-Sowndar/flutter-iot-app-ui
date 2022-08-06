import 'dart:math';

double degToRad(num deg) => deg * (pi / 180.0);

double normalize(value, min, max) => ((value - min) / (max - min));

double angleRange(value, min, max)=>(value * (max-min) +min);

const double kDiameter = 200;
const double kMinDegree = 16;
const double kMaxDegree = 30;
