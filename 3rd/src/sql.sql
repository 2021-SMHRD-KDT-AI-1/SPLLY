drop table user_p cascade constraint;
drop table user_photo cascade constraint;
drop table recommend_list cascade constraint;
drop table song cascade constraint;
drop table playlist cascade constraint;
drop sequence photo_no;
drop sequence user_no;
drop sequence song_no;
drop sequence playlist_no;
drop sequence recommend_no;
drop table play_song_relation cascade constraint;
drop table sns_post cascade constraint;
drop sequence post_no;

create table user_p(
	user_no number,
	user_id varchar2(100) not null,
	user_name varchar2(100) not null,
	user_pw varchar2(100) not null,
	sns_link varchar2(100) null,
	constraint pk_user_p primary key(user_no)
);
select * from user_p
delete from user_p
---- user / user_no 시퀀스
create sequence user_no
increment by 1
start with 1
nocache;

---insert into user_p values(user_no.nextval, 'id', 'name', 'pw', 'link');
---delete from user_p where user_no=1

create table user_photo(
	photo_no number,            
	photo_img varchar2(100),	
	photo_tag varchar2(100),   
	user_no number,              
	constraint pk_user_photo primary key(photo_no),
	constraint user_photo_fk FOREIGN KEY(user_no) REFERENCES user_p(user_no)
); 

select * from user_photo
delete from USER_PHOTO
update USER_PHOTO set photo_tag = '여름' where photo_tag is null;
---- user photo / photo_no 시퀀스
create sequence photo_no
increment by 1
start with 1
nocache;

---insert into user_photo values(photo_no.nextval, 'img', '윤주,승령은지,가인', '2')
---delete from user_photo where photo_no=1

create table song(
	song_no number,
	song_name varchar2(500) not null,
	singers varchar2(500) not null,
	album_img varchar2(500) not null,
	constraint pk_song primary key(song_no)
);

---- song / song_no시퀀스
create sequence song_no
increment by 1
start with 1
nocache;

---insert into song values(song_no.nextval, '투썸', '플레이리스트', '모르겠다.')
---delete from user_photo where photo_no=1

create table playlist(
	playlist_no number not null,
	playlist_name varchar2(1000) not null,
	song_tag varchar2(1000) not null,
	user_no number null,
	constraint pk_playlist primary key(playlist_name),
	constraint fk_playlist foreign key(user_no) references user_p(user_no)
);

---- playlist / playlist_no 시퀀스
create sequence playlist_no
increment by 1
start with 1
nocache;

---insert into playlist values('10', '겨울', '윤주,승령,은지,가인','')
---delete from user_photo where photo_no=1

create table recommend_list(
	recommend_no number,
	photo_no number,
	playlist_no number not null,
	playlist_name varchar2(100),
	constraint pk_recommend_list primary key(recommend_no),
	constraint fk_recommend_list foreign key(photo_no) references user_photo(photo_no),
	constraint fk_recommend_listt foreign key(playlist_name) references playlist(playlist_name)
);

---- recommend_list / recommend_no 시퀀스

create sequence recommend_no
increment by 1
start with 1
nocache;

create table play_song_relation(
	relation_no number,
	playlist_name varchar2(1000),
	song_no number,
	constraint fk_play_song_relation foreign key(playlist_name) references playlist(playlist_name),
	constraint fk_play_song_relationn foreign key(song_no) references song(song_no)
);

create sequence relation_no
increment by 1
start with 1
nocache;


create table sns_post(
	post_no number,
	post_title varchar2(100) not null,
	contents varchar2(100) not null,
	user_id varchar2(100) not null,
	post_date date default sysdate not null,
	star_review float,
	like_counts number,
	photo_no number,
	constraint pk_sns_post primary key(post_no),
	constraint fk_sns_post foreign key(photo_no) references user_photo(photo_no)
);

---- sns_post / post_no 시퀀스
create sequence post_no
increment by 1
start with 1
nocache;

select * from playlist where playlist_name = '90년대생 그 시절 감성 모음';
select * from playlist
select * from SONG

select * from USER_PHOTO
	


	