--��ͷ	
function npctop1()  
  Hero:ActFun(101,"&&<0_���츣���Ǿüƣ��ຣããĪ������>",0)
end

--����ѡ��
function npcmid10()
  Hero:ActFun(102,"[1]ѧϰ���� 2250701",0)
end


--��β
function npcTail()
  Hero:ActFun(103,"",0)
end 
  
--ת��ѡ��1
function npctask1()
  Hero:ActFun(1046,"002",20)
end

--ת��ѡ��2 
function npctask2()
  Hero:ActFun(1003,"1001 88 88",0)
end



--��ʾѡ��
if(gContext==2250700)then
--��ʾ��ͷ
 npctop1()
 
-- npcmid10()
 
 --��ʾ��β
 npcTail()
elseif(gContext==2250701)then
 npctask1()
 elseif(gContext==2250702)then
 npctask2()
end

