rr = (-20:1:20)'/20
theta = (pi/2)*(0:1:40)/40
%rr = (0:1:2)'/2
%theta = (2*pi)*(0:1:2)/2

Im = imread('cfw.jpg');

al = (2/3)*pi;

%fh1 = @(t) xpnt ; fh2 = @(t) ypnt; fh3 = @(t) zpnt;
%colormap copper 
hold on

n=5
view(73,21)
for k1 = 0:n-1
  for k2 = 0:n-1
        x = xpnt(rr,theta,k1,n);
        y = ypnt(rr,theta,k2,n);
        z = zpnt(rr,theta,al,k1,k2,n);
        surface(x,y,z,Im,...
        'FaceColor','texturemap',...
        'EdgeColor','none',...
        'CDataMapping','direct')
  end
end
view(73,21)
hold off

%%%%%%%%%%%%%%  TRY
%surf2patch