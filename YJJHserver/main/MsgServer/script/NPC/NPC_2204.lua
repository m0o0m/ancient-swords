--表头	
function npctop1()  
  Hero:ActFun(101,"&&<0_若想加入峨眉派的话，可以去找掌门鸿陵。加入峨眉派后，可以向峨眉大师姐徐若锦学习战斗技能。>",0)
end

--功能选项
function npcmid10()
  Hero:ActFun(102,"[5]江陵 2220401",0)
end

function npcmid11()
  Hero:ActFun(102,"[5]开封 2220402",0)
end

function npcmid12()
  Hero:ActFun(102,"[22]回访洛神 2220403",0)
end
--表尾
function npcTail()
  Hero:ActFun(103,"",0)
end 
  
--转向选项1
function npctask1()
  Hero:ActFun(1003,"1001 91 116",0)
end

--转向选项2 
function npctask2()
if(Hero:ActFun(1001,"level >= 15",0) == true)then	
  Hero:ActFun(1003,"1006 92 65",0)
  else
  Hero:ActFun(127,"15级以上才能传送到开封，赶紧去升级吧",0)
end
end

function npctask3()
  Hero:ActFun(1003,"1001 78 87",0)
  Hero:ActFun(1080,"task end 14",1)
  Hero:ActFun(1080,"step = 27",1)
  Hero:ActFun(1080,"task accept 27",1)
end

--显示选项
if(gContext==2220400)then

--显示表头
 npctop1()
if(Hero:ActFun(1050,"1",626100) == false)then
if(Hero:ActFun(1080,"mask == 1",1) == false)then				--判断掩码
	if(Hero:ActFun(1080,"task has 0",1) == true)then				--判断任务链
		if(Hero:ActFun(1080,"step == 14",1) == true)then				--判断任务步骤
			if(Hero:ActFun(1080,"task state 0",1) == true)then				--判断任务状态
			elseif(Hero:ActFun(1080,"task state 3",1) == true)then				--判断任务状态
				npcmid12()				--显示任务完成选项
			end
		else
		  npcmid10()
		end
	else
		npcmid10()
	end
else
	npcmid10()
end
npcmid11()
end
 --显示表尾
 npcTail()
elseif(gContext==2220401)then
 npctask1()
elseif(gContext==2220402)then
 npctask2()
elseif(gContext==2220403)then
 npctask3()
end