% brick = ConnectBrick('NAME');
% DisconnectBrick('NAME');
brick.SetColorMode(2, 2);
% 1 = black
% 2 = 
% 3 = green
% 4 = yellow
% 5 = red

while 1
    pause(1);
    color = brick.ColorCode(2);
    if color == 1 % Go on black, put method or code for maze here
        brick.MoveMotor('A', -10);
        brick.MoveMotor('D', -10);
        if (wall)
            turn
    else if color == 5 % Stop on red, continue after 3 seconds
        brick.StopMotor('A');
        brick.StopMotor('D');
        pause (3)
        brick.MoveMotor('A', -10);
        brick.MoveMotor('D', -10);

    % Stop on Pick up Color | Need Color Code
    % else if color == _
    % brick.StopMotor('A');
    % brick.StopMotor('D');

    % Finish on color | Need Color code 
    % else if color == _ 
    % pause(1)
    % brick.StopMotor('A');
    % brick.StopMotor('D');


    end 
end
