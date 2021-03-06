clc;clear all;close all;

%%
%读入文件并预加重处理
%[xin,xfs]= wavread('.\TEST\Right0108-094130 (2).wav');  %%%%VC对比测试用例

ADubug_Count=0;
close all;
while(ADubug_Count<11)
close all;    
ADubug_Count = ADubug_Count+1;

% switch ADubug_Count
%     case 1 
%         [xin,xfs]= wavread('.\TEST\fmy (1)');
%     case 2
%         [xin,xfs]= wavread('.\TEST\fmy (2)');
%     case 3
%         [xin,xfs]= wavread('.\TEST\fmy (3)');
%     case 4 
%         [xin,xfs]= wavread('.\TEST\fmy (4)');
%     case 5
%         [xin,xfs]= wavread('.\TEST\fmy (5)');
%     case 6
%         [xin,xfs]= wavread('.\TEST\fmy (6)');
%     case 7 
%         [xin,xfs]= wavread('.\TEST\fmy (7)');
%     case 8
%         [xin,xfs]= wavread('.\TEST\fmy (8)');
%     case 9
%         [xin,xfs]= wavread('.\TEST\fmy (9)');
%     case 10
%         [xin,xfs]= wavread('.\TEST\fmy (10)');
%     otherwise
%         clear ADubug_Count;disp('测试完毕')
%         break;
% end
% 
switch ADubug_Count
    case 1 
        [xin,xfs]= wavread('.\TEST\bmy (1)');
    case 2
        [xin,xfs]= wavread('.\TEST\bmy (2)');
    case 3
        [xin,xfs]= wavread('.\TEST\bmy (3)');
    case 4 
        [xin,xfs]= wavread('.\TEST\bmy (4)');
    case 5
        [xin,xfs]= wavread('.\TEST\bmy (5)');
    case 6
        [xin,xfs]= wavread('.\TEST\bmy (6)');
    case 7 
        [xin,xfs]= wavread('.\TEST\bmy (7)');
    case 8
        [xin,xfs]= wavread('.\TEST\bmy (8)');
    case 9
        [xin,xfs]= wavread('.\TEST\bmy (9)');
    case 10
        [xin,xfs]= wavread('.\TEST\bmy (10)');
    otherwise
        clear ADubug_Count;disp('测试完毕')
        break;
end

% switch ADubug_Count
%     case 1 
%         [xin,xfs]= wavread('.\TEST\lmy (1)');
%     case 2
%         [xin,xfs]= wavread('.\TEST\lmy (2)');
%     case 3
%         [xin,xfs]= wavread('.\TEST\lmy (3)');
%     case 4 
%         [xin,xfs]= wavread('.\TEST\lmy (4)');
%     case 5
%         [xin,xfs]= wavread('.\TEST\lmy (5)');
%     case 6
%         [xin,xfs]= wavread('.\TEST\lmy (6)');
%     case 7 
%         [xin,xfs]= wavread('.\TEST\lmy (7)');
%     case 8
%         [xin,xfs]= wavread('.\TEST\lmy (8)');
%     case 9
%         [xin,xfs]= wavread('.\TEST\lmy (9)');
%     case 10
%         [xin,xfs]= wavread('.\TEST\lmy (10)');
%     otherwise
%         clear ADubug_Count;disp('测试完毕')
%         break;
% end
% switch ADubug_Count
%     case 1 
%         [xin,xfs]= wavread('.\TEST\rmy (1)');
%     case 2
%         [xin,xfs]= wavread('.\TEST\rmy (2)');
%     case 3
%         [xin,xfs]= wavread('.\TEST\rmy (3)');
%     case 4 
%         [xin,xfs]= wavread('.\TEST\rmy (4)');
%     case 5
%         [xin,xfs]= wavread('.\TEST\rmy (5)');
%     case 6
%         [xin,xfs]= wavread('.\TEST\rmy (6)');
%     case 7 
%         [xin,xfs]= wavread('.\TEST\rmy (7)');
%     case 8
%         [xin,xfs]= wavread('.\TEST\rmy (8)');
%     case 9
%         [xin,xfs]= wavread('.\TEST\rmy (9)');
%     case 10
%         [xin,xfs]= wavread('.\TEST\rmy (10)');
%     otherwise
%         clear ADubug_Count;close all;disp('测试完毕')
%         break;
% end

