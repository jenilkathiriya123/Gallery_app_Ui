class Gallery {
  final String i1;
  final String i2;
  final String i3;
  final String i4;
  final String i5;
  final String i6;
  final String i7;
  final String i8;
  final String i9;
  final String i10;
  final String i11;
  final String i12;
  final String i13;
  final String i14;
  final String i15;

  Gallery({
    required this.i1,
    required this.i2,
    required this.i3,
    required this.i4,
    required this.i5,
    required this.i6,
    required this.i7,
    required this.i8,
    required this.i9,
    required this.i10,
    required this.i11,
    required this.i12,
    required this.i13,
    required this.i14,
    required this.i15,
  });

  factory Gallery.fromMap({required Map data}) {
    return Gallery(
      i1: data['hits'][0]['largeImageURL'],
      i2: data['hits'][1]['largeImageURL'],
      i3: data['hits'][2]['largeImageURL'],
      i4: data['hits'][3]['largeImageURL'],
      i5: data['hits'][4]['largeImageURL'],
      i6: data['hits'][5]['largeImageURL'],
      i7: data['hits'][6]['largeImageURL'],
      i8: data['hits'][7]['largeImageURL'],
      i9: data['hits'][8]['largeImageURL'],
      i10: data['hits'][9]['largeImageURL'],
      i11: data['hits'][10]['largeImageURL'],
      i12: data['hits'][11]['largeImageURL'],
      i13: data['hits'][12]['largeImageURL'],
      i14: data['hits'][13]['largeImageURL'],
      i15: data['hits'][14]['largeImageURL'],
    );
  }
}
