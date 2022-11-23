select * from PHANCONG;

select mada,
	sum(thoigian) as 'Tong so gio lam viec ' 
	/*Ceiling(sum(thoigian)) as 'Tong so gio lam viec ',*/
	/*Floor(sum(thoigian)) as 'Tong so gio lam viec ',*/
	/*Round(sum(thoigian), 2) as 'Tong so gio lam viec ',*/
	from PHANCONG group by MADA;
select mada,
	/*sum(thoigian) as 'Tong so gio lam viec ' */
	Ceiling(sum(thoigian)) as 'Tong so gio lam viec -use ceiling'
	/*Floor(sum(thoigian)) as 'Tong so gio lam viec ',*/
	/*Round(sum(thoigian), 2) as 'Tong so gio lam viec ',*/
	from PHANCONG group by MADA;
select mada,
	/*sum(thoigian) as 'Tong so gio lam viec '*/ 
	/*Ceiling(sum(thoigian)) as 'Tong so gio lam viec ',*/
	Floor(sum(thoigian)) as 'Tong so gio lam viec -use floor '
	/*Round(sum(thoigian), 2) as 'Tong so gio lam viec ',*/
	from PHANCONG group by MADA;
select mada,
	/*sum(thoigian) as 'Tong so gio lam viec '*/
	/*Ceiling(sum(thoigian)) as 'Tong so gio lam viec ',*/
	/*Floor(sum(thoigian)) as 'Tong so gio lam viec ',*/
	Round(sum(thoigian), 2) as 'Tong so gio lam viec - use round '
	from PHANCONG group by MADA;
select a.mada,b.TENDEAN,
	sum(thoigian) as 'Tong so gio lam viec ' 
	/*Ceiling(sum(thoigian)) as 'Tong so gio lam viec ',*/
	/*Floor(sum(thoigian)) as 'Tong so gio lam viec ',*/
	/*Round(sum(thoigian), 2) as 'Tong so gio lam viec ',*/
	from PHANCONG a inner join DEAN b on a.MADA=b.MADA
	group by a.MADA,b.TENDEAN;

select HONV,TENLOT,TENNV,round(LUONG,2) as 'lương' from NHANVIEN where luong >(
select round(AVG(luong),2) from NHANVIEN 
	where PHG in (select MAPHG from PHONGBAN where TENPHG=N'Nghiên cứu '));


