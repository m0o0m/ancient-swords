--表头
function npctop1()
  Hero:ActFun(101,"&&<0_我曾听说，开封市集有一名长相与我十分相似的姑娘，可惜一直无缘得见……�>",0)
end

--功能选项
function npcmid01()
  Hero:ActFun(102,"[1]白虎 2904801",0)
end

function npcmid02()
  Hero:ActFun(102,"[22]帮派传书 2904802",0)
end
--表尾
function npcTail()
  Hero:ActFun(103,"",0)
end

--转向选项1
function npctask1()

  Hero:ActFun(101,"欢迎回堂",0)
  Hero:ActFun(103,"",0)
end

--转向选项2
function npctask2()

	if(Hero:ActFun(1080,"step == 168",20001) == true)then
		Hero:ActFun(1046,"20001 168",3)
	elseif(Hero:ActFun(1080,"step == 172",20001) == true)then
		Hero:ActFun(1046,"20001 172",3)

	end

end


--显示选项
if(gContext==2904800)then
--显示表头
 npctop1()


npcmid01()

if(Hero:ActFun(1080,"task state 3",20001) == true)then
if(Hero:ActFun(1080,"step == 168",20001) == true)then
		npcmid02()
	elseif(Hero:ActFun(1080,"step == 172",20001) == true)then
		npcmid02()
end
end
 --显示表尾
 npcTail()
elseif(gContext==2904801)then
 npctask1()

elseif(gContext==2904802)then
 npctask2()
end

