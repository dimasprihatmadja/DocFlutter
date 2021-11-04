import 'dart:convert';

class Data {
  final isi = [
    {
      'name': 'Ner Muaike Bisim Neroo',
      'id': '1',
      'kategori': 'Keluarga',
      'arti': 'Kita punya anak panah harus jaga baik-baik',
      'isi':
          'Menjaga keutuhan keluarga Keluarga atau sanak-saudara adalah aset yang sangat berharga dalam hidup kita. Oleh karena itu jagalah baik-baik, jauhi perilaku yang dapat memecah belah persatuan dan kesatuan keluarga. Ajarilah nilai-nilai keselamatan dan dampingilah mereka supaya tidak terjerumus ke hal-hal yang membuat hidupnya tersesat dan mengalami korban jiwa'
    },
    {
      'name': 'Kumra Opseriyana Posemena Dau Sutir See?',
      'id': '2',
      'kategori': 'Moral',
      'arti': 'Anda merobohkan pohon yang orang lain  tebang',
      'isi':
          'Janganlah melakukan hubungan badan dengan gadis yang sering gonta-ganti laki-laki karena setelah hamil engkau orang terakhir yang menanggung beban. '
    },
    {
      'name': 'Sora Sumoo Brutause?',
      'id': '3',
      'kategori': 'Jati diri',
      'arti': 'Kamu akan menghilang di perantauan',
      'isi':
          'Mengandung tiga arti, pertama berpesan kepada kaum muda Suku Lepki agar tidak berbuat masalah di tempat perantauan, namun sebaliknya menyesuaikan diri dengan lingkungan sekitar dan hidup baik dengan sesama yang lain.  Arti kedua adalah apabila ke tempat rantau janganlah lupa kampung halaman atau dusunnya.  Arti ketiga adalah  generasi muda harus memiliki kesadaran akan cinta tanah air dan tidak mudah meninggalkan tempat asalnya'
    },
    {
      'name': 'Naunyibi',
      'id': '4',
      'kategori': 'Mandiri',
      'arti': 'Janganlah makan sambil menangis',
      'isi':
          'Janganlah menjadi manusia pengemis, peminta-peminta atau rakus. Namun sebaliknya generasi muda suku Lepki harus menjadi manusia yang rajin bekerja keras (mandiri) supaya tidak menggantungkan hidupnya di orang lain. Orang tua selalu melarang generasi muda agar tidak cari-cari makan dari rumah ke rumah orang lain. Karena perilaku tersebut merendahkan harkat dan martabatnya. Generasi muda Lepki diharapkan harus kerja rajin dan hidup dari hasil keringatnya sendiri. '
    },
    {
      'name': 'Kesyabip Tiprum',
      'id': '5',
      'kategori': 'Kebajikan',
      'arti': 'Janganlah membalik tempat tidur',
      'isi':
          'Janganlah mengkhianati sesamamu atau  membalas kebaikan dengan kejahatan. Orang yang sudah berbaik hati dengan kita janganlah menyusahkan mereka, tetapi sebaliknya harus membangun persaudaraan sejati. '
    },
    {
      'name': 'Kaurkerna Domdobe',
      'id': '6',
      'kategori': 'Kebajikan',
      'arti': 'Kamu menyelam di air yang kabur',
      'isi':
          'Kata kiasan ini mengandung dua arti yaitu, pertama; Sering kali kita menyampaikan  harapan-harapan kepada pihak tertentu tetapi tidak ditanggapi serius atau tidak ditindaklanjuti.  Seluruh harapan hidupnya sia-sia tanpa membuahkan hasil.  Tentang hal ini tetua adat Lepki berpesan kepada generasi mudanya agar tidak berperilaku seperti yang diutarakan diatas, namun sebaliknya harus menjadi orang yang bijaksana dan peduli terhadap sesama. Harus menerima apapun kritik, saran dan harapan dan memberi jawaban yang pasti. Arti Kedua;  Pergaulan bebas dengan anak-anak nakal diibaratkan  menyelam di air kabur. Orang tua selalu mengingatkan dan mengarahkan anak-anaknya untuk bergaul dengan orang baik dan melakukan sesuatu baik untuk masa depannya.   '
    },
    {
      'name': 'Metais Bi',
      'id': '7',
      'kategori': 'Kejujuran',
      'arti': 'Bicara tidak betul',
      'isi':
          'Orang yang pandai berbohong Tipe orang tersebut biasanya banyak bicara tetapi dia tidak memiliki kelebihan apapun hanya mengandalkan kepintaran bicaranya membuat orang lain terkagum-kagum padanya Pesan kepada generasi muda untuk tidak menjadi orang yang suka membohong karena akan menimbulkan masalah dalam  hidupnya'
    },
    {
      'name': 'Buasdorum',
      'id': '8',
      'kategori': 'Kejujuran',
      'arti': 'Orang sombong',
      'isi':
          'Tipe orang yang selalu mengandalkan kebolehan penampilan padahal tidak memiliki kelebihan tertentu. Tipe orang ini kadang membuat perempuan jatuh hati.  Tetua adat suku Lepki melarang berperilaku seperti Buasdorum tetapi sebaliknya harus hidup jujur, rendah hati,  dan berperilaku apa adanya sesuai dengan kemampuan yang dimiliki.'
    },
    {
      'name': 'Koltaurnisda',
      'id': '9',
      'kategori': 'Disiplin',
      'arti': 'Kalau jalan janganlah susun kaki',
      'isi':
          'Pesan ini menegaskan kepada generasi muda supaya  melakukan pekerjaan dengan disiplin, cepat dan tepat. Segala sesuatu ada konsekuensinya oleh itu janganlah bekerja lamban, tetapi lakukan dengan target waktu dan tujuan yang jelas.  '
    },
    {
      'name': 'Braup Bukawenda',
      'id': '10',
      'kategori': 'Kebajikan',
      'arti': 'Janganlah seperti leher kasuari',
      'isi':
          'Arti luas adalah janganlah rakus atau  mementingkan diri sendiri tetapi  berbagilah dengan orang lain. Arti sempit adalah  pada waktu makan duduklah dengan sopan dan janganlah makan cepat-cepat. '
    },
    {
      'name': 'Apaito Yemolwen',
      'id': '11',
      'kategori': 'Tata Krama',
      'arti': 'Jangan seperti mata burung hantu',
      'isi':
          'Janganlah berlama-lama menatap wajah  orang. Menurut adat suku Lepki perilaku tersebut tidak sopan. Pengertian lain adalah pesan kepada generasi muda supaya  udik berlebihan terhadap orang/barang baru. '
    },
    {
      'name': 'Kenmut Dop Maprut Wensi',
      'id': '12',
      'kategori': 'Jodoh',
      'arti': 'Bagai mulut ikan leleh alam',
      'isi':
          'Kata kiasan yang menggambarkan kekaguman atau ketertarikan seorang lelaki terhadap seorang perempuan. Perempuan diibaratkan seperti ikan lele alam yang memiliki hidung, mata dan mulut bersih dan licin. Kata kiasan ini mengandung harapan supaya orang dekatnya perempuan dapat melanjutkan pesan kepada orang tuanya atau ke perempuan sendiri supaya berjodoh dengannya.'
    },
  ];
  getData() {
    return isi;
  }
}
