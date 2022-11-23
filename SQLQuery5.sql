
select *from PHANCONG;
select *from DEAN;

declare @Thongke table (MaDa int, Thoigian float)
insert into @Thongke 
	select MADA, sum(thoigian) as 'Tong thoi gian'
	from PHANCONG 
	group by MADA;

select TENDEAN,cast(Thoigian as varchar (10)) as 'Tong thoi gian ' 
	from @Thongke a  inner join DEAN b on a.MaDa=b.MADA
select TENDEAN,convert (varchar (10),Thoigian) as 'Tong thoi gian ' 
	from @Thongke a  inner join DEAN b on a.MaDa=b.MADA

select TENDEAN,cast(Thoigian as decimal (5,2)) as 'Tong thoi gian ' 
	from @Thongke a  inner join DEAN b on a.MaDa=b.MADA
select TENDEAN,convert (decimal (5,2),Thoigian) as 'Tong thoi gian ' 
	from @Thongke a  inner join DEAN b on a.MaDa=b.MADA