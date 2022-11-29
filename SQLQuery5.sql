
select *from Xuat;

declare @TienBan table (TienBan int)
insert into @TienBan
	 select TienBan,SoLuong
	where PHG in (select MAPHG from PHONGBAN where TENPHG=N'Nghiên cứu '));
	from @TienBan