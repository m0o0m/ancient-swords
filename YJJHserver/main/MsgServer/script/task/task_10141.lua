--接受任务操作
function npcAct1()

	if(Hero:ActFun(1080,"mask == 2",2) == true)then				--判断掩码
	 
	
	elseif(Hero:ActFun(1080,"task has 0",2) == true)then				--判断任务链
	
		if(Hero:ActFun(1080,"step == 11",2) == true)then				--判断任务步骤
	

	  	if(Hero:ActFun(1080,"task state 0",2) == true)then				--判断任务状态
		
			
			 Hero:ActFun(1080,"task accept 11",2)				--设置任务状态为1
			else
			 Hero:ActFun(127,"已经接受了任务",0)				--显示系统文字
		  end
		else
	 	 --显示系统文字
	 	 Hero:ActFun(127,"已经完成了任务",0)
		end
	else
--	 Hero:ActFun(1080,"task new 1",2)				--建立此任务
	 Hero:ActFun(1080,"task accept 11",2)				--设置任务状态为1
	end

end


--完成任务操作
function npcAct2()

	if(Hero:ActFun(1080,"mask == 2",2) == true)then				--判断掩码

	
	elseif(Hero:ActFun(1080,"task has 0",2) == true)then				--判断任务链

	
	 	if(Hero:ActFun(1080,"step == 11",2) == true)then				--判断任务步骤

	  
	   	if(Hero:ActFun(1080,"task state 0",2) == true)then				--判断任务状态
	     Hero:ActFun(127,"任务未接受",0)				--显示系统文字
	     
	    --判断任务是否已完成，已完成则进入下一步
	   	elseif(Hero:ActFun(1080,"task state 2",2) == true)then				--判断任务状态
	     Hero:ActFun(127,"任务已经完成了",0)				--显示系统文字

	  	elseif(Hero:ActFun(1080,"task state 3",2) == true)then				--判断任务状态
	  	if(Hero:ActFun(508,"47 1",0) == true)then
	     Hero:ActFun(1080,"task end 11",2)				--设置第一步状态为完成
	     Hero:ActFun(1080,"step += 1",2)				--设置任务步骤数加1
	     Hero:ActFun(1001,"exp += 6000",0)			--给经验
	     --Hero:ActFun(1001,"petexp += 3000",0)			--给宠物经验
	     Hero:ActFun(1001,"money += 1584",2)			--给碎银
	     Hero:ActFun(519,"1 1",210902)			--给装备
	     else
  				Hero:ActFun(127,"背包已满，请先清理背包",0)
  			end
   Hero:ActFun(1046,"2 12",3)					     --马上接取下一个，暂时不用

	   	elseif(Hero:ActFun(1080,"task state 1",1) == true)then					    --判断任务是否满足完成条件，不满足则进入下一步 
	     Hero:ActFun(127,"任务条件不足",0)					   	--显示系统文字
	   	else
	     Hero:ActFun(127,"任务已经完成过了",0)					   	 --显示系统文字
	   	end
	 	else
	   Hero:ActFun(127,"未接受任务",0)						 --显示系统文字
	 	end
	else
	 Hero:ActFun(127,"未接受任务",0)					 --显示系统文字
	end
	
end


--取消任务操作
function npcAct3()

	if(Hero:ActFun(1080,"mask == 2",2) == true)then					--判断掩码，有掩码则进入下一步
 	 Hero:ActFun(127,"任务已经完成过了",0)					 --显示系统文字
	elseif(Hero:ActFun(1080,"task has 0",2) == true)then					--判断任务链是否建立，建立则进入下一步
 	 Hero:ActFun(1080,"step = 11",2)					 --设置此步骤为0
	else
 	 Hero:ActFun(127,"未接受任务",0)					 --显示系统文字
	end
	
end

if(gContext==3010141)then
 npcAct1()
elseif(gContext==3010142)then
 npcAct2()
elseif(gContext==3010143)then
 npcAct3()
end