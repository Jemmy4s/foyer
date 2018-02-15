CREATE TABLE produit {
  id_prod  serial primary key,
  nom     text not null,
  prix    integer not null
};
CREATE TABLE  Societe {
  id_soc serial primary key,
  mail varchar(100) unique,
  site_web varchar(100),
};
CREATE TABLE Client {
  id_client serial primary key,
  nom   varchar (50) not null,
  num_tel varchar (20)not null,
  mail  varchar(100) unique,
  soc integer References Societe(id_soc)
};

CREATE TABLE location {
  id_loc serial PRIMARY key,
  date_location date,
  paiment bool,
  prod_louer References produit(id_prod),
  client_loue References Client(id_client)
};
