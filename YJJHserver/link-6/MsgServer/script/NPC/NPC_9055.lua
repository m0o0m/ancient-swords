--��ͷ
function npctop1()
  Hero:ActFun(101,"&&<0_Ҫ�뿪���������ʱ���ҡ�>",0)
end

--����ѡ��
function npcmid10()
  Hero:ActFun(102,"[5]�뿪�Ǹ��� 2905501",0)
end

--��β
function npcTail()
  Hero:ActFun(103,"",0)
end

--ת��ѡ��
function npctask1()
  --Hero:ActFun(1003,"1006 50 98",0)
  Hero:LeaveWarGame()
end



--��ʾѡ��
if(gContext==2905500)then

--��ʾ��ͷ
npctop1()
npcmid10()

 --��ʾ��β
npcTail()

elseif(gContext==2905501)then
 npctask1()

end
