select pnum,pname,page||'세',upper(pblood)||'형' pblood,
to_char(ipsaday,'yyyy-mm-dd hh:mi') ipsaday from person;

select * from person;

select pnum,pname,page||'세' page,upper(pblood)||'형' pblood,
				to_char(ipsaday,'yyyy-mm-dd hh:mi') ipsaday from person order by pnum asc