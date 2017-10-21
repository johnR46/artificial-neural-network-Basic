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
 
   % function void =  createworld();
   
 if(argc ~= NUMBER_ARGS) 
       printf("Arguments: numtrain seed outputfile noise.\n");
       printf(" numtrain is the number of training instances requested.\n");
       printf(" seed is a integer seed for the random number generator.\n");
       printf(" outputfile: output file name for the generated instances.\n");
       printf(" noise is the percent probability of noise per attribute.\n");
       printf(" (usually set to 10%...and reported by the program)\n");
     
 
 else
     
      numtrain = atoi(argv[1]);
      %seed = atoi(argv[2]);
      %strcpy(outputfile,argv[3]);
      %percentnoise = atoi(argv[4]);
      %createworld();
 end
end


function void = createworld()
     %prepare to save result in file
    fid = fopen('resultLED.txt','w+');

   int select_noisy_indexes(),
       noisy_index();
   int count, selected, i;
   int noisy_instance[7];
   float actual;    
   srandom(seed); 
   
   instance=[ 1,1,1,0,1,1,1 ; 0,0,1,0,0,1,0 
              1,0,1,1,1,0,1 ; 1,0,1,1,0,1,1
              0,1,1,1,0,1,0 ; 1,1,0,1,0,1,1 
              1,1,0,1,1,1,1 ; 1,0,1,0,0,1,0
              1,1,1,1,1,1,1 ; 1,1,1,1,0,1,1 ]
       
    fout = fopen(outputfile,"w");
    
     for count = 0:numtrain 
       count
     end
    
end


