--�����������
function npcAct1()
	if(Hero:ActFun(1080,"mask == 21",21) == true)then				--�ж�����
	 
	
	elseif(Hero:ActFun(1080,"task has 0",21) == true)then				--�ж�������
	
	
		if(Hero:ActFun(1080,"step == 4",21) == true)then				--�ж�������
		

	  	if(Hero:ActFun(1080,"task state 0",21) == true)then				--�ж�����״̬
			
			
			 Hero:ActFun(1080,"task accept 4",21)				--��������״̬Ϊ1
			else
			 Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
		  end
		else
	 	 --��ʾϵͳ����
	 	 Hero:ActFun(127,"�Ѿ����������",0)
		end
	else
--	 Hero:ActFun(1080,"task new 1",21)				--����������
	 Hero:ActFun(1080,"task accept 4",21)				--��������״̬Ϊ1
	end


end


--����������
function npcAct2()

	if(Hero:ActFun(1080,"mask == 21",21) == true)then				--�ж�����
	
	
	elseif(Hero:ActFun(1080,"task has 0",21) == true)then				--�ж�������

	
	 	if(Hero:ActFun(1080,"step == 4",21) == true)then				--�ж�������
	 
	   	if(Hero:ActFun(1080,"task state 0",21) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
	     
	    --�ж������Ƿ�����ɣ�������������һ��
	   	elseif(Hero:ActFun(1080,"task state 2",21) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����

	  	elseif(Hero:ActFun(1080,"task state 3",21) == true)then				--�ж�����״̬
	     Hero:ActFun(1080,"task end 4",21)				--���õ�һ��״̬Ϊ���
	     Hero:ActFun(1080,"step += 1",21)				--��������������1
		Hero:ActFun(498,"0",620067)
	     Hero:ActFun(1001,"exp += 259000",0)			--������
	     --Hero:ActFun(1001,"petexp += 3000",0)			--�����ﾭ��
	     Hero:ActFun(1001,"money += 12400",2)			--������
	     
	   Hero:ActFun(1046,"21 5",3)					     --���Ͻ�ȡ��һ������ʱ����

	   	elseif(Hero:ActFun(1080,"task state 1",21) == true)then					    --�ж������Ƿ���������������������������һ�� 
	     Hero:ActFun(127,"������������",0)					   	--��ʾϵͳ����
	   	else
	     Hero:ActFun(127,"�����Ѿ���ɹ���",0)					   	 --��ʾϵͳ����
	   	end
	 	else
	   Hero:ActFun(127,"δ��������",0)						 --��ʾϵͳ����
	 	end
	else
	 Hero:ActFun(127,"δ��������",0)					 --��ʾϵͳ����
	end
	
end

--ȡ���������
function npcAct3()

	if(Hero:ActFun(1080,"mask == 21",21) == true)then					--�ж����룬�������������һ��
 	 Hero:ActFun(127,"�����Ѿ���ɹ���",0)					 --��ʾϵͳ����
	elseif(Hero:ActFun(1080,"task has 0",21) == true)then					--�ж��������Ƿ����������������һ��
 	 Hero:ActFun(1080,"step = 4",21)
	Hero:ActFun(498,"0",620067)					 --���ô˲���Ϊ0
	else
 	 Hero:ActFun(127,"δ��������",0)					 --��ʾϵͳ����
	end

end

if(gContext==3011085)then	
  npcAct1()
elseif(gContext==3011086)then
  npcAct2()
elseif(gContext==3011087)then
  npcAct3()
end