xin = xin'; % xin = -1~1
N = 1.5*xfs;%%%固定时间长度为1.5s，点数为12000
temp = N-length(xin); 
xn=zeros(1,N);
if temp>=0
    xn=[xin zeros(1,temp)];
else 
    xn = xin(1:N);
end
xn = int16(xn*2047);   %%% 2^10 - 1 = 1023 模拟成10bit ADC采样值,位于-1023~1023 
switch ADubug_Count
    case 1 
        fid = fopen('.\txtout\x1.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X1_H__ \n#define __X1_H__\n');
    case 2
        fid = fopen('.\txtout\x2.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X2_H__ \n#define __X2_H__\n');
    case 3
        fid = fopen('.\txtout\x3.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X3_H__ \n#define __X3_H__\n');
    case 4 
        fid = fopen('.\txtout\x4.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X4_H__ \n#define __X4_H__\n');
    case 5
        fid = fopen('.\txtout\x5.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X5_H__ \n#define __X5_H__\n');
    case 6
        fid = fopen('.\txtout\x6.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X6_H__ \n#define __X6_H__\n');
    case 7 
        fid = fopen('.\txtout\x7.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X7_H__ \n#define __X7_H__\n');
    case 8
        fid = fopen('.\txtout\x8.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X8_H__ \n#define __X8_H__\n');
    case 9
        fid = fopen('.\txtout\x9.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X9_H__ \n#define __X9_H__\n');
    case 10
        fid = fopen('.\txtout\x10.h','w+'); %写入文件路径
        fprintf(fid,'#ifndef __X10_H__ \n#define __X10_H__\n');
    otherwise
        break;
end
fprintf(fid,'const signed short int x%d[10000]={\n',ADubug_Count);
cnt = 0;
matrix = xn;
for i=1:10000-1
    fprintf(fid,'%6d,',matrix(i)); %输出格式为6位的十进制整数
    cnt = cnt+1;
    if cnt==10
         fprintf(fid,'\n');
         cnt =0;
    end
end
fprintf(fid,'%6d\n};\n#endif\n',matrix(10000));
fclose(fid);
clear matrix;
% figure;subplot(211);plot(xn);
% subplot(212);plot(xn);
% hy_OutMatrix1Xn('.\txtout\x1.h',xn);

xn = double(xn);
clear N temp;
yn = xn;  % yn预加重后的序列
wucha = filter([1 -0.9375],1,xn);  %HPF 预加重 库函数滤波
u = 95/100; %u=0.9375
for i=2:1:length(xn)            %从第二个数据开始 y(0)=x(0);
    yn(i) = xn(i) - u*xn(i-1);  %预加重后的序列
end
% clear u;disp('预加重误差分析') 
% find((wucha-yn)>0)
yn = double(int16(yn));     %转换为int16整型值后再double计算

% figure;subplot(311);axis([0 length(xn) min(xn) max(xn)]); 
% plot(xn); title('原始语音波形');xlabel('时间');
% subplot(312);axis([0 length(xn) min(xn) max(xn)]); 
% plot(yn); title('预加重后的语音波形');xlabel('时间');
% subplot(313);axis([0 length(xn) min(xn) max(xn)]);
% plot(yn-xn); title('预加重减去原始');xlabel('时间');
%%
%分帧处理
SoundLEN = length(xn);   %测量声音文件长度
% sprintf('语音时间长度= %d ms',1000*SoundLEN/xfs)
NoiseLEN  = 0.32*xfs; % 前300ms为背景噪声取样
frameSize = 256;         %帧长
frameInc = frameSize/2;  %帧移
frameNum = fix((SoundLEN-frameSize)/frameInc +1);      %语音文件分帧数 舍弃尾部小数
NoiseframeNum = fix((NoiseLEN-frameSize)/frameInc +1); %背景噪声分帧数
% sprintf('帧的总个数=%d ,噪音帧数=%d',frameNum,NoiseframeNum)
for i=0:frameNum-1         %%%分帧部分
    frameStrIndex = frameInc*i+1;
    for j=0:frameSize-1
        ZhenBuffer(i+1,j+1)=yn(frameStrIndex+j);
    end
