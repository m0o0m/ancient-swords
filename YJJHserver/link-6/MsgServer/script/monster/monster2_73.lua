----
  --    �ļ���:  monster_73.lua
  --    �ű�����:�������������Ʒ
  --    ����:    goto
  --    ����:    2010-08-20
  --    ������:  �˶�ʤ��
  --    �����:  Ǭ��ʹ��(73)
  --    ������Ʒ:��תǬ��(620024)
  --    ����:    6
----

function npcdrop1()
    if(Hero:ActFun(1050,"12",620024) == false)then       --�ж�������Ʒ����
	    if(Hero:ActFun(508,"49 1",0) == true)then       --�ж����񱳰��ռ�
		    local x=math.random()*10000                 --�����
  		    if(x < 6000)then                            --�������
  		  	  Hero:ActFun(519,"1 1",620024)               --������Ʒ
  		    end
  	    else
  	    	Hero:ActFun(127,"���񱳰�����",0)
  	    end
    end
end

function npcdrop2()
    if(Hero:ActFun(1050,"200",620036) == false)then       --�ж�������Ʒ����
	    if(Hero:ActFun(508,"49 1",0) == true)then       --�ж����񱳰��ռ�
		    local x=math.random()*10000                 --�����
  		    if(x < 6000)then                            --�������
  		  	  Hero:ActFun(519,"1 1",620036)               --������Ʒ
  		    end
  	    else
  	    	Hero:ActFun(127,"���񱳰�����",0)
  	    end
    end
end


if(Hero:ActFun(1080,"mask == 8",8) == false)then                --����
	if(Hero:ActFun(1080,"task has 0",8) == true)then            --����
      	if(Hero:ActFun(1080,"step == 1",8) == true)then         --����
			if(Hero:ActFun(1080,"task state 1",8) == true)then  --����״̬
				npcdrop1()
			end
		end
	end
end

if(Hero:ActFun(1080,"daymask == 8",86) == false)then                --����
	if(Hero:ActFun(1080,"task has 0",86) == true)then            --����
      	--if(Hero:ActFun(1080,"step == 1",86) == true)then        --����
			if(Hero:ActFun(1080,"task state 1",86) == true)then  --����״̬
				npcdrop2()
			--end
		end
	end
end
result=true;