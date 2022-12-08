import 'dart:developer';

class PixelCalulator {
  double? width;
  double? height;
  PixelCalulator({
    this.height,
    this.width,
  });

  void sizeTotal() {
    return log('Full Width ${width?.toStringAsFixed(2)}x${height?.toStringAsFixed(2)} Full Height');
  }
}










