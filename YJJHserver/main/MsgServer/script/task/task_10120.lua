--�����������
function npcAct1()

	if(Hero:ActFun(1080,"mask == 2",2) == true)then				--�ж�����

	
	elseif(Hero:ActFun(1080,"task has 0",2) == true)then				--�ж�������

	
		if(Hero:ActFun(1080,"step == 4",2) == true)then				--�ж�������


	  	if(Hero:ActFun(1080,"task state 0",2) == true)then				--�ж�����״̬

			
			 Hero:ActFun(1080,"task accept 4",2)				--��������״̬Ϊ1
			else
			 Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
		  end
		else
	 	 	 Hero:ActFun(127,"�Ѿ����������",0)
		end
	else
--	 Hero:ActFun(1080,"task new 1",2)				--����������
	 Hero:ActFun(1080,"task accept 4",2)				--��������״̬Ϊ1
	end

end


--����������
function npcAct2()

	if(Hero:ActFun(1080,"mask == 2",2) == true)then				--�ж�����
	
	elseif(Hero:ActFun(1080,"task has 0",2) == true)then				--�ж�������
	
	 	if(Hero:ActFun(1080,"step == 4",2) == true)then				--�ж�������
	  
	   	if(Hero:ActFun(1080,"task state 0",2) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
	     
	    --�ж������Ƿ�����ɣ�������������һ��
	   	elseif(Hero:ActFun(1080,"task state 2",2) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����

	  	elseif(Hero:ActFun(1080,"task state 3",2) == true)then				--�ж�����״̬
	     Hero:ActFun(1080,"task end 4",2)				--���õ�һ��״̬Ϊ���
	     Hero:ActFun(1080,"step += 1",2)				--��������������1
	     Hero:ActFun(498,"0",620008)
	     Hero:ActFun(1001,"exp += 4000",0)			--������
	     --Hero:ActFun(1001,"petexp += 2000",0)			--�����ﾭ��
	     Hero:ActFun(1001,"money += 1200",2)			--������
	     Hero:ActFun(1046,"2 5",3)					     --���Ͻ�ȡ��һ��
	     if(Hero:ActFun(1080,"mask == 28",28) == false)then
	     Hero:ActFun(1080,"task new 1",28)				--����������
			 Hero:ActFun(1080,"task accept 1",28)				--��������״̬Ϊ1
			 end

	   	elseif(Hero:ActFun(1080,"task state 1",1) == true)then					    --�ж������Ƿ���������������������������һ�� 
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

	if(Hero:ActFun(1080,"mask == 2",2) == true)then					--�ж����룬�������������һ��
 	 Hero:ActFun(127,"�����Ѿ���ɹ���",0)					 --��ʾϵͳ����
	elseif(Hero:ActFun(1080,"task has 0",2) == true)then					--�ж��������Ƿ����������������һ��
 	 Hero:ActFun(1080,"step = 4",2)					 --���ô˲���Ϊ0
 	 Hero:ActFun(498,"0",620008)
	else
 	 Hero:ActFun(127,"δ��������",0)					 --��ʾϵͳ����
	end
	
end

if(gContext==3010120)then
 npcAct1()
elseif(gContext==3010121)then
 npcAct2()
elseif(gContext==3010122)then
 npcAct3()
end