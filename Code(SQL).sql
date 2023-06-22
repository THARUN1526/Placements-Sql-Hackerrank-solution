select temp1.sn
from (select S.ID si,S.Name sn,P.Salary ps from Students S join Packages P on S.ID=P.ID) 
temp1 join (select FF.ID fi,FF.Friend_ID fd,PP.Salary pps from Friends FF join Packages PP on FF.Friend_ID=pp.ID) 
temp2 on temp1.si=temp2.fi and temp1.ps<temp2.pps
order by temp2.pps asc;