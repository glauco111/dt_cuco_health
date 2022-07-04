double factor  = 1.01;

extension ScreenFactor on double {
  double get scale => this*factor;
}

extension ScreenFactorInt on int {
  double get scale => this*factor;
}