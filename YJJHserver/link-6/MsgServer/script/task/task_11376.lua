--�����������
function npcAct1()
	if(Hero:ActFun(1080,"mask == 25",25) == true)then				--�ж�����
	 
	
	elseif(Hero:ActFun(1080,"task has 0",25) == true)then				--�ж�������
	
	
		if(Hero:ActFun(1080,"step == 23",25) == true)then				--�ж�������
		

	  	if(Hero:ActFun(1080,"task state 0",25) == true)then				--�ж�����״̬
			
			
			 Hero:ActFun(1080,"task accept 23",25)				--��������״̬Ϊ1
			else
			 Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
		  end
		else
	 	 --��ʾϵͳ����
	 	 Hero:ActFun(127,"�Ѿ����������",0)
		end
	else
--	 Hero:ActFun(1080,"task new 1",25)				--����������
	 Hero:ActFun(1080,"task accept 23",25)				--��������״̬Ϊ1
	end


end


--����������
function npcAct2()

	if(Hero:ActFun(1080,"mask == 25",25) == true)then				--�ж�����
	
	
	elseif(Hero:ActFun(1080,"task has 0",25) == true)then				--�ж�������

	
	 	if(Hero:ActFun(1080,"step == 23",25) == true)then				--�ж�������
	 
	   	if(Hero:ActFun(1080,"task state 0",25) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
	     
	    --�ж������Ƿ�����ɣ�������������һ��
	   	elseif(Hero:ActFun(1080,"task state 2",25) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����

	  	elseif(Hero:ActFun(1080,"task state 3",25) == true)then				--�ж�����״̬
	     Hero:ActFun(1080,"task end 23",25)				--���õ�һ��״̬Ϊ���
	     Hero:ActFun(1080,"step += 1",25)				--��������������1
	     --Hero:ActFun(1080,"task delete 1",25)			--ɾ������
	     --Hero:ActFun(1080,"mask += 25",25)				--���������������
		--Hero:ActFun(498,"0",620082)			--ɾ���������
	     Hero:ActFun(1001,"exp += 584000",0)			--������
	     --Hero:ActFun(1001,"petexp += 3000",0)			--�����ﾭ��
	     Hero:ActFun(1001,"money += 34000",2)			--������
	     
	   Hero:ActFun(1046,"25 24",3)					     --���Ͻ�ȡ��һ������ʱ����

	   	elseif(Hero:ActFun(1080,"task state 1",25) == true)then					    --�ж������Ƿ���������������������������һ�� 
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

	if(Hero:ActFun(1080,"mask == 25",25) == true)then					--�ж����룬�������������һ��
 	 Hero:ActFun(127,"�����Ѿ���ɹ���",0)					 --��ʾϵͳ����
	elseif(Hero:ActFun(1080,"task has 0",25) == true)then					--�ж��������Ƿ����������������һ��
 	 Hero:ActFun(1080,"step = 23",25)					 --���ô˲���Ϊ0
	--Hero:ActFun(498,"0",620082)			--ɾ���������
	else
 	 Hero:ActFun(127,"δ��������",0)					 --��ʾϵͳ����
	end

end

if(gContext==3011376)then	
  npcAct1()
elseif(gContext==3011377)then
  npcAct2()
elseif(gContext==3011378)then
  npcAct3()
end