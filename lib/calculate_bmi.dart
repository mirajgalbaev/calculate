import 'dart:math';

class CalculateBmi {
  CalculateBmi({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi; // Değişkenin başlangıç değeri null olabilir

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    // ignore: avoid_print
    print(_bmi);
    return _bmi!.toStringAsFixed(1); // Non-null assertion kullanıldı
  }

  String getResult() {
    if (_bmi == null) {
      return 'Error: BMI not calculated';
    }

    if (_bmi! >= 25) {
      return 'kilolu';
    } else if (_bmi! >= 18.5) {
      return 'Normal';
    } else {
      return 'az kilolu';
    }
  }

  String getComment() {
    if (_bmi == null) {
      return 'Hata: BMI hesaplanmadı';
    }

    if (_bmi! >= 25) {
      return 'Normalin üzerinde kilonuz var\Lütfen daha sık egzersiz yapın.';
    } else if (_bmi! >= 18.5) {
      return 'Mükemmel! Sağlıklı bir vücudunuz var. Mutlu kal.';
    } else {
      return 'Kilonuz normalden düşük\Lütfen iyi yiyin.';
    }
  }
}
