sel	ect *from PHANCONG;
select MA_NVIEN,MADA,STT, 
	cast (THOIGIAN as DECIMAL (5,1)) as 'THOI GIAN' from PHANCONG;
select MA_NVIEN,MADA,STT, 
	convert ( DECIMAL (5,1),THOIGIAN ) as 'THOI GIAN' from PHANCONG;