%%%%%%%%%%%%%%%%%%%%%%%
% Data Preprocessing %
%%%%%%%%%%%%%%%%%%%%%%%

%% opening the divided raw audio signals

AudioSignal=cell(57,1);
  
[AudioSignal{1,1},Fs]=audioread('01-julia-00.wav');  
[AudioSignal{2,1},Fs]=audioread('01-julia-02.wav'); 
[AudioSignal{3,1},Fs]=audioread('01-julia-03.wav');  
[AudioSignal{4,1},Fs]=audioread('01-julia-04.wav');  
[AudioSignal{5,1},Fs]=audioread('01-julia-05.wav');  
[AudioSignal{6,1},Fs]=audioread('01-julia-06.wav');  
[AudioSignal{7,1},Fs]=audioread('01-julia-07.wav');  
[AudioSignal{8,1},Fs]=audioread('01-julia-08.wav'); 
[AudioSignal{9,1},Fs]=audioread('04-petra-01.wav');  
[AudioSignal{10,1},Fs]=audioread('04-petra-02.wav');  
[AudioSignal{11,1},Fs]=audioread('04-petra-03.wav');  
[AudioSignal{12,1},Fs]=audioread('04-petra-04.wav');  
[AudioSignal{13,1},Fs]=audioread('04-petra-05.wav');  
[AudioSignal{14,1},Fs]=audioread('04-petra-06.wav');  
[AudioSignal{15,1},Fs]=audioread('04-petra-07.wav');  
[AudioSignal{16,1},Fs]=audioread('05-petra-01.wav');  
[AudioSignal{17,1},Fs]=audioread('05-petra-02.wav');  
[AudioSignal{18,1},Fs]=audioread('05-petra-03.wav');  
[AudioSignal{19,1},Fs]=audioread('06-mirta-01.wav');  
[AudioSignal{20,1},Fs]=audioread('06-mirta-02.wav');  
[AudioSignal{21,1},Fs]=audioread('06-mirta-03.wav');  
[AudioSignal{22,1},Fs]=audioread('06-mirta-04.wav');  
[AudioSignal{23,1},Fs]=audioread('06-mirta-05.wav');  
[AudioSignal{24,1},Fs]=audioread('06-mirta-06.wav');  
[AudioSignal{25,1},Fs]=audioread('06-mirta-07.wav');  
[AudioSignal{26,1},Fs]=audioread('06-mirta-08.wav');  
[AudioSignal{27,1},Fs]=audioread('06-mirta-09.wav');  
[AudioSignal{28,1},Fs]=audioread('13-priska-01.wav');  
[AudioSignal{29,1},Fs]=audioread('13-priska-02.wav');  
[AudioSignal{30,1},Fs]=audioread('13-priska-03.wav');  
[AudioSignal{31,1},Fs]=audioread('13-priska-04.wav');  
[AudioSignal{32,1},Fs]=audioread('13-priska-05.wav');  
[AudioSignal{33,1},Fs]=audioread('13-priska-06.wav');  
[AudioSignal{34,1},Fs]=audioread('13-priska-07.wav');  
[AudioSignal{35,1},Fs]=audioread('13-priska-08.wav');  
[AudioSignal{36,1},Fs]=audioread('13-priska-09.wav');  
[AudioSignal{37,1},Fs]=audioread('13-priska-10.wav');  
[AudioSignal{38,1},Fs]=audioread('19-romina-01.wav');  
[AudioSignal{39,1},Fs]=audioread('19-romina-02.wav');  
[AudioSignal{40,1},Fs]=audioread('19-romina-03.wav');  
[AudioSignal{41,1},Fs]=audioread('19-romina-04.wav');
[AudioSignal{42,1},Fs]=audioread('19-romina-05.wav');  
[AudioSignal{43,1},Fs]=audioread('19-romina-06.wav');  
[AudioSignal{44,1},Fs]=audioread('19-romina-07.wav');  
[AudioSignal{45,1},Fs]=audioread('19-romina-08.wav');  
[AudioSignal{46,1},Fs]=audioread('19-romina-09.wav');  
[AudioSignal{47,1},Fs]=audioread('19-romina-10.wav'); 
[AudioSignal{48,1},Fs]=audioread('23-stefanie-01.wav');  
[AudioSignal{49,1},Fs]=audioread('23-stefanie-02.wav');  
[AudioSignal{50,1},Fs]=audioread('23-stefanie-03.wav');  
[AudioSignal{51,1},Fs]=audioread('23-stefanie-04.wav');  
[AudioSignal{52,1},Fs]=audioread('23-stefanie-05.wav');  
[AudioSignal{53,1},Fs]=audioread('23-stefanie-06.wav');  
[AudioSignal{54,1},Fs]=audioread('23-stefanie-07.wav');  
[AudioSignal{55,1},Fs]=audioread('23-stefanie-08.wav');  
[AudioSignal{56,1},Fs]=audioread('23-stefanie-09.wav');  
[AudioSignal{57,1},Fs]=audioread('23-stefanie-10.wav'); 

%% first MFCC coefficient extraction from the 2 channels audio signals

MCData=cell(57,2);

for i=1:57  
    for j=1:2
        MCData{i,j}=melcepst(AudioSignal{i,1}(:,j),44100,'M',1);
    end
end