end
% hy_OutMatrix_MxN('matZhenBuffer.txt',ZhenBuffer);
[F, T]= enframe(yn,frameSize,frameInc);         %调用分帧函数
% disp('分帧误差分析') 
% find((F-ZhenBuffer)>0)
clear F T;
%%
%%计算平均幅度和短时过零率  用于端点检测
%%Mn 每帧的平均幅度,Zn 每帧的过零率
Mn=zeros(1,frameNum);Zn=Mn; 
MnMaxVal = 0;   %幅度最大值
MnMaxPos = 0;   %幅度最大的帧位置
for i=1:1:frameNum
    for j=1:1:frameSize
        Mn(i) = Mn(i) + abs(ZhenBuffer(i, j)); %幅度计算
        if j<frameSize  %过零率计算                                          %设置抖动幅度0.005*2047=10.23
            if ZhenBuffer(i, j)*ZhenBuffer(i, j+1) <0 & abs(ZhenBuffer(i, j)-ZhenBuffer(i, j+1))>10
                Zn(i) = Zn(i) +1;
            end
        end
    end
    if Mn(i) > MnMaxVal  %%寻找平均幅度最大的帧位置 find(Mn==max(Mn))
        MnMaxVal = Mn(i); 
        MnMaxPos = i;
    end
end

% figure 
% subplot(211); plot(Mn);title('平均幅度')
% subplot(212); plot(Zn);title('短时过零率')
%%
%寻找背景噪音中的Mn和Zn阀值，分别取噪音帧中的最大值作为阀值
%
NoiseMn = 0; NoiseZn = 0;
for i=1:1:NoiseframeNum
    if Mn(i) > NoiseMn
         NoiseMn = Mn(i);
    end
    if Zn(i) > NoiseZn
        NoiseZn = Zn(i);
    end
end
Mn1 = MnMaxVal*0.2;
Mn2 = 100*NoiseMn;
Zn3  = 4*NoiseZn+1;
PosA = 0;PosB = 0;PosC = 0;PosD = 0;PosE = 0;PosF = 0;
%%确定A和B的位置
for i=MnMaxPos:-1:1 %向前搜索
    if Mn(i) > Mn1
        PosA = i;
    end
end
for i=MnMaxPos:1:frameNum  %向后搜索
    if Mn(i) > Mn1
        PosB = i;
    end
end
% %%确定C和D的位置
% for i=PosA:-1:1   %向前查找
%     if Mn(i) > Mn2
%         PosC = i;
%     end
% end
% for i=PosA:1:frameNum %向后查找
%     if Mn(i) > Mn2
%         PosD = i;
%     end
% end
ynPosA = frameInc*(PosA-1)+1;
ynPosB = frameInc*(PosB+1);
% ynPosC = frameInc*PosC +1;
% ynPosD = frameInc*(PosD+1);
% %%确定E和F的位置
% if PosC==0
%     PosE=0;
% else
%     for i=PosC:-1:1        %向前查找
%         if Mn(i) > Zn3
%             PosE = i;
%         end
%     end
% end
% if PosD==0
%     PosF=0;
% else
%     for i=PosD:1:frameNum  %向后查找
%         if Mn(i) > Zn3
%             PosF = i;
%         end
%     end
% end
% if PosE ==0
%     PosE = PosC;
% end
% if PosF ==0
%     PosF = PosD;
% end
% ynPosE = frameInc*PosE +1;
% ynPosF = frameInc*(PosF+1);
% 
% figure; 
% % subplot(211);axis([0 length(xn) min(xn) max(xn)]); 
% % plot(xn);title('原输入语音');
% subplot(211);axis([0 length(xn) min(xn) max(xn)]); 
% % plot(yn); title('预加重后端点检测的语音波形');xlabel('时间')
% line([ynPosA ynPosA], [min(xn),max(xn)],'Color','r')
% line([ynPosB ynPosB], [min(xn),max(xn)],'Color','r')
% % line([ynPosC ynPosC], [min(xn),max(xn)],'Color','r')
% % line([ynPosD ynPosD], [min(xn),max(xn)],'Color','r')
% % line([ynPosE ynPosE], [min(xn),max(xn)],'Color','yellow')
% % line([ynPosF ynPosF], [min(xn),max(xn)],'Color','yellow')
vad_xn=yn(ynPosA:ynPosB);
% vad_xn = vad_xn/2047;
% subplot(212); plot(vad_xn);title('端点截取的语音波形');xlabel('时间');
% wavwrite(vad_xn,xfs,'vad_xn.wav');
% clear ynPosA ynPosB; 
clear i jynPosC ynPosD ynPosE ynPosF;   

