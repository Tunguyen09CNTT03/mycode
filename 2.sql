select *from NHANVIEN;
select *from PHONGBAN;
select PHG, convert (decimal (15,2), avg(luong),1) 
	from NHANVIEN 
	group by PHG;


select PHG,format( convert (decimal (15,2), avg(luong),1),'N','vi-VN') 
	from NHANVIEN 
	group by PHG;


select PHG, convert (varchar (15),cast( avg(luong) as money),1) 
	from NHANVIEN 
	group by PHG;