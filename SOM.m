
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Self Organizing Map (SOM) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Data preparation for the first MCFF coefficients

load MCData  % the first coefficent of MFCC for each data sample (2 channel audio signals)
for i=1:57
    for j=1:2
MCData{i,j}=MCData{i,j}(1:36);
    end
end

MCData1=MCData(:,1);
MCData2=MCData(:,2);

InputM1=zeros(36,57);
InputM2=zeros(36,57);

for j=1:57
    InputM1(:,j)=MCData1{j,:};
    InputM2(:,j)=MCData2{j,:};
end

ind=randperm(57);

% one third of the dataset for training and the remaining part for testing

TrainIN1M=InputM1(:,ind(1:40));
TestIN1M=InputM1(:,ind(41:57));

TrainIN2M=InputM2(:,ind(1:40));
TestIN2M=InputM2(:,ind(41:57));

%% Data preparation for the first channel of the raw audio signals

load AudioSignal   % the raw audio signals divided in 8 parts each in order to increase the size of the dataset
AudioSignal1=cell(57,1);

for j=1:57
    AudioSignal1{j,:}=AudioSignal{j,:}(1:10000,1); % selection of the first audio channel
end

Input1=zeros(10000,57);

for j=1:57
    Input1(:,j)=AudioSignal1{j,:};
end

ind=randperm(57);

% one third of the dataset for training and the remaining part for testing

TrainIN1=Input1(:,ind(1:40));
TestIN1=Input1(:,ind(41:57));

%% Data preparation for the second channel of the raw audio signals

load AudioSignal   % the raw audio signals divided in 8 parts each in order to increase the size of the dataset
AudioSignal2=cell(57,1);

for j=1:57
    AudioSignal2{j,:}=AudioSignal{j,:}(1:10000,2); % selection of the second audio channel
end

Input2=zeros(10000,57);

for j=1:57
   Input2(:,j)=AudioSignal2{j,:};
end

ind=randperm(57);

% one third of the dataset for training and the remaining part for testing

TrainIN2=Input2(:,ind(1:40));
TestIN2=Input2(:,ind(41:57));

%% SOM - Training

dimensions=[6 6]; % number of neurons in the net
x=TrainIN2M; % change it based on the kind of input you want for the net
net=selforgmap(dimensions);
net=train(net,x);
view(net);
y=net(x);
classes=vec2ind(y);

%% SOM - Testing

outputs=net(TestIN2M);
classesT=vec2ind(outputs);
view(net);




