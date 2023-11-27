use master;

go

drop database if exists studio;

go

create database studio;

go

use studio;

create table treneri (
sifra int not null primary key identity (1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
oib char (11),
iban varchar (50),
telefon char(10) not null
);

create table vjezbaci (
sifra int not null primary key identity (1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
telefon char (10),
brojupisnoglista varchar (20)
);

create table programi (
sifra int not null primary key identity (1,1),
naziv varchar (50) not null,
tjednasatnica int,
cijena decimal (18,2),
trener int
);

create table grupe (
sifra int not null primary key identity (1,1),
naziv varchar (50),
program int not null,
datumpocetka datetime,
maksimalanbrojvjezbaca int
);


create table vjezbacixgrupe (
vjezbac int not null,
grupa int not null
);

alter table grupe add foreign key (program) references programi (sifra);

alter table vjezbacixgrupe add foreign key (vjezbac) references vjezbaci (sifra);

alter table vjezbacixgrupe add foreign key (grupa) references grupe (sifra);

alter table programi add foreign key (trener) references treneri (sifra);