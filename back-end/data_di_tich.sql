 DROP TABLE IF EXISTS heritage_sites; -- xóa bảng cũ trước khi tạo bảng
 
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
    'Lăng chủ tịch Hồ Chí Minh',
    'POINT(105.8351616 21.0370932)'::GEOMETRY,
    'Miễn phí',
    1973,
    'https://vi.wikipedia.org/wiki/L%C4%83ng_Ch%E1%BB%A7_t%E1%BB%8Bch_H%E1%BB%93_Ch%C3%AD_Minh',
    'Lăng Chủ tịch Hồ Chí Minh là nơi đặt thi hài của chủ tịch Hồ Chí Minh.'
  ),
  (
    2,
    'Đền Sóc',
    'POINT(105.8329653 21.29123874)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_S%C3%B3c',
    'Đền Sóc bắt nguồn từ ngôi miếu thờ nhỏ mang tên Đổng Vương có từ xa xưa'
  ),

  (
    3,
    'Chùa Tây Phương',
    'POINT(105.5859977 21.02582658)'::GEOMETRY,
    'Miễn phí',
    2008,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_T%C3%A2y_Ph%C6%B0%C6%A1ng',
    'Chùa Tây Phương nằm trên ngọn núi Câu Lậu, thuộc xã Thạch Xá, huyện Thạch Thất, Hà Nội'
  ),

  (
    4,
    'Chùa Thầy',
    'POINT(105.6467113 21.02310297)'::GEOMETRY,
    'Miễn phí',
    2014,
    'https://www.vietnamtourism.com/index.php/tourism/items/1469',
    'Chùa Thầy là một ngôi chùa ở chân núi Sài Sơn, huyện Quốc Oai, tỉnh Hà Tây cũ,'
  ),

  (
    5,
    'Gò Đống Đa',
    'POINT(105.8035225 20.99396897)'::GEOMETRY,
    'Miễn phí',
    1989,
    'https://vi.wikipedia.org/wiki/G%C3%B2_%C4%90%E1%BB%',
    'Gò Đống Đa là một gò đất và là một di tích nằm bên đường phố Tây Sơn, phường Quang Trung, quận Đống Đa, thành phố Hà Nội.'
  ),

  (
    6,
    'Hoàng thành Thăng Long',
    'POINT(105.8402647 21.03515505)'::GEOMETRY,
    '30,000đ',
    2010,
    'https://vi.wikipedia.org/wiki/Ho%C3%A0ng_th%C3%A0nh_Th%C4%83ng_Long',
    'Quần thể di tích gắn với lịch sử kinh thành Thăng Long - Đông Kinh và tỉnh thành Hà Nội'
  ),

  (
    7,
    'Nhà tù Hỏa Lò',
    'POINT(105.8475885 21.02545488)'::GEOMETRY,
    'Miễn phí',
    2008,
    'https://vi.wikipedia.org/wiki/Nh%C3%A0_t%C3%B9_H%E1%BB%8Fa_L%C3%B2',
    'Nhà tù Hỏa Lò từng là nơi giam giữ rất nhiều nhà cách mạng lớn của Việt Nam'
  ),

  (
    8,
    'Di tích Thành Cổ Loa',
    'POINT(105.8724043 21.11233304)'::GEOMETRY,
    'Miễn phí',
    2012,
    'https://vi.wikipedia.org/wiki/Th%C3%A0nh_C%E1%BB%95_Loa',
    'Thành Cổ Loa là kinh đô của nhà nước Âu Lạc dưới thời An Dương Vương'
  ),

  (
    9,
    'Chùa Trấn Quốc',
    'POINT(105.8382396 21.04805501)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Tr%E1%BA%A5n_Qu%E1%BB%91c',
    'Chùa Trấn Quốc nằm trên một hòn đảo phía Đông Hồ Tây (quận Tây Hồ).'
  ),

  (
    10,
    'Văn Miếu Quốc Tửu Giám',
    'POINT(105.8361788 21.02836285)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/V%C4%83n_Mi%E1%BA%BFu_%E2%80%93_Qu%E1%BB%91c_T%E1%BB%AD_Gi%C3%A1m',
    'Trường đại học đầu tiên của Việt Nam'
  ),

  (
    11,
    'Chùa Một Cột',
    'POINT(105.8339911 21.03598081)'::GEOMETRY,
    'Miễn phí',
    2010,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_M%E1%BB%99t_C%E1%BB%99t',
    'Chùa Một Cột có tên ban đầu là Liên Hoa Đài'
  ),

  (
    12,
    'Đền Phù Đổng',
    'POINT(105.8179575 21.17833707)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Ph%C3%B9_%C4%90%E1%BB%95ng',
    'Đền Phù Đổng hay còn gọi là đền Gióng thờ Thánh Gióng'
  ),

  (
    13,
    'Đền Ngọc Sơn',
    'POINT(105.8531425 21.03089359)'::GEOMETRY,
    '10,000đ',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Ng%E1%BB%8Dc_S%C6%A1n',
    'Ngọc Sơn là một ngôi đền thờ nằm trên đảo Ngọc của hồ Hoàn Kiếm ở Hà Nội'
  ),

  (
    14,
    'Nhà hát lớn Hà Nội',
    'POINT(105.8587144 21.02436898)'::GEOMETRY,
    'Miễn phí',
    1997,
    'https://vi.wikipedia.org/wiki/Nh%C3%A0_h%C3%A1t_L%E1%BB%9Bn_H%C3%A0_N%E1%BB%99i',
    'Nhà hát Lớn Hà Nội là một công trình kiến trúc phục vụ biểu diễn nghệ thuật'
  ),

  (
    15,
    'Bảo Tàng chiến thắng B-52',
    'POINT(105.8255681 21.03510061)'::GEOMETRY,
    'Miễn phí',
    1986,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_Chi%E1%BA%BFn_th%E1%BA%AFng_B52',
    'Là một viện bảo tàng trưng bày các loại vũ khí, khí tài, xác máy bay B52 bị bắn rơi, lưu giữ cả hình ảnh và hiện vật của quân và dân Hà Nội trong trận Điện Biên Phủ trên không năm 1972 với không quân Hoa Kỳ.'
  ),

  (
    16,
    'Bảo tàng di tích Cổ Loa',
    'POINT(105.8723829 21.11169249)'::GEOMETRY,
    'Miễn phí',
    1999,
    'https://baotanglichsu.vn/vi/Articles/1508/50766/khai-truong-nha-trung-bay-hien-vat-di-tich-co-loa.html',
    'Nhà trưng bày đặt tại Khu di tích Cổ Loa, huyện Đông Anh, với diện tích hơn 300m2, gồm có hai tầng'
  ),

  (
    17,
    'Bảo tàng Cách Mạng Việt Nam',
    'POINT(105.8587268 21.02569054)'::GEOMETRY,
    'Miễn phí',
    1959,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_C%C3%A1ch_m%E1%BA%A1ng_Vi%E1%BB%87t_Nam',
    'Là nơi tái hiện lịch sử đấu tranh hàng trăm năm qua của nhân dân Việt Nam chống Pháp, chống Nhật, chống Mỹ, chống phong kiến, giành lại nền độc lập tự do cho Việt Nam. Bảo tàng tọa lạc tại số 25 phố Tông Đản, phường Tràng Tiền, quận Hoàn Kiếm, thành phố Hà Nội'
  ),

  (
    18,
    'Bảo tàng dân tộc học Việt Nam',
    'POINT(105.7992151 21.04051349)'::GEOMETRY,
    'Miễn phí',
    1997,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_D%C3%A2n_t%E1%BB%99c_h%E1%BB%8Dc_Vi%E1%BB%87t_Nam',
    'Là tổ chức sự nghiệp trực thuộc Viện Hàn lâm Khoa học xã hội Việt Nam, có chức năng nghiên cứu khoa học, sưu tầm, kiểm kê, bảo quản, phục chế hiện vật và tư liệu về các dân tộc;'
  ),

  (
    19,
    'Bảo tàng quân sự',
    'POINT(105.7546775 21.01038136)'::GEOMETRY,
    'Miễn phí',
    2024,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_L%E1%BB%8Bch_s%E1%BB%AD_Qu%C3%A2n_s%E1%BB%B1_Vi%E1%BB%87t_Nam',
    'Là một trong các bảo tàng quốc gia và đứng đầu trong hệ thống Bảo tàng Quân đội'
  ),

  (
    20,
    'Bảo tàng Lịch sử Việt Nam',
    'POINT(105.8587213 21.02471076)'::GEOMETRY,
    'Miễn phí',
    1958,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_L%E1%BB%8Bch_s%E1%BB%AD_qu%E1%BB%91c_gia_(Vi%E1%BB%87t_Nam)',
    'Là nơi lưu giữ những hiện vật, phản ánh các nền văn hóa, lịch sử dựng nước và giữ nước của người Việt Nam từ thuở ban đầu khai sáng đến ngày ra đời nước Việt Nam Dân chủ Cộng hòa.'
  ),

  (
    21,
    'Bảo tàng Hồ Chí Minh',
    'POINT(105.8331907 21.03577138)'::GEOMETRY,
    'Miễn phí',
    1990,
    'https://vi.wikipedia.org/wiki/B%E1%BA%A3o_t%C3%A0ng_H%E1%BB%93_Ch%C3%AD_Minh',
    'Là bảo tàng ở Hà Nội tập trung chủ yếu vào việc trưng bày những hiện vật, tư liệu về cuộc đời và con người Hồ Chí Minh..'
  ),

  (
    22,
    'Đình Tây Đằng',
    'POINT(105.4218252 21.19656852)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%C3%ACnh_T%C3%A2y_%C4%90%E1%BA%B1ng',
    'Đình Tây Đằng là một đình làng ở thị trấn Tây Đằng, huyện Ba Vì, thành phố Hà Nội, Việt Nam'
  ),

  (
    23,
    'Làng cổ Đường lâm',
    'POINT(105.47 21.14)'::GEOMETRY,
    'Miễn phí',
    2006,
    'https://vi.wikipedia.org/wiki/%C4%90%C6%B0%E1%BB%9Dng_L%C3%A2m',
    'Đường Lâm nằm bên hữu ngạn sông Hồng (bờ phía Nam), cạnh đường Quốc lộ 32, tại ngã ba giao cắt với Quốc lộ 21A'
  ),

  (
    24,
    'Thành cổ Sơn Tây',
    'POINT(105.5045705 21.13851262)'::GEOMETRY,
    'Miễn phí',
    1994,
    'https://vi.wikipedia.org/wiki/Th%C3%A0nh_c%E1%BB%95_S%C6%A1n_T%C3%A2y',
    'Là tòa thành cổ được xây bằng đá ong của Việt Nam'
  ),

  (
    25,
    'Chùa Khai Nguyên',
    'POINT(105.5066767 21.06878481)'::GEOMETRY,
    'Miễn phí',
    1992,
    'https://vi.wikipedia.org/wiki/Ch%C3',
    'Chùa Khai Nguyên thường được gọi là chùa Quán La. Chùa còn có tên là chùa Hang, vì ở đây có một hang cổ.'
  ),

  (
    26,
    'Đền Hát Môn',
    'POINT(105.6124587 21.12953877)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_H%C3%A1t_M%C3%B4n',
    'Đền thờ Hai Bà Trưng ở Hát Môn'
  ),

  (
    27,
    'Đền Hai Bà Trưng',
    'POINT(105.7334718 21.15669854)'::GEOMETRY,
    'Miễn phí',
    1962,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Hai_B%C3%A0_Tr%C6%B0ng',
    'Đền thờ Hai Bà Trưng'
  ),

  (
    28,
    'Đền Sóc',
    'POINT(105.8321955 21.07334511)'::GEOMETRY,
    'Miễn phí',
    1962,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_S%C3%B3c',
    'Gắn với truyền thuyết anh hùng thánh Gióng bay về trời'
  ),

  (
    29,
    'Đền Phù Đổng',
    'POINT(105.8179414 21.17832205)'::GEOMETRY,
    'Miễn phí',
    2013,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Ph%C3%B9_%C4%90%E1%BB%95ng',
    'Đền Gióng thờ Thánh Gióng - Phù Đổng Thiên Vương'
  ),

  (
    30,
    'Chùa Hà',
    'POINT(105.7953931 21.03715505)'::GEOMETRY,
    'Miễn phí',
    1996,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_H%C3%A0',
    'Có tên chữ là Thánh Đức tự'
  ),

  (
    31,
    'Chùa Láng',
    'POINT(105.8028029 21.02462772)'::GEOMETRY,
    'Miễn phí',
    1989,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_L%C3%A1ng',
    'Chùa Láng, hay còn gọi là Chiêu Thiền tự'
  ),

  (
    32,
    'Chùa Phúc Khánh',
    'POINT(105.8219898 21.00456299)'::GEOMETRY,
    'Miễn phí',
    1988,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Ph%C3%BAc_Kh%C3%A1nh',
    'Chùa Phúc Khánh còn có tên Chùa Sở'
  ),

  (
    33,
    'Chùa Quang Hoa',
    'POINT(105.8472285 21.02895519)'::GEOMETRY,
    'Miễn phí',
    1989,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Quang_Hoa_(H%C3%A0_N%E1%BB%99i)',
    'Chùa Quang Hoa là một ngôi chùa nằm trên phố Trần Bình Trọng, quận Hai Bà Trưng, Hà Nội'
  ),

  (
    34,
    'Chùa Quán Sứ',
    'POINT(105.8458215 21.02472367)'::GEOMETRY,
    'Miễn phí',
    1982,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_Qu%C3%A1n_S%E1',
    'Là một ngôi chùa ở số 73 phố Quán Sứ, Quận Hoàn Kiếm, Thành phố Hà Nội.'
  ),

  (
    35,
    'Chùa Bồ Đề',
    'POINT(105.8674305 21.03614288)'::GEOMETRY,
    'Miễn phí',
    1996,
    'https://vi.wikipedia.org/wiki/Ch%C3%B9a_B%E1%BB%93_%C4%90%E1%BB%81_(H%C3%A0_N%E1%BB%99i)',
    'Chùa Bồ Đề từng được gọi là "nơi bình yên" hay nơi cứu rỗi những mảnh đời bị bỏ rơi giữa chốn nhân gian.'
  ),

  (
    36,
    'Đền Quán Thánh',
    'POINT(105.8370927 21.04318542)'::GEOMETRY,
    '10,000đ',
    1989,
    'https://vi.wikipedia.org/wiki/%C4%90%E1%BB%81n_Qu%C3%A1n_Th%C3%A1nh',
    'Đền Quán Thánh, tên chữ là Trấn Vũ Quán, có từ đời Lý Thái Tổ'
  ),