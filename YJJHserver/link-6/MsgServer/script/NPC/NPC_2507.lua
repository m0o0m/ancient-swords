--表头	
function npctop1()  
  Hero:ActFun(101,"&&<0_人天福报非久计，苦海茫茫莫留连。>",0)
end

--功能选项
function npcmid10()
  Hero:ActFun(102,"[1]学习技能 2250701",0)
end


--表尾
function npcTail()
  Hero:ActFun(103,"",0)
end 
  
--转向选项1
function npctask1()
  Hero:ActFun(1046,"002",20)
end

--转向选项2 
function npctask2()
  Hero:ActFun(1003,"1001 88 88",0)
end



--显示选项
if(gContext==2250700)then
--显示表头
 npctop1()
 
-- npcmid10()
 
 --显示表尾
 npcTail()
elseif(gContext==2250701)then
 npctask1()
 elseif(gContext==2250702)then
 npctask2()
end


