class DataModel {
  String imageUrls;
  String desc;
  String name;

  DataModel({required this.imageUrls, required this.desc, required this.name});
}

var dataModelList = [
  DataModel(
      name: 'Pulau Weh',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pulau-Weh.jpg',
      desc:
          'Terletak di pintu masuk Selat Malaka, Pulau Weh merupakan salah satu surga wisata di negeri ini yang sering terlupakan. Pulau kecil di ujung sumatera ini merupakan salah satu surga bagi para diver dan snorkeller. Di sini akan menemukan banyak biota laut yang mengagumkan, terutama pari manta, hiu paus, lumba-lumba dan penyu laut.\n\n'
          'Selain kegiatan diving dan snorkling, di sini Anda juga dapat menikmati aktifitas lainnya seperti menjelajahi pulau dengan sepeda motor (terdapat rental motor di sini) atau hanya bersantai di tempat tidur gantung di penginapan di tepi pantai.'),
  DataModel(
      name: 'Danau Toba',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Danau-Toba.jpg',
      desc:
          'Danau kawah besar ini memiliki pulau hampir seukuran Singapura di tengahnya. Dengan luas lebih dari 1.145 km², dan kedalaman 450 meter, Danau Toba sebenarnya lebih mirip lautan.\n\n'
          'Danau Toba terletak di ketinggian 900 meter dpl, sehingga udara di sini sangat sejuk, dan merupakan tempat yang tepat untuk bersantai sambil menikmati pemandangan yang indah.\n\n'
          'Jika Anda berada di Pulau Samosir, sempatkan diri Anda untuk menjelajahi pulau ini dengan berkendara di jalan yang mengelilingi tepi pulau. Meskipun tidak beraspal di beberapa tempat, jalan ini menawarkan pemandangan danau yang spektakuler dari titik tertinggi di pulau ini.'),
  DataModel(
      name: 'Ngarai Sianok',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Ngarai-Sianok-1.jpg',
      desc:
          'Di dataran tinggi Minangkabau, tepatnya di perbatasan Kota Bukittinggi dan Kab. Agam, Sumatera Barat, terdapat sebuah lembah yang diapit oleh tebing-tebing batu terjal. Kawasan yang dikenal luas oleh para wisatawan dengan nama Ngarai Sianok ini  memiliki pemandangan bak lukisan alam nan menakjubkan yang sangat menakjubkan.\n\n'
          'Ngarai Sianok memiliki dua dinding curam yang saling berhadapan dan hampir vertikal, serta di dasar lembahnya terdapat sungai berkelok-kelok di antara hijau nya sawah.'),
  DataModel(
      name: 'Pulau Belitung',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pulau-Belitung-3.jpg',
      desc:
          'Salah satu tempat wisata di Indonesia yang sangat menakjubkan, menawarkan berbagai pantai dengan pasir putih yang dikombinasikan dengan pohon kelapa, bebatuan granit nan eksotis, air laut sejernih kristal, dikelilingi oleh ratusan pulau-pulau kecil.\n\n'
          'Bagi Anda pecinta diving dan snorkling, banyak spot-spot menarik di pantai-pantainya. Bagi Anda penikmat suasana pantai, Anda dapat bersantai di pinggir pantai di bawah rindangnya pohon kelapa atau menikmati keindahan pantainya dari batu-batu granit yang terdapat di pinggir pantai.'),
  DataModel(
      name: 'Dataran Tinggi Dieng',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Dataran-Tinggi-Dieng.jpg',
      desc:
          'Dataran Tinggi Dieng merupakan kawasan kaldera yang dikelilingi oleh gunung-gunung, dengan aktifitas vulkanis di bawah datarannya yang masih aktif hingga saat ini.\n\n'
          'Berada di ketinggian 2.000 mdl, kawasan wisata ini mernawarkan udara yang dingin serta bebas dari polusi perkotaan, pemandangan alam yang menakjubkan dan keunikan budaya.\n\n'
          'Banyak hal menarik yang dapat dilihat dan dinikmati di kawasan ini, mulai dari telaga multi-warna, sumber air panas, kawah, dan kompleks candi Hindu kuno.'),
  DataModel(
      name: 'Kepulauan Karimunjawa',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Kepulauan-Karimunjawa.jpg',
      desc:
          'Karimunjawa merupakan kepulauan kecil yang membentuk kawasan konservasi laut di utara Jawa Tengah, dengan hutan mangrove yang lebat, pantai putih menawan, dan pesona bawah lautnya yang sungguh menawan.\n\n'
          'Banyak hal-hal menarik yang dapat Anda lakukan di sini, mulau dari menjelajahi pulau-pulau nya, menyelam, menikmati keindahan pantainya, berpetualang di hutan bakau, dll.\n\n'
          'Beberapa hewan langka juga dapat Anda temukan di sini, di antaranya elang laut dada putih, penyu hijau dan penyu sisik.'),
  DataModel(
      name: 'Teluk Hijau',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Teluk-Hijau.jpg',
      desc:
          'Teluk Hijau atau Green Bay merupakan salah satu pantai terindah di Banyuwangi, bahkan di Indonesia. Karena air laut nya yang cenderung lebih berwarna kehijauan, makanya kawasan wisata ini dinamakan Teluk Hijau.\n\n'
          'Kawasan wisata ini memiliki pemandangan yang sangat eksotis. Mata Anda akan dimanjakan dengan warna air laut di teluk ini yang berwarna kehijauan, bebatuan yang terhampar di pinggir pantai, dan bukit-bukit karang yang mengitari teluk ini.'),
  DataModel(
      name: 'Gunung Bromo',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Gunung-Bromo.jpg',
      desc:
          'Gunung Bromo merupakan gunung berapi yang masih aktif dan salah satu tempat wisata di Indonesia yang digemari wisatawan lokal maupun mancanegara. Hamparan padang pasir, padang rumput, serta pemandangan kawah nya menjadi daya tarik tersendiri bagi wisatawan untuk mengunjungi Gunung Bromo. Dan yang menjadi salah satu hal favorit yang dilakukan wisatawan ialah menyaksikan sunrise dari beberapa spot yang ada.\n\n'
          'Tidak jauh dari dari kawasan Gunung Bromo, terdapat sebuah taman bunga yang akan sangat susah untuk Anda temukan di tempat lainnya. Taman bunga ini bernama Taman Edelweiss Pananjakan. Di sini Anda dapat menemukan hamparan bunga edelweiss.\n\n'
          'Kawasan ini juga merupakan salah satu spot untuk menikmati matahari terbit di bromo. Mata Anda akan benar-benar dimanjakan dengan pesona sunrise di hamparan bunga edelweiss.'),
  DataModel(
      name: 'Pantai Dreamland',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pantai-Dreamland.jpg',
      desc:
          'Pantai Dreamland merupakan salah satu primadona wisata di Bali. Pantai yang menjadi salah satu magnet wisata di Bali ini terkenal karena panorama pantainya yang indah.\n\n'
          'Perpaduan antara pasir putih, batu serta tebing karang di pinggir pantai menjadi salah satu daya tarik tersendiri dari pantai ini, selain ditunjang fasilitas yang bisa dibilang sangat lengkap.'),
  DataModel(
      name: 'Pura Uluwatu',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pura-Uluwatu.jpg',
      desc:
          'Pura Uluwatu merupak salah satu dari enam pura utama yang diyakini sebagai pilar spiritual masyarakat Hindu Bali. Sebagai objek wisata, pura ini terkenal karena lokasinya yang berada di tepi laut di atas tebing curam setinggi 70 mdpl.\n\n'
          'Kawasan ini merupakan salah satu tempat terbaik untuk menikmati keindahan matahari terbenam di Bali. Di kawasan ini wisatawan juga dapat menikmati pertunjukan tari kecak yang diadakan setiap hari (dari senja hingga malam), sambil menikmati suasana sunset.'),
  DataModel(
      name: 'Kepulauan Gili',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Kepulauan-Gili.jpg',
      desc:
          'Terdiri dari 3 pulau kecil yang terdiri dari Gili Air, Gili Meno dan Gili Trawangan, Kepulauan Gili merupakan salah satu daya tarik utama wisata Lombok.\n'
          'Pulau-pulau nan eksotis ini memanjakan para wisatawan dengan keindahan pantai berpasir putih, birunya laut serta suasana yang menentramkan. Selain itu kawasan ini juga terkenal beberapa spot menyelam nya yang menawarkan panorama bawah laut yang indah.\n\n'
          'Saat malam hari, Anda dapat menikmati suasana yang menentramkan dengan pemandangan laut yang dihiasi oleh sinar bulan dan bintang-bintang ditemani suara deburan ombak pantai.'),
  DataModel(
      name: 'Taman Nasional Komodo',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Taman-Nasional-Komodo.jpg',
      desc:
          'Taman Nasional yang terletak di Nusa Tenggara Timur ini terkenal karena 2 hal, yaitu sebagai satu-satu nya tempat di dunia di mana Komodo hidup, dan pemandangan alamnya yang menawan. Terdapat 3 pulau utama (Pulau Komodo, Pulau Padar serta Pulau Rinca), serta pulau kecil lainnya yang masuk ke dalam kawasan Taman Nasional Komodo.\n\n'
          'Selain menyaksikan secara langsung Komodo, banyak hal-hal menarik lainnya yang dapat Anda lakukan. Mulai dari menikmati keindahan pantainya, mendaki, bermain kano, snorkeling, dll.'),
  DataModel(
      name: 'Kepulauan Derawan',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Kepulauan-Derawan.jpg',
      desc:
          'Kepulauan yang terdiri dari 4 pulau utama, yaitu  Pulau Derawan, Maratua, Kakaban, dan Sangalaki ini merupakan salah satu Situs Warisan Dunia UNESCO yang terdapat di Indonesia. Kepulauan yang secara administratif masuk ke dalam wilayah Kab. Berau, Kalimantan Timur ini merupakan salah satu tempat menyelam terbaik di kawasan Kalimantan.\n\n'
          'Selain menyelam, di sini Anda dapat menikmati keindahan pantainya serta berkunjung ke penangkaran penyu termasuk 2 penyu langka (penyu sisik dan penyu hijau), atau bersama ubur-ubur di Danau Kakaban di Pulau Kakaban.'),
  DataModel(
      name: 'Pulau Maratua',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pulau-Maratua.jpg',
      desc:
          'Pulau yang secara administratif masuk ke dalam wilayah Kab. Berau, Kalimantan Timur ini merupakan salah satu pulau terluar negara Indonesia yang berbatasan langsung dengan Malaysia. Salah satu daya tarik utama dari pulau ini adalah keindahan panorama bawah lautnya, terutama terumbu karangnya.\n\n'
          'Selain itu di Pulau ini juga terdapat 2 danau yang sangat indah, yaiut Danau Tanah Bamban dan Danau Haji Buang. Di pualu ini juga terdapat resor yang terletak di atas permukaan laut dangkal, sehingga Anda dapat melihat secara langsung ikan dan kura-kura berenang di bawah kamar Anda.'),
  DataModel(
      name: 'Taman Nasional Tanjung Puting',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Taman-Nasional-Tanjung-Puting.jpg',
      desc:
          'Taman Nasional Tanjung Puting adalah salah satu dari sedikit kawasan di Indonesia di mana Anda dapat melihat orangutan hidup di habitat alaminya. serta beberapa hewan lainnya seperti macan tutul, kancil, beruang madu dan monyet merah.\n\n'
          'Ada beberapa hal-hal menarik yang dapat Anda lakukan di sini, salah satunya berlayar menggunakan perahu di sepanjang Singai Sekonyer. Sambil menikmati pelayaran santai Anda dapat perahu di mana Anda dapat menikmati pemandangan pepohonan Nypa di sepanjang kedua sisi sungai, dan jika Anda beruntung, Anda akan melihat buaya berjemur di tepi sungai. Atau Anda juga dapat berkunjung ke Camp Leakey untuk menyaksikan para petugas memberi makan Orang Utan.'),
  DataModel(
      name: 'Malino',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Malino.jpg',
      desc:
          'Sebuah desa kecil yang dikelilingi oleh perkebunan teh, Malino tempat adalah liburan yang ideal untuk menenangkan diri. Malino adalah desa indah yang terletak “di atas awan” sekitar 90 kilometer dari Makassar, di dataran tinggi, di Gunung Malino.\n\n'
          'Malino adalah salah satu permata tersembunyi dari Makassar. Perjalan menuju ke Malino memang panjang dan berliku, tetapi benar-benar sepadan dengan pemandangan yang menakjubkan. Dikelilingi oleh perkebunan teh dataran tinggi, pemandangan kebun teh, awan yang menyelubungi beberapa tempat dan sejuknya angin gunung akan menanti Anda di sini.'),
  DataModel(
      name: 'Tana Toraja',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Tana-Toraja.jpg',
      desc:
          'Tana Toraja merupakan sebuah kabupaten yang terletak di dataran tinggi Sulawesi Selatan. Sebuah tempat yang terkenal dengan ritual dan upacara adat kematian hingga penghormatan terhadap nenek moyang.\n\n'
          'Orang-orang di Toraja masih mempraktekkan banyak ritual kuno, meskipun banyak masyarakatnya yang beragama Kristen setelah masuknya Belanda.\n\n'
          'Selain upacara dan ritual adat nan unik, di sini Anda juga dapat menemukan bukit-bukit batu terjal yang di dinding nya terdapat goa sebagai kuburan, kuburan gantung, hamparan sawah hijau, rumah-rumah adat dengan ukiran yang menawan, tau tau (patung kayu seukuran tubuh manusia), pohon makam bayi, dan banyak hal yang menurut Anda aneh, namun hanya bisa dijumpai di sini.'),
  DataModel(
      name: 'Taman Laut Bunaken',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Taman-Laut-Bunaken-1.jpg',
      desc:
          'Diresmikan pada tahun 1991, Taman Laut Bunaken merupakan taman laut pertama yang ada di Indonesia. Taman Laut seluas 80.000 ha ini (3% daratan dan 97% lautan), berlokasi di Manado, Sulawesi Utara, serta terdiri dari 5 pulau, yakninya Puau Bunaken, Manado Tua, Siladen, Montehage dan Naen.\n\n'
          'Taman Laut Bunaken terkenal dengan panorama bawah lautnya yang mempesona, serta pulau-pulau nya yang eksotis. Di taman kawasan ini terdapat berbagai spesies terumbu karang. alga, rumput laut, ikan, mamalia laut, burung dan reptil.'),
  DataModel(
      name: 'Taman Nasional Wakatobi',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Waktobi.jpg',
      desc:
          'Kawasan trumbu karang terluas kedua di Dunia setelah Great Barrier Reef (Australia), Taman nasional laut yang terletak di Sulawesi Tenggara juga merupakan salah satu kawasan menyelam terbaik yang ada di Dunia.\n\n'
          'Nama Wakatobi sendiri berupakan gabungan dari 4 pulau utama yang mengitarinya, Wangi-wangi, Kaledupa, Tomia, dan Binongko. Semenjak 2005 lalu, kawasan ini masuk ke dalam daftar Situs Warisan Dunia oleh UNESCO.\n\n'
          'Wakatobi dikenal luas bahkan hingga ke mancanegara karena keanekaragaman terumbu karang dan biota laut lainnya. Mencakup area seluas 1,4 juta hektar, di kawasan ini tumbuh dan hidup 750 spesies karang (dari 850 spesies) dan 942 spesies ikan, serta beberapa jebis penyu, paus dan lumba-lumba.'),
  DataModel(
      name: 'Pulau Morotai',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pulau-Morotai.jpg',
      desc:
          'Terletak di Maluku Utara, Pulau ini dulunya merupakan salah satu benteng pertahanan Jepang di kawasan Pasifik selama PD II, sehingga banyak ditemukan bangkai-bangkai pesawat dan kapal yang tenggelam di perairannya. Pulau ini selain menyuguhkan sajian wisata sejarah, juga menyajikan pemandangan kawasan pantai dan kehidupan bawah laut yang menawan.\n\n'
          'Banyak hal yang dapat Anda lakukan di sini, mulai dari menelusuri jejak PD II baik di daratan maupun lautan, menikmati keidahan pantai-pantai berpasir putih serta beberapa pulau-pulau kecil lain di sekitarnya, snorkling, dan diving.'),
  DataModel(
      name: 'Kepulauan Kei',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Kepulauan-Kei.jpg',
      desc:
          'Secara administratif masuk ke dalam Provinsi Maluku, Kepulauan Kei terdiri dari 2 pulau utama, yaitu Pulai Kei Besar dan Pulau Kei kecil serta beberapa pulau kecil nan eksotis lainnya.\n\n'
          'Kepulauan Kei terkenal dengan pantai-pantai nya yang berpasir putih halus, goa dengan pemandangan yang eksotis, bukit-bukit yang menyajikan pemandangan yang sangat indah, panorama bawah lautnya yang menawan, ke eksotisan pulau-pulau yang terdapat di kawasan Kepulauan Kei ini.'),
  DataModel(
      name: 'Kepulauan Banda',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Kepulauan-Banda.jpg',
      desc:
          'Kumpulan dari pulau-pulau vulkanis yang berada di Laut Banda, Provinsi Maluku ini wajib Anda masukkan ke dalam list tempat wisata di Indonesia yang wajib untuk Anda kunjungi. Gunung berapi, keindahan pantai dan panorama bawah laut nya.\n\n'
          'Selain kendahan alamnya yang mempesona, di Pulau Bandaneira (pulau utama di Kepulauan Banda), Anda dapat menemukan peninggalan sejarah masa lampau, seperti bangunan-bangunan dengan gaya aesitektur eropa abad ke-18, Benteng Belgica – dimana Anda dapat menikmati pemandangan gunung berapi, laut, hutan dan pulau-pulau di sekitarnya, dll.'),
  DataModel(
      name: 'Pulau Seram',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pulau-Seram.jpg',
      desc:
          'Namanya Pulau Seram, tapi kenyataannya, salah satu pulau di Provinsi Maluku ini bukanlah tempat yang seram tapi sebaliknya merupakan sebuah pulau dengan keindahan yang sangat menawan.\n\n'
          'Banyak tempat-tempat menarik yang dapat Anda kunjungi di Pulau Seram, seperti Taman Nasional Manusel (yang menyajikan keindahan hutan tropis, flora dan fauna asli Maluku, serta keindahan panorama bawah lautya), Air Terjun Lumoli -(yang memiliki 3 tingkatan ),  Pantai Liang, Pantai Ora, serta Danau Tebing Makariki.'),
  DataModel(
      name: 'Kepulauan Raja Ampat',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2015/12/Tempat-Wisata-di-Indonesia-Kepulauan-Raja-Ampat.jpg',
      desc:
          'Apakah ada tempat wisata di Indonesia lainnya atau bahkan di dunia yang lebih indah dari Raja Ampat? Anda mungkin akan kesulitan untuk menemukannya. Kepulauan yang juga masuk ke dalam wilayah administratif Kab. Raja Ampat, Papua Barat ini merupakan salah satu dari 10 tempat menyelam dan snorkling terbaik di dunia.\n\n'
          'Di bawah permukaan air, Anda akan menemukan pelangi berwarna dari 530 spesies karang (75% dari total jenis karang yang ada di dunia) dan keanekaragaman kehidupan laut tertinggi (yang tercatat) di muka Bumi.\n\n'
          'Selain menyelam dan snorkling, di kepulauan yang terdiri dari 4 gugsan pulau (Pulau Batanta, Pulau Misool, Pulau Waigeo, dan Pulau Salawati) ini Anda juga dapat menikmati pemandangan alamnya yang indah. Baik itu pantai-pantainya, laguna serta teluk-teluk yang tidak akan pernah bosan membuat Anda untuk menikmati keindahannya.'),
  DataModel(
      name: 'Pantai Base G',
      imageUrls:
          'https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pantai-Base-G.jpg',
      desc:
          'Pantai Base G di Jayapura, Papua ini memiliki panjang hampir 3 kilometer yang dihiasi oleh pasir keemasan yang indah, serta diapit oleh tebing bebatuan nan eksotis.\n\n'
          'Salah satu hal terbaik dari pantai ini adalah pondok-pondok piknik kayu yang terdapat di tepi pantai, menjadikannya tempat yang tepat jika Anda ingin membawa makanan dan menghabiskan hari sambil bersantai menikmati pemandangan pantai yang indah.'),
  DataModel(
      name: 'Pantai Kuta',
      imageUrls:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/bf/f0/1e/magia-a-bali-isolamagica.jpg?w=700&h=500&s=1',
      desc:
          'Pantai Kuta adalah sebuah tempat pariwisata yang terletak di kecamatan Kuta sebelah selatan Kota Denpasar, Bali, Indonesia. Daerah ini merupakan sebuah tujuan wisata turis mancanegara dan telah menjadi objek wisata andalan Pulau Bali sejak awal tahun 1970-an. Pantai Kuta sering pula disebut sebagai pantai matahari terbenam sebagai lawan dari pantai Sanur. Selain itu, Lapangan Udara I Gusti Ngurah Rai terletak tidak jauh dari Kuta.\n\n'
          'Sebelum menjadi objek wisata, Kuta merupakan sebuah pelabuhan dagang tempat produk lokal diperdagangkan kepada pembeli dari luar Bali. Pada abad ke-19, Mads Lange, seorang pedagang Denmark, datang ke Bali dan mendirikan basis perdagangan di Kuta. Ia ahli bernegosiasi sehingga dirinya terkenal di antara raja-raja Bali dan Belanda.\n\n'
          'Selanjutnya, Hugh Mahbett menerbitkan sebuah buku berjudul “Praise to Kuta” yang berisi ajakan kepada masyarakat setempat untuk menyiapkan fasilitas akomodasi wisata. Tujuannya untuk mengantisipasi ledakan wisatawan yang berkunjung ke Bali. Buku itu kemudian menginspirasi banyak orang untuk membangun fasilitas wisata seperti penginapan, restoran dan tempat hiburan.'),
];
