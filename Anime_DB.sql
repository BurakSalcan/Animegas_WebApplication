CREATE DATABASE Anime_DB
GO
USE Anime_DB
GO

CREATE TABLE Tur
(
	Tur_ID int IDENTITY (1,1),
	Tur_Isim NVARCHAR(100) NOT NULL,
	CONSTRAINT pk_Tur PRIMARY KEY(Tur_ID)
)

GO

CREATE TABLE Studyo
(
	Studyo_ID int IDENTITY (1,1),
	Studyo_Isim NVARCHAR(100) NOT NULL,
	Kurulus_Tarihi DATE NOT NULL,
	CONSTRAINT pk_Studyo PRIMARY KEY(Studyo_ID)
)

GO

CREATE TABLE Sezon
(
	Sezon_ID int IDENTITY (1,1),
	Sezon_Isim NVARCHAR (100) NOT NULL,
	CONSTRAINT pk_Sezon PRIMARY KEY(Sezon_ID)
)

GO

CREATE TABLE Yazar
(
	Yazar_ID int IDENTITY (1,1),
	Yazar_Isim NVARCHAR (100) NOT NULL,
	Yazar_Soyisim NVARCHAR (100) NOT NULL,
	Yazar_Yas tinyint NOT NULL,
	Yazar_Cinsiyet NVARCHAR (100) NOT NULL,
	CONSTRAINT pk_Yazar PRIMARY KEY(Yazar_ID)
)

GO

CREATE TABLE Novel
(
	Novel_ID int IDENTITY (1,1),
	Novel_Isim NVARCHAR (200) NOT NULL,
	Yazar_ID int,
	Novel_Devam_Ediyor_Mu bit NOT NULL,
	Novel_Baslangic_Tarihi DATE NOT NULL,
	Novel_Bitis_Tarihi DATE,
	Novel_Bolum_Sayisi smallint NOT NULL,
	CONSTRAINT pk_Novel PRIMARY KEY(Novel_ID),
	CONSTRAINT fk_novelYazarID FOREIGN KEY(Yazar_ID) REFERENCES Yazar(Yazar_ID)
)

GO

CREATE TABLE Mangaka
(
	Mangaka_ID int IDENTITY (1,1),
	Mangaka_Isim NVARCHAR (100) NOT NULL,
	Mangaka_Soyisim NVARCHAR (100) NOT NULL,
	Mangaka_Yas tinyint NOT NULL,
	Mangaka_Cinsiyet NVARCHAR (100) NOT NULL,
	CONSTRAINT pk_Mangaka PRIMARY KEY(Mangaka_ID)
)

GO

CREATE TABLE Manga
(
	Manga_ID int IDENTITY (1,1),
	Manga_Isim NVARCHAR (200) NOT NULL,
	Mangaka_ID int,
	Manga_Devam_Ediyor_Mu bit not null,
	Manga_Baslangic_Tarihi DATE NOT NULL,
	Manga_Bitis_Tarihi DATE,
	Manga_Bolum_Sayisi smallint NOT NULL,
	Manga_Uyarlanma bit NOT NULL,
	Novel_ID int,
	CONSTRAINT pk_Manga PRIMARY KEY(Manga_ID),
	CONSTRAINT fk_mangaMangakaID FOREIGN KEY(Mangaka_ID) REFERENCES Mangaka(Mangaka_ID),
	CONSTRAINT fk_mangaNovelID FOREIGN KEY(Novel_ID) REFERENCES Novel(Novel_ID)
)

GO

CREATE Table Anime
(
	Anime_ID int IDENTITY (1,1),
	Anime_Isim NVARCHAR (200) NOT NULL,
	Studyo_ID int,
	Anime_Bolum_Sayisi smallint NOT NULL,
	Sezon_ID int,
	Anime_Devam_Ediyor_Mu bit,
	Anime_Baslangic_Tarihi DATE NOT NULL,
	Anime_Bitis_Tarihi DATE,
	Anime_Uyarlanma bit NOT NULL,
	Manga_ID int,
	Novel_ID int,
	CONSTRAINT pk_Anime PRIMARY KEY(Anime_ID),
	CONSTRAINT fk_animeStudyoID FOREIGN KEY(Studyo_ID) REFERENCES Studyo(Studyo_ID),
	CONSTRAINT fk_animeSezonID FOREIGN KEY(Sezon_ID) REFERENCES Sezon(Sezon_ID),
	CONSTRAINT fk_animeMangaID FOREIGN KEY(Manga_ID) REFERENCES Manga(Manga_ID),
	CONSTRAINT fk_animeNovelID FOREIGN KEY(Novel_ID) REFERENCES Novel(Novel_ID)
)

GO

CREATE TABLE Anime_Turleri
(
	Anime_ID int,
	Tur_ID int,
	CONSTRAINT fk_animeTurleriAnimeID FOREIGN KEY(Anime_ID) REFERENCES Anime(Anime_ID),
	CONSTRAINT fk_nimeTurleriTurID FOREIGN KEY(Tur_ID) REFERENCES Tur(Tur_ID)
)

