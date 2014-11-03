%% visual representation of neurons
close all
clear
clc
%easy
easyNeuron=ones(5,7);
easyNeuron([7,9,13,18,23,28])=.5; easyNeuron(8)=0;
imagesc(easyNeuron); colormap gray

%medium
medNeuron=ones(5,7);
medNeuron([8,12,18,23,24,28])=.5; medNeuron(13)=0;
figure; imagesc(medNeuron); colormap gray

%hard
hardNeuron=ones(5,7);
hardNeuron([7,8,14,18,22,23,27])=.5; hardNeuron(13)=0;
figure; imagesc(hardNeuron); colormap gray

%% Grid/neuron overlay construction

%easy 5x7 grid
easyGrid=ones(5,7);
eShapeN = easyNeuron(2:4,2:6);
sizeN=size(eShapeN);
sizeG=size(easyGrid);
posVert=sizeG(1)-sizeN(1);
posHorz=sizeG(2)-sizeN(2);

vertShift=randi([0,posVert],1);
horzShift=randi([0,posHorz],1);

easyGrid((vertShift+[1:sizeN(1)]),(horzShift+[1:sizeN(2)]))=eShapeN;

nonAH=find(easyGrid > 0);
ehints=nonAH(randi([1,length(nonAH)],1,4));

easyGridDisp=zeros(5,7);
easyGridDisp(ehints)=easyGrid(ehints);

figure; imagesc(easyGridDisp)


%med 9x13 grid

medGrid=ones(9,13);
mShapeN = medNeuron(2:4,2:6);
sizeN=size(mShapeN);
sizeG=size(medGrid);
posVert=sizeG(1)-sizeN(1);
posHorz=sizeG(2)-sizeN(2);

vertShift=randi([0,posVert],1);
horzShift=randi([0,posHorz],1);

medGrid((vertShift+[1:sizeN(1)]),(horzShift+[1:sizeN(2)]))=mShapeN;

nonNeuron=find(medGrid == 1);
mhints=nonNeuron(randi([1,length(nonAH)],1,4));

medGridDisp=zeros(9,13);
medGridDisp(mhints)=medGrid(mhints);

figure; imagesc(medGridDisp)

%hard 17x17 grid

hardGrid=ones(17);
hShapeN = hardNeuron(2:4,2:6);
sizeN=size(hShapeN);
sizeG=size(hardGrid);
hposVert=sizeG(1)-sizeN(1);
hposHorz=sizeG(2)-sizeN(2);

hvertShift=randi([0,hposVert],1);
hhorzShift=randi([0,hposHorz],1);

hardGrid((hvertShift+[1:sizeN(1)]),(hhorzShift+[1:sizeN(2)]))=hShapeN;

nonNeuron=find(hardGrid == 1);
hhints=nonNeuron(randi([1,length(nonNeuron)],1,2));

hardGridDisp=zeros(17);
hardGridDisp(hhints)=hardGrid(hhints);

figure; imagesc(hardGridDisp)