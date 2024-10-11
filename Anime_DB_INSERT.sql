--Tür Veri Giriþi

INSERT INTO Tur(Tur_Isim) VALUES
('Aksiyon'),
('Askeri'),
('Bilim Kurgu'),
('Büyü'),
('Çocuk'),
('Doðaüstü Güçler'),
('Dövüþ Sanatlarý'),
('Dram'),
('Ecchi'),
('Fantastik'),
('Gerilim'),
('Gizem'),
('Harem'),
('Hentai'),
('Isekai'),
('Josei'),
('Komedi'),
('Korku'),
('Macera'),
('Mecha'),
('Murim'),
('Müzik'),
('Okul'),
('Polisiye'),
('Psikolojik'),
('Romantizm'),
('Seinen'),
('Shoujo'),
('Shoujo Ai'),
('Shounen'),
('Shounen Ai'),
('Spor'),
('Süper güçler'),
('Tarih'),
('Aksiyon'),
('Uzay'),
('Yaoi'),
('Yaþamdan Kesitler'),
('Yuri');

SELECT * FROM Tur

--Stüdyo Veri Giriþi

INSERT INTO Studyo(Studyo_Isim, Kurulus_Tarihi) VALUES 
('Hibari', '07/01/1979'),
('Frontier Works', '08/01/2002'),
('AT-X', '07/26/2000'),
('Yomiko Advertising', '07/11/1946'),
('VAP', '01/24/1981'),
('TV Tokyo', '04/12/1964'),
('Fuji TV', '03/02/1959'),
('CD Project Red', '03/06/2002');

SELECT * FROM Studyo

--Sezon Veri Giriþi

INSERT INTO Sezon(Sezon_Isim) VALUES 
('Ýlkbahar'),
('Yaz'),
('Sonbahar'),
('Kýþ');

SELECT * FROM Sezon

--Yazar Veri Giriþi

INSERT INTO Yazar(Yazar_Isim, Yazar_Soyisim, Yazar_Yas, Yazar_Cinsiyet) VALUES 
('Kinugasa', 'Shougo', '30', 'Bilinmiyor'),
('Rifujin na', 'Magonote', '39', 'Erkek'),
('Maruyama', 'Kugane', '32', 'Erkek'),
('Burak', 'SALCAN', '26', 'Erkek');

SELECT * FROM Yazar

--Novel Veri Giriþi

INSERT INTO Novel(Novel_Isim, Yazar_ID, Novel_Devam_Ediyor_Mu, Novel_Baslangic_Tarihi, Novel_Bitis_Tarihi, Novel_Bolum_Sayisi) VALUES
('Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', '1', 'False', '05/25/2015', '09/25/2019', '110'),
('Mushoku Tensei: Isekai Ittara Honki Dasu', '2', 'False', '01/23/2014','11/25/2022','330'),
('Overlord', '3', 'True', '07/30/2012', '', '178'),
('Burak Kitabý', '4', 'False', '01/25/2020', '01/26/2021', '331');

SELECT * FROM Novel

--Mangaka Veri Giriþi

INSERT INTO Mangaka(Mangaka_Isim, Mangaka_Soyisim, Mangaka_Yas, Mangaka_Cinsiyet) VALUES
('Shimabukuro' ,'Mitsutoshi' , '49', 'Erkek'),
('Miura' , 'Kentarou', '55', 'Erkek'),
('Togashi', 'Yoshihiro', '58', 'Erkek'),
('Kishimoto', 'Masashi', '50', 'Erkek'),
('Oda', 'Eiichiro', '49', 'Erkek'),
('Burak', 'SALCAN', '26', 'Erkek');

SELECT * FROM Mangaka

--Manga Veri Giriþi

INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', '17', 'True', '01/27/2016', '', '75', 'True', '1')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Mushoku Tensei: Isekai Ittara Honki Dasu', '17', 'True', '05/02/2014', '', '103', 'True', '2')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Overlord', '17', 'False', '11/26/2014', '05/25/2023', '78', 'True', '3')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Toriko', '12', 'False', '05/19/2008', '11/21/2016', '396', 'False', '5')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Berserk', '13', 'True', '08/25/1989', '', '376', 'False', '5')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Hunter x Hunter', '14', 'True', '03/03/1998', '', '400', 'False', '5')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Naruto', '15', 'False', '09/21/1999', '11/10/2014', '700', 'False', '5')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('One Piece', '16', 'True', '07/22/1997', '', '1127', 'False', '5')
INSERT INTO Manga(Manga_Isim, Mangaka_ID, Manga_Devam_Ediyor_Mu, Manga_Baslangic_Tarihi, Manga_Bitis_Tarihi, Manga_Bolum_Sayisi, Manga_Uyarlanma, Novel_ID) VALUES ('Burak Mangasý', '15', 'False', '09/15/1987', '11/22/2012', '1000', 'False', '5')
--('Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', '17', 'True', '01/27/2016', '', '75', 'True', '1'),
--('Mushoku Tensei: Isekai Ittara Honki Dasu', '17', 'True', '05/02/2014', '', '103', 'True', '2'),
--('Overlord', '17', 'False', '11/26/2014', '05/25/2023', '78', 'True', '3'),
--('Toriko', '12', 'False', '05/19/2008', '11/21/2016', '396', 'False', ''),
--('Berserk', '13', 'True', '08/25/1989', '', '376', 'False', ''),
--('Hunter x Hunter', '14', 'True', '03/03/1998', '', '400', 'False', ''),
--('Naruto', '15', 'False', '09/21/1999', '11/10/2014', '700', 'False', ''),
--('One Piece', '16', 'True', '07/22/1997', '', '1127', 'False', '');

SELECT * FROM Manga

--Anime Veri Giriþi

INSERT INTO Anime(Anime_Isim, Studyo_ID, Anime_Bolum_Sayisi, Sezon_ID, Anime_Devam_Ediyor_Mu, Anime_Baslangic_Tarihi, Anime_Bitis_Tarihi, Anime_Uyarlanma, Manga_ID, Novel_ID) VALUES
('Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', '1', '12', '2', 'False', '06/12/2017', '09/27/2017', 'True', '15', '1'),
('Mushoku Tensei: Isekai Ittara Honki Dasu', '2', '11', '4', 'False', '01/11/2021', '03/22/2021', 'True', '16', '2'),
('Overlord', '3', '13', '2', 'False', '07/07/2015', '09/29/2015', 'True', '17', '3'),
('Toriko', '4', '147', '1', 'False', '04/03/2011', '03/30/2014', 'True', '23', '5'),
('Kenpuu Denki Berserk', '5', '25', '3', 'False', '10/08/1997', '04/01/1998', 'True', '24', '5'),
('Hunter x Hunter (2011)', '5', '148', '3', 'False', '10/02/2011', '09/24/2014', 'True', '25', '5'),
('Naruto', '6', '220', '2', 'False', '10/03/2002', '02/08/2007', 'True', '26', '5'),
('One Piece', '7', '1120', '3', 'True', '10/20/1999', '', 'True', '27', '5'),
('Cyberpunk: Edgerunners', '8', '10', '2', 'False', '09/13/2022', '09/13/2022', 'False', '28', '5');

SELECT * FROM Anime

--Anime_Turleri Veri Giriþi 

INSERT INTO Anime_Turleri(Anime_ID, Tur_ID) VALUES
('1', '12'),
('1', '23'),
('1', '25'),
('2', '4'),
('2', '10'),
('2', '15'),
('3', '4'),
('3', '10'),
('3', '15'),
('4', '19'),
('4', '30'),
('4', '33'),
('5', '27'),
('5', '1'),
('5', '10'),
('6', '30'),
('6', '19'),
('6', '1'),
('7', '30'),
('7', '1'),
('7', '6'),
('8', '30'),
('8', '19'),
('8', '1'),
('9', '3'),
('9', '1');

SELECT * FROM Anime_Turleri

