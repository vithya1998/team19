
create table dupli13(id number(10),name varchar2(30));

insert into dupli13 values(100,'surya');
insert into dupli13 values(101,'abhi');
insert into dupli13 values(102,'suraj');


select * from dupli13;

desc dupli13;

select rownum,id,name from dupli13;

select rownum,id,name from dupli13 where rownum=2 order by id;

select id,name from dupli13 where rownum<6 order by id;

select rowid,id,name from dupli13;

select rowid,id,name from dupli13 d where rowid=(select max(rowid) from dupli13 s where s.id=d.id and s.name=d.name);

select rowid,id,name from dupli13 d where rowid=(select min(rowid) from dupli13 s where s.id=d.id and s.name=d.name);


create table team_19(id number(10) primary key,name char(20));

--sequence
-- create sequence sequence_name start with num increment by 1 cache 50;
create sequence seq_19 start with 100 increment by 1 cache 50;

select * from team_19;

insert into team_19 values(seq_19.nextval,'suma');
insert into team_19 values(seq_19.nextval,'vijay');
insert into team_19 values(seq_19.nextval,'shobha');
insert into team_19 values(seq_19.nextval,'ravi');
insert into team_19 values(seq_19.nextval,'shobha');

select seq_19.nextval from dual;
select seq_19.currval from dual;

drop sequence seq_13;

create table team_12(id number(10) primary key,name char(20));

create sequence seq_12 start with 102 increment by 2 cache 50;


insert into team_12 values(102,'mahesh');
insert into team_12 values(104,'rajesh');
insert into team_12 values(seq_12.nextval,'suraj');


insert into team_12 values(seq_12.nextval,'mon');

select * from team_12;

--<seq_name> CURRVAL :Returns the current value of sequence.
--<seq_name> NEXTVAL :Returns the next value of the sequence.Also increments the value.

Select seq_12.nextval from DUAL;

