function x = arctan(a)
 k=0;
 if(a==0)
     x=0;
 end
 if (a>0)
     i=0.1;
     while(1)
     ai=k;
      while(1)
          if(ai+i>pi/2)
              break;
          end
          ai= (ai/pi)*180;
          i=(i/pi)*180;
          if((SIN(ai)/COS(ai)-a)*(SIN(ai+i)/COS(ai+i)-a)==0)
              ai= (ai/180)*pi;
              i= (i/180)*pi;
              break;
          end
           if((SIN(ai)/COS(ai)-a)*(SIN(ai+i)/COS(ai+i)-a)<0)
               ai= (ai/180)*pi;
               i= (i/180)*pi;
              break;
           end
          ai= (ai/180)*pi;
          i= (i/180)*pi;
          ai=ai+i;
      end
      if(i<0.0000000001)
          break;
      end
      i=i/10;
      k=ai;
     end
     x=(ai+ai+i)/2;
     x= (x/pi)*180;
     
 end
 if (a<0)
       i=0.1;
     while(1)
      ai=k;
      while(1)
          if(ai-i<-pi/2)
              break;
          end
          ai= (ai/pi)*180;
          i=(i/pi)*180;
          if((SIN(ai)/COS(ai)-a)*(SIN(ai-i)/COS(ai-i)-a)==0)
               ai= (ai/180)*pi;
               i= (i/180)*pi;
              break;
          end
           if((SIN(ai)/COS(ai)-a)*(SIN(ai-i)/COS(ai-i)-a)<0)
               ai= (ai/180)*pi;
               i= (i/180)*pi;
              break;
           end
               ai= (ai/180)*pi;
               i= (i/180)*pi;
          ai=ai-i;
      end
      if(i<0.0000000001)
          break;
      end
      i=i/10;
      k=ai;
     end
     x=(ai+ai-i)/2;
     x= (x/pi)*180;
 end
end