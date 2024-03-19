use school_library;
create table uyeler(
uyeNo int not null Primary Key identity(1,1),
uyeAdi nvarchar(50) not null,
uyeSoyadi nvarchar(50) not null,
eposta nvarchar(100) not null,
cinsiyet char(2) not null,
telefon int not null,
);


use school_library;
create table adresler(
adresNo int not null Primary Key identity(1,1),
Sehir nvarchar(50),
Mahalle nvarchar(100),
BinaNo int,
Cadde nvarchar(200),
ulke nvarchar(50),
postakodu int,
);


ALTER TABLE UYELER ADD adresNo int
constraint FK_uyeler_adres
FOREIGN KEY (adresNo)
references ADRESLER (adresNo);


create table kutuphane(
kutuphaneNo int not null identity(1,1) PRIMARY KEY,
kutuphaneIsmi nvarchar(150),
aciklama nvarchar(500),
adresNo int constraint FK_adresler_kutuphane
FOREIGN KEY(adresNo) references adresler(adresNo),
);
select*from kutuphane