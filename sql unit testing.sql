/*
create table t1 (
  eid bigint not null,
  userid int,
  a nvarchar(max),
  b nvarchar(max),
  c nvarchar(max)
)

create table t2 (
  eid bigint not null,
  a nvarchar(max)
)
*/

insert into t1
select 3, 2, 'd', 'a', null
--union all select 1, 0, 'b', null, 'hello'
--union all select 2, 1, 'c', null, 'world'

insert into t2
select 0, 'aaron'
union all select 1, 'john smith'

select * from usermap

