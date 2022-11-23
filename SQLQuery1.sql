/*
Viết chương trình xem xét có tăng lương cho nhân viên hay không. Hiển thị cột thứ 1 là
TenNV, cột thứ 2 nhận giá trị
o “TangLuong” nếu lương hiện tại của nhân viên nhở hơn trung bình lương trong
phòng mà nhân viên đó đang làm việc.
o “KhongTangLuong “ nếu lương hiện tại của nhân viên lớn hơn trung bình lương
trong phòng mà nhân viên đó đang làm việc.
*/
select iif(luong>=ltb,'Khong tang luong','Tang loung')
as thuong,tennv,luong,ltb 
from 
(select tennv,luong,ltb from NHANVIEN,
(select phg, avg(luong) as 'ltb' from NHANVIEN group by phg) as temp
where NHANVIEN.PHG= temp.PHG) as adc  
select * from NHANVIEN  
select phg, avg(luong) as 'ltb' from NHANVIEN group by phg
select iif(luong<=ltb,'Nhan vien','Truong phong')
as thuong,tennv,luong,ltb 
from 
(select tennv,luong,ltb from NHANVIEN,
(select phg, avg(luong) as 'ltb' from NHANVIEN group by phg) as temp
where NHANVIEN.PHG= temp.PHG) as adc  
select * from NHANVIEN  
select phg, avg(luong) as 'ltb' from NHANVIEN group by phg



select tennv= case Phai
when 'nam' then 'Mr....'+[TenNV]
when 'nu'  then 'Mrs...'+[TenNV]
else 'khongco'
end
from NHANVIEN
/*Viết chương trình tính thuế mà nhân viên phải đóng theo công thức:
o 0<luong<25000 thì đóng 10% tiền lương
o 25000<luong<30000 thì đóng 12% tiền lương
o 30000<luong<40000 thì đóng 15% tiền lương
o 40000<luong<50000 thì đóng 20% tiền lương
o Luong>50000 đóng 25% tiền lương*/
select tennv,luong,thue=case 
when luong between 0 and 25000 then luong*0.1
when luong between 25000 and 300000 then luong*0.12
when luong between 30000 and 400000 then luong*0.15
when luong between 25000 and 300000 then luong*0.2
else luong*0.25 
end
from NHANVIEN
/*Cho biết thông tin nhân viên (HONV, TENLOT, TENNV) có MaNV là số chẵn.*/
select * from NHANVIEN 
declare @dem int=2;
while @dem <(select count (manv) from NHANVIEN)
 begin
  select *from NHANVIEN where cast(manv as int)=@dem
  set @dem=@dem +2
 end 