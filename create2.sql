drop table if exists url_lists4;
create table url_lists4 (
  id int not null primary key,
  url text not null
);
create index ix_url_url_lists4 on url_lists4(url);
  
drop table if exists keywords4;
create table keywords4 (
  id int not null primary key,
  name varchar(40) not null,
  url text not null
);

create index ix_url_keywords4 on keywords4(url);
create index ix_name_keywords4 on keywords4(name);
  

\copy url_lists4(id,url) from 'sample.txt' with delimiter ',';
\copy keywords4(id,name,url) from 'keyword.txt' with delimiter ',';

vacuum url_lists4;
vacuum keywords4;
analyze url_lists4;
analyze keywords4;
