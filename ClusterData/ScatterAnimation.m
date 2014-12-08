clear all
close all
A=importdata('pos.dat');
time=A(:,1);
totEn=A(:,2);
nPlanets= (size(A,2)-2)/3;
nSteps = size(A,1);
endTime = time(end);

%%
% xrange=(A(1,3*nPlanets)-A(1,3))*1.1;
xrange= 22;
x=zeros(nPlanets,1);
y=zeros(nPlanets,1);
z=zeros(nPlanets,1);

%%
figure(1)
 for t=1:10:nSteps
    clf(1)
    for i=1:1:nPlanets
        j=3*i;
        x(i)=A(t,j);
        y(i)=A(t,j+1);
        z(i)=A(t,j+2);
    end
    h=scatter3(x,y,z,'filled');
    xlim([-xrange xrange])
    ylim([-xrange xrange])
    zlim([-xrange xrange])
%     drawnow
    pause(0.0001);
end


