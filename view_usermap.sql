alter view usermap as
select t1.eid, t1.userid, t1.a, b, c, t2.a as [d] from t1
inner join t2 on userid = t2.eid
go

-- unit tests
-- that no entries get populated where a user is null
-- would fail if join in full outer, instead of inner
if (select count(eid) from usermap where d is null) <> 0
print 'fail'