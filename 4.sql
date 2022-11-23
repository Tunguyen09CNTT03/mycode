select *from NHANVIEN;

select 
upper(HONV),
lower(TENLOT),tennv,
lower(left(TENNV,1))+upper(SUBSTRING(TENNV,2,1))+lower(SUBSTRING(TENNV,3,LEN(tennv))),
dchi,
CHARINDEX(' ' ,DCHI),
CHARINDEX(',' ,dchi),
SUBSTRING(dchi , charindex (' ',DCHI)+1,charindex (',',dchi)+charindex (' ',DCHI)-1)
from NHANVIEN