%%
figure
% [x1,fs]=wavread('vad_xn.wav'); % 读入测试信号x
% x1 = int16(x1*(2^12-1)/max(x1));hy_OutMatrix1Xn('.\txtout\x1.txt',x1);
 x1 = vad_xn; fs=xfs;
xfront=wavread('.\REF\ref_front (2).wav');        % 读入模版“前”
xback=wavread('.\REF\ref_back (2).wav');          % 读入模版“后”
xleft=wavread('.\REF\ref_left (2).wav');          % 读入模版“左”
xright=wavread('.\REF\ref_right (2).wav');        % 读入模版“右”
% xfront = int16(xfront*(2^12-1)/max(xfront));hy_OutMatrix1Xn('.\txtout\xfront.txt',xfront);
% xback = int16(xback*(2^12-1)/max(xback));hy_OutMatrix1Xn('.\txtout\xback.txt',xback);
% xleft = int16(xleft*(2^12-1)/max(xleft));hy_OutMatrix1Xn('.\txtout\xleft.txt',xleft);
% xright = int16(xright*(2^12-1)/max(xright));hy_OutMatrix1Xn('.\txtout\xright.txt',xright);

xfront = int16(xfront*(2^11-1));hy_OutMatrix1Xn('.\txtout\xfront.txt',xfront);
xback = int16(xback*(2^11-1));hy_OutMatrix1Xn('.\txtout\xback.txt',xback);
xleft = int16(xleft*(2^11-1));hy_OutMatrix1Xn('.\txtout\xleft.txt',xleft);
xright = int16(xright*(2^11-1));hy_OutMatrix1Xn('.\txtout\xright.txt',xright);

% x1=x1/max(abs(x1));                 % 幅值归一化
% xfront=xfront/max(abs(xfront));
% xback=xback/max(abs(xback));
% xleft=xleft/max(abs(xleft));
% xright=xright/max(abs(xright));
x1 = double(x1);xfront=double(xfront);xback=double(xback);xleft=double(xleft);xright=double(xright);
wlen = 256; %帧长
inc = 128;  %帧移
num = 24;   %MEL滤波器个数
ccc1=mymfcc_m(x1,fs,num,wlen,inc);          %求MFCC参数
cccfront=mymfcc_m(xfront,fs,num,wlen,inc);
cccback=mymfcc_m(xback,fs,num,wlen,inc);
cccleft=mymfcc_m(xleft,fs,num,wlen,inc);
cccright=mymfcc_m(xright,fs,num,wlen,inc);
ccc1=int32(ccc1);hy_OutMatrix1Xn('.\txtout\ccc1.txt',ccc1);  %输出MFCC参数到文件
cccfront=int32(cccfront);hy_OutMatrix_MxN('.\txtout\cccfront.txt',cccfront);
cccback=int32(cccback);hy_OutMatrix_MxN('.\txtout\cccback.txt',cccback);
cccleft=int32(cccleft);hy_OutMatrix_MxN('.\txtout\cccleft.txt',cccleft);
cccright=int32(cccright);hy_OutMatrix_MxN('.\txtout\cccright.txt',cccright);
%%
[Dist_front,D,k,w]=mydtw(ccc1,cccfront);
% subplot(221);plot(w(:,1),w(:,2));grid;title('front');
[Dist_back,D,k,w]=mydtw(ccc1,cccback);
% subplot(222);plot(w(:,1),w(:,2));grid;title('back');
[Dist_left,D,k,w]=mydtw(ccc1,cccleft);
% subplot(223);plot(w(:,1),w(:,2));grid;title('left');
[Dist_right,D,k,w]=mydtw(ccc1,cccright);
% subplot(224);plot(w(:,1),w(:,2));grid;title('right');
% Dist=[Dist_front Dist_back Dist_left Dist_right]
%%
%找到最小的匹配距离
Distmin = Dist_front;
if Dist_back<Distmin
    Distmin = Dist_back;
end
if Dist_left<Distmin
    Distmin = Dist_left;
end
if Dist_right<Distmin
    Distmin = Dist_right;
end  

switch Distmin
    case Dist_front 
        sprintf('第%d次识别结果是“前”',ADubug_Count)
    case Dist_back
        sprintf('第%d次识别结果是“后”',ADubug_Count)
    case Dist_left
        sprintf('第%d次识别结果是“左”',ADubug_Count)
    case Dist_right
        sprintf('第%d次识别结果是“右”',ADubug_Count)
    otherwise
        disp('Unknown method.')
end    
end
