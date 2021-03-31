String httpsCevirme(String metin) {
  String sonuc;

  sonuc = metin.replaceAll('http://', 'https://');
  return sonuc;
}




String urlEkle(String metin) {
  String sonuc;

  sonuc = 'https://image.tmdb.org/t/p/original/'+metin;
  return sonuc;
}