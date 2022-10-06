brick.SetColorMode(4, 4);
color_rgb = brick.ColorRGB(4);
% make it work through loop
% distance sensor turning | 
while brick.ColorRGB(1) == 0
    brick.MoveMotor('A', 20);
    brick.MoveMotor('D', 20);
    pause(1);
end