--�����������
function npcAct1()
  if(Hero:ActFun(1080,"mask == 19",19) == true)then		--�ж�����
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)				--��ʾϵͳ����
  elseif(Hero:ActFun(1080,"task has 0",19) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 3",19) == true)then		--�ж�������
      if(Hero:ActFun(1080,"task state 0",19) == true)then				  --�ж�����״̬
        Hero:ActFun(1080,"task accept 3",19)				  --��������״̬Ϊ1
      else
        Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
      end
    else
      Hero:ActFun(127,"�Ѿ����������",0)  	 	 --��ʾϵͳ����
    end
  else
    Hero:ActFun(1080,"task accept 3",19)				--��������״̬Ϊ1
  end
end

--����������
function npcAct2()
  if(Hero:ActFun(1080,"mask == 19",19) == true)then				--�ж�����
  elseif(Hero:ActFun(1080,"task has 0",19) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 3",19) == true)then				--�ж�������
      if(Hero:ActFun(1080,"task state 0",19) == true)then				--�ж�����״̬
        Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
    --�ж������Ƿ�����ɣ�������������һ��
    elseif(Hero:ActFun(1080,"task state 2",19) == true)then				--�ж�����״̬
      Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����
    elseif(Hero:ActFun(1080,"task state 3",19) == true)then				--�ж�����״̬
      Hero:ActFun(1080,"task end 3",19)				--���õ�һ��״̬Ϊ���
      --Hero:ActFun(1080,"step += 1",19)				--��������������1
      Hero:ActFun(1080,"task delete 3",19)		--ɾ������
Hero:ActFun(1080,"mask += 19",19)			--���������������
      Hero:ActFun(1001,"exp += 210000",0)			--������
      --Hero:ActFun(1001,"petexp += 210000",0)			--�����ﾭ��
	     Hero:ActFun(1001,"money += 11236",2)
	     
    elseif(Hero:ActFun(1080,"task state 1",19) == true)then					    --�ж������Ƿ���������������������������һ��
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
  if(Hero:ActFun(1080,"mask == 19",19) == true)then
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)
  elseif(Hero:ActFun(1080,"task has 0",19) == true)then
    Hero:ActFun(1080,"step = 3",19)
  else
    Hero:ActFun(127,"δ��������",0)
  end
end

if(gContext==3010555)then
  npcAct1()
elseif(gContext==3010556)then
  npcAct2()
elseif(gContext==3010557)then
  npcAct3()
end
