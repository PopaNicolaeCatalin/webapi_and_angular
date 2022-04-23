
-- country insert 
insert into country(country_name) values ('Finland');
insert into country(country_name) values ('Germany');
insert into country(country_name) values ('United States');
insert into country(country_name) values ('Netherlands');
insert into country(country_name) values ('Spain');

-- finland port insert 
insert into port(port_name,port_country_id) values ('Hamina',1);
insert into port(port_name,port_country_id) values ('Helsinki',1);
insert into port(port_name,port_country_id) values ('Kokkola',1);
insert into port(port_name,port_country_id) values ('Mustola',1);

-- germany port insert 

insert into port(port_name,port_country_id) values ('Hamburg',2);
insert into port(port_name,port_country_id) values ('Wilhelmshaven',2);
insert into port(port_name,port_country_id) values ('Duisburg',2);

-- us port insert 

insert into port(port_name,port_country_id) values ('Houston',3);
insert into port(port_name,port_country_id) values ('South Louisiana',3);
insert into port(port_name,port_country_id) values ('Detroit',3);

-- netherlands port insert

insert into port(port_name,port_country_id) values ('Rotterdam',4);
insert into port(port_name,port_country_id) values ('Amsterdam',4);

--insert ships
insert into ship(ship_name,ship_speed_max) values ('MSC Diana',16);
insert into ship(ship_name,ship_speed_max) values ('MV Barzan',14.3);
insert into ship(ship_name,ship_speed_max) values ('MOL Triumph',14.7);
insert into ship(ship_name,ship_speed_max) values ('MOL Truth',14.3);
insert into ship(ship_name,ship_speed_max) values ('Madrid Maersk',14.2);
insert into ship(ship_name,ship_speed_max) values ('COSCO Shipping Universe',15.2);
insert into ship(ship_name,ship_speed_max) values ('OOCL Hong Kong',15.5);
insert into ship(ship_name,ship_speed_max) values ('Monaco Maersk',13.4);
insert into ship(ship_name,ship_speed_max) values ('Marseille Maersk',13.5);
insert into ship(ship_name,ship_speed_max) values ('Murcia Maersk',13.9);
insert into ship(ship_name,ship_speed_max) values ('Mumbai Maersk',13.7);
insert into ship(ship_name,ship_speed_max) values ('Maastricht Maersk',13.6);
insert into ship(ship_name,ship_speed_max) values ('OOCL United Kingdom',12.8);
insert into ship(ship_name,ship_speed_max) values ('OOCL Indonesia',15.3);
insert into ship(ship_name,ship_speed_max) values ('CMA CGM Sorbonne',13.4);
insert into ship(ship_name,ship_speed_max) values ('CMA CGM Trocadero',13.2);
insert into ship(ship_name,ship_speed_max) values ('CMA CGM Concorde',12.8);
insert into ship(ship_name,ship_speed_max) values ('CMA CGM Louvre',14.5);
insert into ship(ship_name,ship_speed_max) values ('CMA CGM Palais Royal',13.3);


------------------------- voyage insert
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (2,10,'2021-06-05',12,'2021-07-01');
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (4,7,'2021-09-12',9,'2020-08-29');
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (2,3,'2022-01-03',8,'2022-01-10');
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (6,6,'2022-03-03',3,'2022-03-17');
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (9,9,'2022-02-20',12,'2022-03-20');
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (1,10,'2022-03-01',12,'2022-03-13');
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (18,12,'2022-03-14',6,'2022-03-21');
insert into voyage(voyage_ship_id,voyage_departure_port,voyage_start,voyage_arrival_port,voyage_end)
VALUES (1,12,'2022-03-15',9,'2022-03-25');

