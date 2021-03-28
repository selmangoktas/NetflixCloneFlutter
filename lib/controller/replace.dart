String httpsCevirme(String metin) {
  String sonuc;

  sonuc = metin.replaceAll('http://', 'https://');
  return sonuc;
}
