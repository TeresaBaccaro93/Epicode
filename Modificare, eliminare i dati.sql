/*È necessario implementare uno schema che consenta di gestire le anagrafiche degli store di unʼipotetica azienda.
Uno store è collocato in una precisa area geografica. 
In unʼarea geografica possono essere collocati store diversi.*/

use new;

CREATE TABLE Store (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Data_Apertura DATE NOT NULL,
    Indirizzo VARCHAR(255),
    Telefono VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Region (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Città VARCHAR(100) NOT NULL,
    Regione VARCHAR(100),
    Area_Geografica VARCHAR(100)
);

INSERT INTO Store (Nome, Data_Apertura, Indirizzo,Telefono,Email) VALUES
('Store Milano', '2020-05-15', 'Via Torino 10','02-12345678','storemilano@hotmail.it'),
('Store Roma', '2019-09-01', 'Via Roma 25','06-98765432','storeroma@gmail.com'),
('Store Napoli', '2021-03-20', 'Via Napoli 5','081-5551234','storenapoli@hotmail.it'),
('Store Torino', '2018-11-10', 'Corso Torino 50','011-4445678','storetorino@gmail.com');

INSERT INTO Region (Città, Regione, Area_Geografica) VALUES
('Milano', 'Lombardia', 'Nord Italia'),
('Roma', 'Lazio', 'Centro Italia'),
('Napoli', 'Campania', 'Sud Italia'),
('Torino', 'Piemonte', 'Nord Italia'),
('Palermo', 'Sicilia', 'Isole');

set sql_safe_updates=0;

start transaction;

UPDATE Store
SET Telefono = '02-11112222'
WHERE Nome = 'Store Milano';

UPDATE Store
SET Data_Apertura = '2021-03-22'
where Nome = 'Store Napoli';

DELETE FROM Store
WHERE Nome = 'Store Torino';

select * from store;
rollback

