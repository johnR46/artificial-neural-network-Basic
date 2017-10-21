 clear all %clear all variables
close all %close all figure
clc %clear screen

NUMBER_ARGS = 5
  int8 numtrain;         
uint8 seed;         
char outputfile[100];  
int8 percentnoise;      
int8 noisy[7];           % /* Contains boolean values (attribute noise) */
int8 instance[10][7];     %/* Original 10 instances */
int8 n;n=0;






function void = main(argc, argv)
int8 argc;
 char *argv[];
 
    createworld();
   
 if(argc ~= NUMBER_ARGS) 
       printf("Arguments: numtrain seed outputfile noise.\n");
       printf(" numtrain is the number of training instances requested.\n");
       printf(" seed is a integer seed for the random number generator.\n");
       printf(" outputfile: output file name for the generated instances.\n");
       printf(" noise is the percent probability of noise per attribute.\n");
       printf(" (usually set to 10%...and reported by the program)\n");
     
 
 else
     
      numtrain = str2num(argv(1));
      seed = str2num(argv(2));
      strcpy(outputfile,argv(3));
      percentnoise = atoi(argv(4));
      createworld();
      
 end
end


function void = createworld()
     %prepare to save result in file
    fid = fopen('resultLED.txt','w');

   int8    select_noisy_indexes();
   int8 noisy_index();
   int8 count;
   int8 selected;
   int8 noisy_instance[7];
   double actual;    
   srandom(seed); 
   
   instance=[ 1,1,1,0,1,1,1 ; 0,0,1,0,0,1,0 
              1,0,1,1,1,0,1 ; 1,0,1,1,0,1,1
              0,1,1,1,0,1,0 ; 1,1,0,1,0,1,1 
              1,1,0,1,1,1,1 ; 1,0,1,0,0,1,0
              1,1,1,1,1,1,1 ; 1,1,1,1,0,1,1 ]
      
    fid = fopen(outputfile,"w");
     for count = 0:numtrain 
         select_noisy_indexes();
           selected = rem(random(),10);
            for y = 0:7
                 noisy_instance(y) = instance(selected),(y);
                  if (noisy(y))
                  noisy_instance(y) = ~noisy_instance(y);
                  end
            end
            
            fprintf(fid,"%d,%d,%d,%d,%d,%d,%d,%d\n",noisy_instance(0),noisy_instance(1),noisy_instance(2),noisy_instance(3),noisy_instance(4),noisy_instance(5),noisy_instance(6),selected);
       
     end
      actual = 100.0 * n / (7*numtrain);
     printf("Percent Noise: Requested %d, Actual %f\n",percentnoise,actual);
      fclose(fid);
end
function int  = select_noisy_indexes()

   int8 i;
   double actual;

   for y = 0:7
         noisy(y) = 0;
         if( ( 1 + (rem(random(),100))) <= percentnoise) 
          noisy(y) = 1;
           n = n+1;
         end
         
      end
end



