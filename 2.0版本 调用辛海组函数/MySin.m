%% sin���������뻡�ȣ����Ϊ1e-10���޴�����ʾ��ȡֵ��ΧR��
function [ y ]= MySin(radian)  
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
    
while ErrorSymbol>0
         %% �׳˸���
         Factorial=Factorial*(i+1)*(i+2);
         %% x�η�����
         Index=Index*radian*radian;
         %% ����ʽ�����Ÿ���
         Negation=-Negation;
         %% ����ʽȡֵ����
         Polynomial=Index/Factorial*Negation;
         %% ̩�����
         TaylorExpansion=TaylorExpansion+Polynomial;
         
         i=i+2;
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
     y=TaylorExpansion;
end
