use master;

go

drop database if exists zupanija;

go 

create database zupanija;

go


use zupanija;


create table zupanije (
sifra int not null primary key identity (1,1),
naziv varchar (50),
zupan int
);

create table zupani (
sifra int not null primary key identity (101,1),
ime varchar (50),
prezime varchar (50)
);

create table opcine (
sifra int not null primary key identity (201,1),
zupanija int not null,
naziv varchar (50)
);

create table mjesta (
sifra int not null primary key identity (301,1),
opcina int,
naziv varchar(50)
);

insert into zupani (ime, prezime)
values
('Ivan','Anušić'),
('Damir','Dekanić'),
('Ivan','Celjak')
;

select * from zupani

insert into zupanije (naziv, zupan)
values
('Osiječko-baranjska', 101),
('Vukovarsko-srijemska', 102),
('Sisačko-moslavačka', 103)
;

insert into opcine (naziv,zupanija)
values
('Bilje', 1),
('Čeminac', 1),
('Ivankovo', 2),
('Borovo', 2),
('Dvor', 3),
('Topusko', 3)
;

delete from opcine where sifra=202;

delete from opcine where sifra between 203 and 205;