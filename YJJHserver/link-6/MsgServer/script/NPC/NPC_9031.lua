--表头
function npctop1()
Hero:ActFun(101,"&&<0_我的獠牙无比尖锐，想要赶走我？除非先打败我的手下！>",0)
end

function npcmid10()
Hero:ActFun(102,"[1]挑战猪大牙 2903101",0)
end

--表尾
function npcTail()
Hero:ActFun(103,"",0)
end

--转向任务3
--传出

function npctask1()
local phase=Instance:GetOperateData(0)
--local phase1=(phase/1000)%10
local phase2=Hero:CulData(1,phase,1000)
local phase1=Hero:CulData(2,phase2,10)
  if(phase1==0)then
		--if(Hero:ActFun(1102,"teamlead 0 0",0) == true)then
				if(Instance:HasMonster(4110,1) == false)then
						if(Instance:HasMonster(4140,1) == false)then
								if(Instance:HasMonster(4380,1) == false)then
										if(Instance:HasMonster(4410,1) == false)then
												if(Instance:HasMonster(4440,1) == false)then
														if(Instance:HasMonster(4470,1) == false)then
																if(Hero:ActFun(1021,"",0) == true)then
																		if(Instance:HasMonster(4230,1) == false)then
																				Hero:ActFun(101,"&&<0_我的獠牙无比尖锐，想要赶走我？除非先打败我的手下！>",0)
																				Hero:ActFun(103,"",0)
																		else
																				if(Instance:GetInstanceType() == 14)then
																				Instance:OperateInstanceData(0,"+= 1000")
																				Instance:DeleteMonster(4230)

																				Instance:CreateMonsterInInstance(4140,76,27)
																				Instance:CreateMonsterInInstance(4140,71,31)
																				Instance:CreateMonsterInInstance(4140,68,29)
																				Instance:CreateMonsterInInstance(4140,63,30)
																				Instance:CreateMonsterInInstance(4140,69,38)
																				Instance:CreateMonsterInInstance(4140,59,39)
																				Instance:CreateMonsterInInstance(4140,60,46)
																				Instance:CreateMonsterInInstance(4140,70,30)
																				Instance:CreateMonsterInInstance(4140,38,85)
																				Instance:CreateMonsterInInstance(4140,66,25)
																				Instance:CreateMonsterInInstance(4140,27,73)
																				Instance:CreateMonsterInInstance(4140,62,37)
																				Instance:CreateMonsterInInstance(4140,41,72)
																				Instance:CreateMonsterInInstance(4140,64,40)
																				Instance:CreateMonsterInInstance(4140,55,48)
																				Instance:CreateMonsterInInstance(4140,31,80)
																				Instance:CreateMonsterInInstance(4140,58,45)
																				Instance:CreateMonsterInInstance(4140,43,66)
																				Instance:CreateMonsterInInstance(4140,36,79)
																				Instance:CreateMonsterInInstance(4140,26,80)
																				Instance:CreateMonsterInInstance(4140,24,73)
																				Instance:CreateMonsterInInstance(4140,72,33)
																				Instance:CreateMonsterInInstance(4140,54,42)
																				Instance:CreateMonsterInInstance(4140,35,68)
																				Instance:CreateMonsterInInstance(4140,38,70)
																				Instance:CreateMonsterInInstance(4140,31,67)
																				Instance:CreateMonsterInInstance(4140,40,75)
																				Instance:CreateMonsterInInstance(4140,33,76)
																				Instance:CreateMonsterInInstance(4140,28,74)
																				Instance:CreateMonsterInInstance(4140,37,83)
																				Instance:CreateMonsterInInstance(4140,31,84)
																				end
																		end
																end
														else
														Hero:ActFun(101,"&&<0_等你把猎场清理干净再来找我！>",0)
														Hero:ActFun(103,"",0)
														end
												else
												Hero:ActFun(101,"&&<0_等你把猎场清理干净再来找我！>",0)
												Hero:ActFun(103,"",0)
												end
										else
										Hero:ActFun(101,"&&<0_等你把猎场清理干净再来找我！>",0)
										Hero:ActFun(103,"",0)
										end
								else
								Hero:ActFun(101,"&&<0_等你把猎场清理干净再来找我！>",0)
								Hero:ActFun(103,"",0)
								end
						else
						Hero:ActFun(101,"&&<0_等你把猎场清理干净再来找我！>",0)
						Hero:ActFun(103,"",0)
						end
				else
				Hero:ActFun(101,"&&<0_等你把猎场清理干净再来找我！>",0)
				Hero:ActFun(103,"",0)
				end
		else
		Hero:ActFun(127,"队伍已经进行过操作，请前往杀怪",0)
		Hero:ActFun(103,"",0)
		end
end

--显示选项
if(gContext==2903100)then
	if(Instance:HasMonster(4140,1) == false)then
		if(Instance:HasMonster(4230,1) == false)then
		Hero:ActFun(101,"&&<0_你已经打败了我们，去挑战其他的野兽首领吧！>",0)
		Hero:ActFun(103,"",0)
		else
		npctop1()
		npcmid10()
		--显示表尾
		npcTail()
		end
	else
	Hero:ActFun(101,"&&<0_等你把猎场清理干净再来找我！>",0)
	Hero:ActFun(103,"",0)
end

elseif(gContext==2903101)then
 npctask1()
elseif(gContext==2903102)then
 npctask2()
end
