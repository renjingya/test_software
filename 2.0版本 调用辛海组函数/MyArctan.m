%% arctan����������Ƕȣ����Ϊ1e-10���޴�����ʾ��ȡֵ��Χ(-1 - 1)��
function [y] =MyArctan(radian) 
    i=1;
     %% ȡ����־
    Negation=1;
     %% ÿ�����ʽȡֵ
    Polynomial=1;
     %% ����ʽָ��
    Index=radian;
     %% ����ʽ�׳�
    Factorial=1;
     %% ̩��չ��ʽ���
    TaylorExpansion=radian;
     %% ����־
    ErrorSymbol=1;
if radian<1&&radian>-1

while ErrorSymbol>0
         %% �׳˸���
         Factorial=2*i+1;
         %% x�η�����
         Index=Index*radian*radian;
         %% ����ʽ�����Ÿ���
         Negation=-Negation;
         %% ����ʽȡֵ����
         Polynomial=Index/Factorial*Negation;
         %% ̩�����
         TaylorExpansion=TaylorExpansion+Polynomial;
         
         i=i+1;
         %% ����ʽֵȡ����ֵ
         if Polynomial>0
            ErrorSymbol=Polynomial;
         else
            ErrorSymbol=-Polynomial; 
         end
         %% ����ж�
         if ErrorSymbol>1e-10
            ErrorSymbol=1;
         else
            ErrorSymbol=0; 
         end
end

     y=TaylorExpansion/pi*180;
else
    y='�����루-1,1��֮�������';
end
     
end

