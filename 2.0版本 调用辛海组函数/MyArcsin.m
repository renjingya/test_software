%% arcsin����������Ƕȣ����Ϊ1e-10���޴�����ʾ,ȡֵ��Χ(-1 - 1)��
function [y] =MyArcsin(radian)  
    i=1;
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
    %% n�Ľ׳�
     FactorialN=1;
    %% 2*n�Ľ׳�
     Factorial2N=1;
    
while ErrorSymbol>0
        for j=1:i
            FactorialN=FactorialN*j;
        end
        for j=1:2*i
            Factorial2N=Factorial2N*j;
        end
         %% �׳˸���
         Factorial=Factorial2N/((2*i+1)*4^i*FactorialN*FactorialN);
         %% x�η�����
         Index=Index*radian*radian;
         %% ����ʽȡֵ����
         Polynomial=Index*Factorial;
         %% ̩�����
         TaylorExpansion=TaylorExpansion+Polynomial;
         
         i=i+1;
         FactorialN=1;
         Factorial2N=1;
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
     
end

