CREATE EXTENSION IF NOT EXISTS POSTGIS;

DROP TABLE IF EXISTS heritage_sites;

CREATE TABLE
  heritage_sites (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    geo GEOMETRY,
    ticket_price VARCHAR(255),
    year INT,
    details_url TEXT,
    description TEXT
  );

INSERT INTO
  heritage_sites (
    id,
    name,
    geo,
    ticket_price,
    year,
    details_url,
    description
  )
VALUES
  (
    1,
    'lăng chủ tịch Hồ Chí Minh',
    'POINT(105.8351616 21.0370932)'::GEOMETRY,
    'Miễn phí',
    1973,
    'https://vi.wikipedia.org/wiki/L%C4%83ng_Ch%E1%BB%A7_t%E1%BB%8Bch_H%E1%BB%93_Ch%C3%AD_Minh',
    'Lăng Chủ tịch Hồ Chí Minh, còn gọi là Lăng Hồ Chủ tịch, Lăng Bác, là nơi gìn giữ thi hài Chủ tịch Hồ Chí Minh. Lăng được chính thức khởi công ngày 2 tháng 9 năm 1973, tại vị trí lễ đài cũ giữa Quảng trường Ba Đình, nơi Chủ tịch Hồ Chí Minh từng chủ trì các cuộc gặp mặt quan trọng. Trong di chúc, Chủ tịch Hồ Chí Minh muốn được hỏa táng và đặt tro tại 3 miền đất nước.Tuy nhiên với lý do tuân theo nguyện vọng và tình cảm của người dân, Bộ Chính trị Ban Chấp hành Trung ương Đảng khóa III quyết định giữ gìn lâu dài thi hài chủ tịch Hồ Chí Minh để sau này người dân cả nước, nhất là người dân miền Nam, du khách quốc tế có thể tới viếng.'
  ),
  (
    2,
    'Đền Sóc',
    'POINT(105.8329653 21.29123874)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_S%C3%B3c',
    'Tương truyền, đền Sóc bắt nguồn từ ngôi miếu thờ nhỏ mang tên Đổng Vương có từ xa xưa, một lần Lê Hoàn (Lê Đại Hành) cùng các tướng sĩ trên đường hành quân chống giặc Tống xâm lược, vua tôi nhà Tiền Lê vào làm lễ cầu thánh Gióng phù hộ. Trong trận chiến, quân Tống thua to, khi quay về vua Lê Đại Hành vào lễ tạ rồi sai người tìm gốc trầm hương làm tượng thần và xây dựng thành khu đền uy nghi. Đồng thời phong thêm hai chữ "Phù" và "Thiên", tên của ngài được thờ tại đền Sóc là "Phù Đổng Thiên Vương.'
  ),

  (
    3,
    'Chùa Tây Phương',
    'POINT(105.5859977 21.02582658)'::GEOMETRY,
    'Miễn phí',
    2008,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_T%C3%A2y_Ph%C6%B0%C6%A1ng',
    'Chùa Tây Phương (tên chữ là Sùng Phúc tự 崇福寺) là một ngôi chùa được xây trên đỉnh đồi Câu Lâu , xã Thạch Xá, huyện Thạch Thất, thành phố Hà Nội. Một số sách báo viết về chùa Tây Phương cho rằng được xây dựng vào thời nhà Mạc, nhưng không chứng minh. Niên đại này có thể tin được, vì đầu thế kỷ 17 vào những năm 30 chùa đã phải sửa chữa lớn, hơn nữa trong chùa còn hai tấm bia đều bị mờ hết chữ nhưng còn đọc được rõ tên bia ở mặt ngoài là Tín thí và Tây Phương sơn Sùng Phúc tự thạch bi (mặt bia kia áp vào tường hồi toà chùa giữa nên không đọc được), các hoa văn trang trí thuộc phong cách nghệ thuật cuối thế kỷ 16 sang đầu thế kỷ 17.'
  ),

  (
    4,
    'Chùa Thầy',
    'POINT(105.6467113 21.02310297)'::GEOMETRY,
    'Miễn phí',
    2014,
    'https://www.vietnamtourism.com/index.php/tourism/items/1469',
    'Chùa Thầy (chữ nôm:㕑偨) là một nhóm những ngôi chùa ở chân núi Sài Sơn, huyện Quốc Oai, tỉnh Hà Tây cũ, nay là xã Sài Sơn, huyện Quốc Oai, Hà Nội, cách trung tâm Hà Nội khoảng 20 km về phía Tây nam, đi theo đường cao tốc Láng - Hòa Lạc. Sài Sơn có tên Nôm là núi Thầy, nên chùa được gọi là chùa Thầy. Chùa được xây dựng từ thời nhà Lý. Đây từng là nơi tu hành của Thiền sư Từ Đạo Hạnh, lúc này núi Thầy còn gọi là núi Phật Tích.'
  ),

  (
    5,
    'Gò Đống Đa',
    'POINT(105.8035225 20.99396897)'::GEOMETRY,
    'Miễn phí',
    1989,
    'https://vi.wikipedia.org/wiki/G%C3%B2_%C4%90%E1%BB%',
    'Gò Đống Đa là một gò đất và là một di tích nằm bên phố Tây Sơn, phường Quang Trung, quận Đống Đa, thành phố Hà Nội. Tại đây vào năm 1789, quân Tây Sơn đã đại phá và đánh thắng quân Thanh trong Trận Ngọc Hồi - Đống Đa.'
  ),

  (
    6,
    'Hoàng thành Thăng Long',
    'POINT(105.8402647 21.03515505)'::GEOMETRY,
    '30,000đ',
    2010,
    'https://vi.wikipedia.org/wiki/Ho%C3%A0ng_th%C3%A0nh_Th%C4%83ng_Long',
    'Hoàng thành Thăng Long (chữ Hán: 昇龍皇城; Hán-Việt: Thăng Long Hoàng thành) là quần thể di tích gắn với lịch sử kinh thành Thăng Long - Đông Kinh và tỉnh thành Hà Nội bắt đầu từ thời kì tiền Thăng Long (An Nam đô hộ phủ thế kỷ VII) qua thời Đinh - Tiền Lê, phát triển mạnh dưới thời Lý, Trần, Lê và thành Hà Nội dưới triều Nguyễn. Đây là công trình kiến trúc các triều vua xây dựng trong nhiều giai đoạn lịch sử và trở thành một trong những di tích quan trọng bậc nhất trong hệ thống các di tích Việt Nam.'
  ),

  (
    7,
    'Nhà tù Hỏa Lò',
    'POINT(105.8475885 21.02545488)'::GEOMETRY,
    'Miễn phí',
    2008,
    'https://vi.wikipedia.org/wiki/Nh%C3%A0_t%C3%B9_H%E1%BB%8Fa_L%C3%B2',
    'Nhà tù Hỏa Lò hay nhà pha Hỏa Lò là một nhà tù do thực dân Pháp xây dựng trên khu đất xưa thuộc làng Hỏa Lò,[1] nay có địa chỉ: số 1 phố Hỏa Lò, phường Trần Hưng Đạo, quận Hoàn Kiếm, Hà Nội, Việt Nam.Nhà tù Hỏa Lò là một địa danh nổi tiếng bởi từng là nơi giam giữ rất nhiều nhà cách mạng lớn của Việt Nam trong Chiến tranh Đông Dương và phi công Mỹ trong Chiến tranh Việt Nam.'
  ),

  (
    8,
    'Di tích Thành Cổ Loa',
    'POINT(105.8724043 21.11233304)'::GEOMETRY,
    'Miễn phí',
    2012,
    'https://vi.wikipedia.org/wiki/Th%C3%A0nh_C%E1%BB%95_Loa',
    'TThành Cổ Loa là kinh đô của nhà nước Âu Lạc dưới thời An Dương Vương vào khoảng thế kỷ thứ 3 trước Công nguyên và của nhà nước phong kiến dưới thời Ngô Quyền thế kỷ 10 tại vùng đất xã Cổ Loa, huyện Đông Anh, Hà Nội.'
  ),

  (
    9,
    'Chùa Trấn Quốc',
    'POINT(105.8382396 21.04805501)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Tr%E1%BA%A5n_Qu%E1%BB%91c',
    'Chùa Trấn Quốc nằm trên một hòn đảo phía Đông Hồ Tây (quận Tây Hồ). Chùa có lịch sử gần 1500 năm và được coi là lâu đời nhất ở Thăng Long - Hà Nội. Dưới thời nhà Lý và nhà Trần, chùa Trấn Quốc là trung tâm Phật giáo của kinh thành Thăng Long. Kiến trúc chùa có sự kết hợp hài hoà giữa tính uy nghiêm, cổ kính với cảnh quan thanh nhã giữa nền tĩnh lặng của một hồ nước mênh mang. Với những giá trị về lịch sử và kiến trúc, chùa Trấn Quốc nổi tiếng là chốn cửa Phật linh thiêng, là điểm thu hút rất nhiều tín đồ Phật tử và khách tham quan, du lịch trong ngoài Việt Nam..'
  ),

  (
    10,
    'Văn Miếu Quốc Tửu Giám',
    'POINT(105.8361788 21.02836285)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/V%C4%83n_Mi%E1%BA%BFu_%E2%80%93_Qu%E1%BB%91c_T%E1%BB%AD_Gi%C3%A1m',
    'Văn Miếu – Quốc Tử Giám là quần thể di tích đa dạng, phong phú hàng đầu của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Quần thể kiến trúc Văn Miếu – Quốc Tử Giám bao gồm: hồ Văn, khu Văn Miếu – Quốc Tử Giám và vườn Giám, mà kiến trúc chủ thể là Văn miếu (chữ Hán: 文廟) - nơi thờ Khổng Tử, và Quốc tử giám (chữ Hán: 國子監) - trường đại học đầu tiên của Việt Nam. Khu Văn Miếu – Quốc Tử Giám có tường gạch vồ bao quanh, phía trong chia thành 5 lớp không gian với các kiến trúc khác nhau. Mỗi lớp không gian đó được giới hạn bởi các tường gạch có 3 cửa để thông với nhau (gồm cửa chính giữa và hai cửa phụ hai bên). Từ ngoài vào trong có các cổng lần lượt là: cổng Văn Miếu, Đại Trung, Khuê Văn các, Đại Thành và cổng Thái Học. Với hơn 700 năm hoạt động đã đào tạo hàng nghìn nhân tài cho đất nước. Ngày nay, Văn Miếu – Quốc Tử Giám là nơi tham quan của du khách trong và ngoài nước đồng thời cũng là nơi khen tặng cho học sinh xuất sắc và còn là nơi tổ chức hội thơ hàng năm vào ngày rằm tháng giêng. Đặc biệt, đây còn là nơi các sĩ tử ngày nay đến "cầu may" trước mỗi kỳ thi quan trọng.'
  ),

  (
    11,
    'Chùa Một Cột',
    'POINT(105.8339911 21.03598081)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_M%E1%BB%99t_C%E1%BB%99t',
    'Chùa Một Cột có tên ban đầu là Liên Hoa Đài (蓮花臺) tức là Đài Hoa Sen với lối kiến trúc độc đáo: một điện thờ đặt trên một cột trụ duy nhất. Liên Hoa Đài là công trình nổi tiếng nhất nằm trong quần thể kiến trúc Chùa Diên Hựu (延祐寺), có nghĩa là ngôi chùa "Phúc lành dài lâu". Công trình Chùa Diên Hựu nguyên bản được xây vào thời vua Lý Thái Tông mùa đông năm 1049 và hoàn thiện vào năm 1105 thời vua Lý Nhân Tông nay đã không còn. Công trình Liên Hoa Đài hiện tại nằm ở Hà Nội là một phiên bản được chỉnh sửa nhiều lần qua các thời kỳ, bị Pháp phá huỷ khi rút khỏi Hà Nội ngày 11/9/1954 và được dựng lại năm 1955 bởi kiến trúc sư Nguyễn Bá Lăng theo kiến trúc để lại từ thời Nguyễn. Đây là ngôi chùa có kiến trúc độc đáo ở Việt Nam.'
  ),

  (
    12,
    'Đền Phù Đổng',
    'POINT(105.8179575 21.17833707)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Ph%C3%B9_%C4%90%E1%BB%95ng',
    'Đền Phù Đổng hay còn gọi là đền Gióng thờ Thánh Gióng - Phù Đổng Thiên Vương, nằm ở xã Phù Đổng, Gia Lâm, ngoại thành Hà Nội. Đền Phù Đổng còn được gọi là đền Thượng, tương truyền được dựng trên nền nhà cũ của Thánh Gióng, bên trong đê sông Đuống, còn đền Hạ (đền mẫu) thờ mẹ của Thánh Gióng nằm ngoài đê, gần nơi được cho là có dấu chân khổng lồ mà bà đã ướm thử rồi sinh ra Thánh Gióng. Năm 1010 khi dời đô về Thăng Long, Lý Thái Tổ đã cho dựng đền, đến nay đã được trùng tu nhiều lần.'
  ),

  (
    13,
    'Đền Ngọc Sơn',
    'POINT(105.8531425 21.03089359)'::GEOMETRY,
    '10,000đ',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Ng%E1%BB%8Dc_S%C6%A1n',
    'Đền Ngọc Sơn là một biểu tượng văn hóa nổi tiếng của Hà Nội, nằm trên đảo Ngọc giữa Hồ Hoàn Kiếm. Ngôi đền cổ kính này là nơi thờ các vị thần linh và anh hùng dân tộc, trong đó có Trần Hưng Đạo - vị tướng tài ba đã đánh bại quân Nguyên Mông. Với kiến trúc độc đáo, cầu Thê Húc đỏ rực và không gian yên tĩnh, Đền Ngọc Sơn không chỉ là địa điểm tâm linh mà còn là điểm đến hấp dẫn du khách, nơi bạn có thể chiêm ngưỡng vẻ đẹp cổ kính và tìm hiểu về lịch sử hào hùng của dân tộc.'
  ),

  (
    14,
    'Nhà hát lớn Hà Nội',
    'POINT(105.8587144 21.02436898)'::GEOMETRY,
    'Miễn phí',
    1997,
    'https://vi.wikipedia.org/wiki/Nh%C3%A0_h%C3%A1t_L%E1%BB%9Bn_H%C3%A0_N%E1%BB%99i',
    'Nhà hát Lớn Hà Nội là một công trình kiến trúc tại thành phố Hà Nội, Việt Nam, phục vụ biểu diễn nghệ thuật. Nhà hát tọa lạc trên quảng trường Cách mạng tháng Tám, vị trí ở số 1A phố Tràng Tiền, phường Tràng Tiền, quận Hoàn Kiếm, thành phố Hà Nội, không xa hồ Hoàn Kiếm và Bảo tàng Lịch sử Việt Nam, cạnh khách sạn Hilton Hanoi Opera, nhìn ra các vườn hoa Nhà hát Lớn và vườn hoa 19-8. Công trình được người Pháp khởi công xây dựng năm 1901 và hoàn thành năm 1911, theo mẫu Nhà hát Opéra Garnier ở Paris nhưng mang tầm vóc nhỏ hơn và sử dụng các vật liệu phù hợp với điều kiện khí hậu địa phương. Tác phẩm của hai kiến trúc sư Harlay và Broyer mang nhiều màu sắc, đường nét kiến trúc của các nhà hát ở miền Nam nước Pháp, có cách tổ chức mặt bằng, không gian biểu diễn, cầu thang, lối vào sảnh... giống với các nhà hát ở châu Âu đầu thế kỷ 20. Mặc dù là một công trình kiến trúc mang tính chiết trung, được pha trộn nhiều phong cách, nhưng Nhà hát Lớn Hà Nội vẫn mang đậm dáng vẻ Tân cổ điển Pháp, đặc biệt ở kết cấu kiến trúc, kiểu mái hai mảng lợp ngói đá đen cùng các họa tiết trang trí bên trong. Ra đời muộn hơn các nhà hát ở Thành phố Hồ Chí Minh và Hải Phòng, nhưng Nhà hát Lớn Hà Nội có kiến trúc hoàn chỉnh nhất và trở thành hình ảnh quen thuộc và đặc trưng của thành phố Hà Nội.'
  ),

  (
    15,
    'Bảo Tàng chiến thắng B-52',
    'POINT(105.8255681 21.03510061)'::GEOMETRY,
    'Miễn phí',
    1986,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_Chi%E1%BA%BFn_th%E1%BA%AFng_B52',
    'Bảo tàng Chiến thắng B-52 - bảo tàng độc đáo có một không hai trên thế giới mà bất kỳ khách du lịch Hà Nội nào cũng không nên bỏ lỡ. Bảo tàng Chiến thắng B52 trực thuộc Cục Chính trị, Bộ Tư lệnh Thủ đô Hà Nội, là một viện bảo tàng trưng bày các loại vũ khí, khí tài, xác máy bay B52 bị bắn rơi, lưu giữ cả hình ảnh và hiện vật của quân và dân Hà Nội trong trận Điện Biên Phủ trên không năm 1972 với không quân Hoa Kỳ..'
  ),

  (
    16,
    'Bảo tàng di tích Cổ Loa',
    'POINT(105.8723829 21.11169249)'::GEOMETRY,
    'Miễn phí',
    1999,
    'https://baotanglichsu.vn/vi/Articles/1508/50766/khai-truong-nha-trung-bay-hien-vat-di-tich-co-loa.html',
    'Nhà trưng bày đặt tại Khu di tích Cổ Loa, huyện Đông Anh, với diện tích hơn 300m2, gồm có hai tầng. Đây là nơi trưng bày “Cổ Loa – Dấu ấn lịch sử và văn hóa” đã được Ban Tổ chức chắt lọc các tư liệu, hình ảnh từ các công trình nghiên cứu của các nhà khoa học, Viện Viễn Đông Bác cổ (EFEO), Viện Khảo cổ học, Bảo tàng Lịch sử quốc gia, Bảo tàng Hà Nội, các sưu tập ảnh tư nhân… nhằm giới thiệu đến đông đảo du khách trong nước và quốc tế về các dấu ấn lịch sử và văn hóa của Khu di tích Cổ Loa.'
  ),

  (
    17,
    'Bảo tàng Cách Mạng Việt Nam',
    'POINT(105.8587268 21.02569054)'::GEOMETRY,
    'Miễn phí',
    1959,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_C%C3%A1ch_m%E1%BA%A1ng_Vi%E1%BB%87t_Nam',
    'Viện Bảo tàng Cách mạng Việt Nam là nơi tái hiện lịch sử đấu tranh hàng trăm năm qua của nhân dân Việt Nam chống Pháp, chống Nhật, chống Mỹ, chống phong kiến, giành lại nền độc lập tự do cho Việt Nam. Bảo tàng tọa lạc tại số 25 phố Tông Đản, phường Tràng Tiền, quận Hoàn Kiếm, thành phố Hà Nội. Sau năm 2011, Bảo tàng Cách mạng Việt Nam được hợp nhất với Bảo tàng Lịch sử Việt Nam thành Bảo tàng Lịch sử Quốc gia.'
  ),

  (
    18,
    'bảo tàng dân tộc học Việt Nam',
    'POINT(105.7992151 21.04051349)'::GEOMETRY,
    'Miễn phí',
    1997,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_D%C3%A2n_t%E1%BB%99c_h%E1%BB%8Dc_Vi%E1%BB%87t_Nam',
    'Bảo tàng Dân tộc học Việt Nam (tiếng Anh: Vietnam Museum of Ethnology) là tổ chức sự nghiệp trực thuộc Viện Hàn lâm Khoa học xã hội Việt Nam, có chức năng nghiên cứu khoa học, sưu tầm, kiểm kê, bảo quản, phục chế hiện vật và tư liệu về các dân tộc; tổ chức trưng bày, trình diễn và những hình thức hoạt động khác nhằm giới thiệu, phổ biến và giáo dục về các giá trị lịch sử, văn hoá của các dân tộc trong và ngoài nước; cung cấp tư liệu nghiên cứu về các dân tộc cho các ngành; đào tạo cán bộ nghiên cứu, nghiệp vụ, quản lý về nhân học bảo tàng. Bảo tàng tọa lạc tại đường Nguyễn Văn Huyên, phường Quan Hoa, quận Cầu Giấy, thành phố Hà Nội, cạnh đường Nguyễn Khánh Toàn và đối diện công viên Nghĩa Đô.'
  ),

  (
    19,
    'bảo tàng quân sự',
    'POINT(105.7546775 21.01038136)'::GEOMETRY,
    'Miễn phí',
    2024,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_L%E1%BB%8Bch_s%E1%BB%AD_Qu%C3%A2n_s%E1%BB%B1_Vi%E1%BB%87t_Nam',
    'Bảo tàng Lịch sử Quân sự Việt Nam là một trong các bảo tàng quốc gia và đứng đầu trong hệ thống Bảo tàng Quân đội, hiện đang lưu giữ, trưng bày hơn 15 vạn tài liệu, hiện vật, trong đó có nhiều sưu tập độc đáo và 4 Bảo vật Quốc gia, gồm máy bay MiG-21 số hiệu 4324, máy bay MiG-21 số hiệu 5121, Bản đồ Quyết tâm chiến dịch Hồ Chí Minh và xe tăng T-54B số hiệu 843. Bảo tàng mới được mở cửa từ tháng 11 năm 2024, có địa chỉ tại Km 6+500 Đại Lộ Thăng Long, phường Tây Mỗ, Đại Mỗ, quận Nam Từ Liêm, thành phố Hà Nội. Trước đó, bảo tàng cũ tọa lạc tại số 28A đường Điện Biên Phủ, phường Điện Biên, quận Ba Đình, đối diện Công viên Lê-nin, nằm trong khuôn viên Hoàng thành Thăng Long.'
  ),

  (
    20,
    'bảo tàng Lịch sử Việt Nam',
    'POINT(105.8587213 21.02471076)'::GEOMETRY,
    'Miễn phí',
    1958,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_L%E1%BB%8Bch_s%E1%BB%AD_qu%E1%BB%91c_gia_(Vi%E1%BB%87t_Nam)',
    'Bảo tàng Lịch sử Việt Nam, cùng với Bảo tàng Cách mạng Việt Nam là hai bảo tàng đã được sáp nhập thành Bảo tàng Lịch sử quốc gia, tọa lạc ở thành phố Hà Nội. Bảo tàng Lịch sử Việt Nam (cũ) là nơi lưu giữ những hiện vật, phản ánh các nền văn hóa, lịch sử dựng nước và giữ nước của người Việt Nam từ thuở ban đầu khai sáng đến ngày ra đời nước Việt Nam Dân chủ Cộng hòa. Viện bảo tàng có phong cách kiến trúc Đông Dương, nằm ở số 1 phố Tràng Tiền, Hoàn Kiếm, Hà Nội. Viện Bảo tàng mở cửa đón khách cả tuần, trừ thứ hai. Tại đây còn lưu giữ nhiều hiện vật quý như Trống đồng Đông Sơn, gốm Bát Tràng, tượng thần Shiva, cọc gỗ trong trận Bạch Đằng,... Bảo tàng Lịch sử Việt Nam được thành lập ngày 3 tháng 9 năm 1958 trên cơ sở kế thừa Bảo tàng Louis Finot do người Pháp xây dựng năm 1929 và hoạt động vào năm 1932. Đây là Viện bảo tàng của trường Viễn Đông Bác cổ. Ngày ấy, đây là nơi trưng bày những đồ cổ thu thập từ các nước ở Đông Nam Á. Nǎm 1958, người Pháp bàn giao lại ngôi nhà này cho chính quyền cách mạng mới.'
  ),

  (
    21,
    'bảo tàng Hồ Chí Minh',
    'POINT(105.8331907 21.03577138)'::GEOMETRY,
    'Miễn phí',
    1990,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_H%E1%BB%93_Ch%C3%AD_Minh',
    'Bảo tàng Hồ Chí Minh là bảo tàng ở Hà Nội tập trung chủ yếu vào việc trưng bày những hiện vật, tư liệu về cuộc đời và con người Hồ Chí Minh. Nằm trong khu vực có nhiều di tích như: Lăng Chủ tịch Hồ Chí Minh, Khu di tích Phủ Chủ tịch, Chùa Một Cột,... tạo thành một quần thể các di tích thu hút khách tham quan trong và ngoài nước. Bảo tàng tọa lạc tại số 19 phố Ngọc Hà, phường Đội Cấn, quận Ba Đình, thành phố Hà Nội, nằm phía sau Lăng Chủ tịch Hồ Chí Minh và cạnh công viên Bách Thảo. Bảo tàng Hồ Chí Minh là bảo tàng lớn và hiện đại nhất Việt Nam.Ngày 15 tháng 10 năm 1979, Chính phủ Việt Nam đã ban hành Nghị định số 375/ CP về chức năng, nhiệm vụ và tổ chức của Viện bảo tàng Hồ Chí Minh: "Là trung tâm nghiên cứu những tư liệu hiện vật và di tích lịch sử có quan hệ đến đời sống và hoạt động của Chủ tịch Hồ Chí Minh vĩ đại trong suốt quá trình đấu tranh cách mạng của Người và tuyên truyền, giáo dục quần chúng về sự nghiệp tư tưởng, đạo đức và tác phong của Người thông qua những tư liệu, hiện vật và di tích đó".'
  ),

  (
    22,
    'Đình Tây Đằng',
    'POINT(105.4218252 21.19656852)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%C3%ACnh_T%C3%A2y_%C4%90%E1%BA%B1ng',
    'Đình Tây Đằng là một đình làng ở thị trấn Tây Đằng, huyện Ba Vì, thành phố Hà Nội, Việt Nam. Đình gồm ngôi đình, tả và hữu mạc, sân đình, cổng đình, hồ bán nguyệt. Đây cũng là một di tích quốc gia đặc biệt của Việt Nam được xếp hạng đợt 4. Không rõ đình Tây Đằng được xây dựng vào năm nào. Trên một đầu cột của đình có ghi hàng chữ Quý Mùi niên tạo, nhưng lại không ghi niên hiệu. Ngày nay phần lớn các nhà nghiên cứu ở Việt Nam cho rằng đình Tây Đằng có niên đại khởi dựng vào thời nhà Mạc còn nắm quyền ở Thăng Long (khoảng thời gian rộng hơn có thể là trong thời kỳ văn hóa Lê–Mạc). Các hoa văn mang phong cách cuối thời Lê Sơ (thế kỷ 16), song một số hình rồng lại mong phong cách thời Trần.'
  ),

  (
    23,
    'Làng cổ Đường lâm',
    'POINT(105.47 21.14)'::GEOMETRY,
    'Miễn phí',
    2006,
    'https://vi.wikipedia.org/wiki/%C4%90%C6%B0%E1%BB%9Dng_L%C3%A2m',
    'Đây là quê hương nhiều danh nhân như bà Man Thiện (mẹ của hai Bà Trưng), Bố Cái Đại vương Phùng Hưng, vua Ngô Quyền, Thám hoa Giang Văn Minh, bà chúa Mía (người xây chùa Mía, vương phi của chúa Trịnh Tráng), Phan Kế Toại, Hà Kế Tấn, Kiều Mậu Hãn, Phan Kế An,... Đường Lâm còn được gọi là đất hai vua do là nơi sinh ra Phùng Hưng và Ngô Quyền. Tuy thường được gọi là làng cổ nhưng thực ra Đường Lâm từ xưa gồm 9 làng thuộc tổng Cam Giá Thịnh huyện Phúc Thọ trấn Sơn Tây, trong đó 5 làng Mông Phụ, Đông Sàng, Cam Thịnh, Đoài Giáp và Cam Lâm liền kề nhau. Các làng này gắn kết với nhau thành một thể thống nhất với phong tục, tập quán, và tín ngưỡng hàng ngàn năm nay không hề thay đổi. Đầu thế kỷ 19, Đường Lâm là nơi đặt lỵ sở của trấn Sơn Tây.'
  ),

  (
    24,
    'Thành cổ Sơn Tây',
    'POINT(105.5045705 21.13851262)'::GEOMETRY,
    'Miễn phí',
    1994,
    'https://vi.wikipedia.org/wiki/Th%C3%A0nh_c%E1%BB%95_S%C6%A1n_T%C3%A2y',
    'Thành cổ Sơn Tây được xây dựng vào năm Minh Mạng thứ 3 (1822) tại tỉnh cũ Sơn Tây, là tòa thành cổ được xây bằng đá ong của Việt Nam có tổng diện tích 16 ha với các kiến trúc độc đáo như: tường thành bằng đá ong, 4 cổng thành xây bằng gạch cổ. Đây là một trong số ít tòa thành dưới thời Minh Mạng còn lại đến ngày nay, thành được xây dựng kiên cố để bảo vệ vùng đất phía tây bắc Thăng Long. Thành cổ Sơn Tây đã được Bộ Văn hóa - Thông tin nước Cộng hòa Xã hội chủ nghĩa Việt Nam công nhận là di tích lịch sử kiến trúc quốc gia năm 1994. Ngày nay, tòa thành này vẫn còn tồn tại ở trung tâm thị xã Sơn Tây, Hà Nội và trở thành một di tích lịch sử và kiến trúc quân sự.'
  ),

  (
    25,
    'Chùa Khai Nguyên',
    'POINT(105.5066767 21.06878481)'::GEOMETRY,
    'Miễn phí',
    1992,
    'https://vi.wikipedia.org/wiki/Ch%C3',
    'Chùa Khai Nguyên thường được gọi là chùa Quán La. Chùa còn có tên là chùa Hang, vì ở đây có một hang cổ. Trong chùa còn có tấm biển đề Khai Nguyên tự. Chuông chùa cũng có tên là Khai Nguyên tự chung (Chuông chùa Khai Nguyên). Theo sách Việt điện u linh của Lý Tế Xuyên thì chùa (quán) được xây dựng vào niên hiệu đời Đường, niên hiệu Khai Nguyên (715). Lúc bấy giờ, đây là nơi hành đạo của nhiều đạo sĩ và thu hút nhiều du khách đến tham quan. Đến năm Thiên Long đời Trần (Trần Dụ Tông 1341 - 1369), thiền sư Văn Thao cho trùng tu quán, rồi dựng lại thành chùa thờ Phật, đặt tên là An Dưỡng Tự. Sau đó, nhà sư đã đi đến nơi khác tu hành nên chùa bị hoang phế. Đến thời Lê, chùa mới được dựng lại với kiến trúc chùa như hiện nay..'
  ),

  (
    26,
    'Đền Hát Môn',
    'POINT(105.6124587 21.12953877)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_H%C3%A1t_M%C3%B4n',
    'Đền thờ Hai Bà Trưng ở Hát Môn. Theo một số tài liệu ghi lại, vùng Hát Môn là nơi Hai Bà Trưng tổ chức hội quân sĩ sau khi hội tại thành Phong Châu. Đây cũng là nơi tuẫn tiết của Hai Bà Trưng khi cuộc khởi nghĩa thất bại. Tương truyền, đền Hát Môn được khởi dựng sau khi Hai Bà Trưng hoá sinh vào cõi bất diệt. Trong thời kỳ chống Pháp và chống Mỹ, Đền Hát Môn được chọn làm nơi sinh hoạt, luyện tập của dân quân du kích địa phương. Những sự kiện lịch sử và hệ thống di tích quanh vùng sông Hát góp phần làm giàu thêm nội dung và tôn cao giá trị của đền thờ Hai Bà Trưng.'
  ),

  (
    27,
    'Đền Hai Bà Trưng',
    'POINT(105.7334718 21.15669854)'::GEOMETRY,
    'Miễn phí',
    1980,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Hai_B%C3%A0_Tr%C6%B0ng',
    'Đền Hai Bà Trưng còn gọi là đền Hạ Lôi ở thôn Hạ Lôi xã Mê Linh, huyện Mê Linh, thành phố Hà Nội. Đền thờ hai vị liệt nữ - anh hùng dân tộc là Trưng Trắc và Trưng Nhị. Để tưởng nhớ công đức của Hai Bà, nhân dân đã lập đền thờ tại thôn Hạ Lôi, xã Mê Linh, huyện Mê Linh, hàng năm tổ chức lễ hội tưởng nhớ công đức của Hai Bà và các tướng lĩnh từ ngày mùng 4 đến mùng 10 tháng Giêng. Đền được xây dựng theo hình chữ “tam”, gồm: Tiền tế, Trung tế, Hậu cung, xung quanh là tường gạch; hai bên là Tả mạc và Hữu mạc.'
  ),

  (
    28,
    'Đền Sóc',
    'POINT(105.8321955 21.07334511)'::GEOMETRY,
    'Miễn phí',
    1992,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_S%C3%B3c',
    'Tương truyền, đền Sóc bắt nguồn từ ngôi miếu thờ nhỏ mang tên Đổng Vương có từ xa xưa, một lần Lê Hoàn (Lê Đại Hành) cùng các tướng sĩ trên đường hành quân chống giặc Tống xâm lược, vua tôi nhà Tiền Lê vào làm lễ cầu thánh Gióng phù hộ. Trong trận chiến, quân Tống thua to, khi quay về vua Lê Đại Hành vào lễ tạ rồi sai người tìm gốc trầm hương làm tượng thần và xây dựng thành khu đền uy nghi. Đồng thời phong thêm hai chữ "Phù" và "Thiên", tên của ngài được thờ tại đền Sóc là "Phù Đổng Thiên Vương".'
  ),

  (
    29,
    'Đền Phù Đổng',
    'POINT(105.8179414 21.17832205)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Ph%C3%B9_%C4%90%E1%BB%95ng',
    'Đền Phù Đổng hay còn gọi là đền Gióng thờ Thánh Gióng - Phù Đổng Thiên Vương, nằm ở xã Phù Đổng, Gia Lâm, ngoại thành Hà Nội. Đền Phù Đổng còn được gọi là đền Thượng, tương truyền được dựng trên nền nhà cũ của Thánh Gióng, bên trong đê sông Đuống, còn đền Hạ (đền mẫu) thờ mẹ của Thánh Gióng nằm ngoài đê, gần nơi được cho là có dấu chân khổng lồ mà bà đã ướm thử rồi sinh ra Thánh Gióng. Năm 1010 khi dời đô về Thăng Long, Lý Thái Tổ đã cho dựng đền, đến nay đã được trùng tu nhiều lần.'
  ),

  (
    30,
    'Chùa Hà',
    'POINT(105.7953931 21.03715505)'::GEOMETRY,
    'Miễn phí',
    1996,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_H%C3%A0',
    'Có tên chữ là Thánh Đức tự.Về thời điểm có chùa Hà có hai truyền thuyết. Truyền thuyết thứ nhất: vào thời Lý vùng Dịch Vọng đã có nhiều danh thắng nổi tiếng. Vua Lý Thánh Tông (trị vì 1054 - 1072) lúc 42 tuổi vẫn chưa có con nên đã cầu tự ở một ngôi chùa mà sinh ra Thái tử Lý Càn Đức ( Lý Nhân Tông ), do đó ngôi chùa này gọi là chùa Thánh Chúa để kỷ niệm sự kiện này. Trên đường đi vua còn ghé qua một ngôi chùa khác và ban tiền bạc cho chùa để trùng tu lại, vì vậy chùa này còn có tên là Thánh Đức tự. Vua Lý Thánh Tông đột ngột mất năm 50 tuổi, thái tử Càn Đức lên ngôi lúc 7 tuổi, tức là Lý Nhân Tông.Truyền thuyết thứ hai: Chùa Hà được xây dựng lên để vua Lê Thánh Tông (trị vì 1460-1497) bày tỏ lòng nhớ ơn các đại thần Nguyễn Trãi, Nguyễn Xí, Đinh Liệt đã cưu mang mình và phế bỏ Lê Nghi Dân để đưa mình lên ngôi vua vào năm 1460.'
  ),

  (
    31,
    'Chùa Láng',
    'POINT(105.8028029 21.02462772)'::GEOMETRY,
    'Miễn phí',
    1989,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_L%C3%A1ng',
    'Chùa Láng, hay còn gọi là Chiêu Thiền tự (Chữ Hán: 昭禪寺), là một ngôi chùa ở làng Láng, Láng Thượng, quận Đống Đa, Hà Nội. Tên chùa có ý nghĩa rằng: "Vì có điều tốt rõ rệt nên gọi là Chiêu. Đây là nơi sinh ra Thiền sư Đại Thánh nên gọi là Thiền". Người Pháp gọi là Pagode des Dames. Chùa tương truyền được xây dựng từ thời vua Lý Anh Tông (trị vì từ 1138 đến 1175). Chùa thờ Thiền sư Từ Đạo Hạnh. Theo truyền thuyết, nhà sư này đã đầu thai làm con trai một nhà quý tộc Sùng Hiền hầu, em vua Lý Nhân Tông. Vì vua Lý Nhân Tông (trị vì từ 1072 đến 1127) không có con, nên con trai của ông Sùng Hiền hầu được nối ngôi, tức vua Lý Thần Tông (trị vì từ 1128 đến 1138). Do sự tích ấy mà con của Lý Thần Tông là Lý Anh Tông đã cho xây cất chùa Chiêu Thiền để thờ vua cha và tiền thân của Người là thiền sư Từ Đạo Hạnh. Chùa đã được trùng tu nhiều lần, những lần quan trọng nhất là vào các năm 1656, 1901 và 1989.'
  ),

  (
    32,
    'Chùa Phúc Khánh',
    'POINT(105.8219898 21.00456299)'::GEOMETRY,
    'Miễn phí',
    1988,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Ph%C3%BAc_Kh%C3%A1nh',
    'Chùa Phúc Khánh (福慶寺) còn có tên Chùa Sở (㕑所) là 1 ngôi chùa lâu đời ở Hà Nội. Chùa đã được Bộ Văn hóa – Thông tin công nhận là Di tích lịch sử – văn hóa quốc gia năm 1988. Chùa được dựng vào thời Hậu Lê. Vào thời Lê, chùa là cơ sở đào tạo tăng tài cho Phật giáo. Sau đó gặp hỏa hoạn bị hư hỏng hoàn toàn. Có tài liệu cho chùa nằm trong khu vực diễn ra trận đánh Đống Đa năm 1789 nên bị đổ nát, sau được nhà sư Chiếu Liên xây dựng lại với sự hỗ trợ của Đô đốc Trần Văn Lễ (thời Tây Sơn) đã từng ém quân ở chùa. Ông còn cho đúc quả đại hồng chung và pho tượng Cửu Long cúng chùa.'
  ),

  (
    33,
    'Chùa Quang Hoa',
    'POINT(105.8472285 21.02895519)'::GEOMETRY,
    'Miễn phí',
    1989,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Quang_Hoa_(H%C3%A0_N%E1%BB%99i)',
    'Chùa Quang Hoa là một ngôi chùa nằm trên phố Trần Bình Trọng, quận Hai Bà Trưng, Hà Nội.Theo tấm bia "Quang Hoa tự thập phương bi" hiện dựng ở chùa Quang Hoa thì chùa xưa vốn ở thôn Quang Hoa, phía tây thôn Thiền quang (hai thôn này nằm trong công viên Thống nhất hiện nay). Tấm bia khắc năm thứ 12 niên hiệu Tự Đức (1860) ghi việc dân làng Pháp Hoa góp tiền của dựng chùa vào năm 1860. Khoảng năm 1933 - 1934, thực dân Pháp đã dời 3 làng Quang Hoa, Thiền Quang đi nơi khác để mở đường và quy định cho dân các làng đời chuyển về vị trí hiện nay.'
  ),

  (
    34,
    'Chùa Quán Sứ',
    'POINT(105.8458215 21.02472367)'::GEOMETRY,
    'Miễn phí',
    1982,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Qu%C3%A1n_S%E1',
    'Chùa Quán Sứ (舘使寺) là một ngôi chùa ở số 73 phố Quán Sứ, phường Trần Hưng Đạo, quận Hoàn Kiếm, thành phố Hà Nội. Trước đây,[khi nào?] địa phận này thuộc thôn An Tập, phường Cổ Vũ, tổng Tiền Nghiêm (sau đổi là tổng Vĩnh Xương), huyện Thọ Xương. CChùa Quán Sứ được xây dựng vào thế kỷ 15. Nguyên xưa ở phường Cổ Vũ chưa có chùa, chỉ có mấy gian nhà tranh ở phía Nam, dân làng dùng làm chỗ tế thần cầu yên gọi là xóm An Tập. Theo sách Hoàng Lê Nhất Thống Chí, vào thời vua Lê Thế Tông, các nước Chiêm Thành, Ai Lao thường cử sứ giả sang triều cống Việt Nam. Nhà vua cho dựng một tòa nhà gọi là Quán Sứ để tiếp đón các sứ thần đến Thăng Long. Vì sứ thần các nước này đều sùng đạo Phật nên lại dựng thêm một ngôi chùa cũng nằm trong khuôn viên Quán Sứ để họ có điều kiện hành lễ. Thời gian đã xóa đi dấu khu nhà Quán Sứ nhưng ngôi chùa thì vẫn tồn tại..'
  ),

  (
    35,
    'Chùa Bồ Đề',
    'POINT(105.8674305 21.03614288)'::GEOMETRY,
    'Miễn phí',
    1996,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_B%E1%BB%93_%C4%90%E1%BB%81_(H%C3%A0_N%E1%BB%99i)',
    'Chùa Bồ Đề nằm ở phố Phú Viên, phường Bồ Đề, quận Long Biên, Hà Nội (trước kia thuộc huyện Gia Lâm, Hà Nội), cách bờ bắc cầu Chương Dương khoảng 500m về phía Nam. Nơi chùa chính thờ Phật pháp, vương triều nhà Trần, tam toà thánh Mẫu. Năm 2014, Chùa Bồ Đề từng được gọi là "nơi bình yên" hay nơi cứu rỗi những mảnh đời bị bỏ rơi giữa chốn nhân gian. Nơi đây là bến Bồ Đề, nơi Lê Lợi đóng quân đánh thành Đông Quan, đánh đuổi quân Minh xâm lược. Chùa Bồ Đề có tên chữ là Thiên Sơn. Tấm bia cổ dựng năm Hoằng Định thứ 15 (1614) đời Lê Kính Tông có chép lại việc dựng lại chùa và ghi rõ "đại công đức Bồ Đề" của vua Lê Thái Tổ. Chùa chỉ còn tòa thượng 5 gian xây trên nền cao, dáng bề thế, cổ kính. Bồ Đề hiện nay là một phường thuộc quận Long Biên, thành phố Hà Nội, Việt Nam. Sở dĩ gọi là "Bồ Đề" vì xa xưa trong làng có hai cây bồ đề cao, nổi bật giữa những làng quê ven sông Hồng, ngang đỉnh tháp chùa Báo Thiên ở trong Kinh thành Thăng Long ở bên kia sông.'
  ),

  (
    36,
    'Đền Quán Thánh',
    'POINT(105.8370927 21.04318542)'::GEOMETRY,
    '10,000đ',
    1989,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Qu%C3%A1n_Th%C3%A1nh',
    'Đền Quán Thánh, tên chữ là Trấn Vũ Quán, có từ đời Lý Thái Tổ (1010 - 1028), thờ Huyền Thiên Trấn Vũ, là một trong bốn vị thần được lập đền thờ để trấn giữ bốn cửa ngõ thành Thăng Long khi xưa (Thăng Long tứ trấn). Nơi đây cũng từng là một trong bốn Đạo quán lớn của Đạo giáo ở Thăng Long. Đền Quán Thánh nằm bên cạnh Hồ Tây, cùng với chùa Kim Liên và chùa Trấn Quốc tạo nên sự hài hòa trong kiến trúc cảnh quan và trong văn hóa tín ngưỡng đối với cả khu vực phía Tây Bắc của Hà Nội. Đền tọa lạc tại số 190 phố Quán Thánh, phường Quán Thánh, quận Ba Đình, thành phố Hà Nội.'
  )