% brick = ConnectBrick('NAME');
% DisconnectBrick('NAME');
distance = 0;
brick.SetColorMode(2, 2);
touch 
% 1 = black
% 2 = blue
% 3 = green
% 4 = yellow
% 5 = red

while 1
    pause(0.5);
    color = brick.ColorCode(2);
    if color == 1           % Go on black, put method or code for maze here
        distance = brick.UltrasonicDist(3);
        touch = brick.TouchPressed(1);
        if touch                           % if button is pressed turn left
           brick.StopMotor('A');
           brick.StopMotor('D'); 
        end
     %   if distance > 30                    % if right is open, turn right
      %     brick.MoveMotor('A', -25); % turn left
       %    brick.MoveMotor('D', 25);
        %   pause(1.3);
         %  brick.StopMotor('A');
          % brick.StopMotor('D'); 
      %  end
        brick.MoveMotor('A', -30);
        brick.MoveMotor('D', -30);
    elseif color == 5 % Stop on red, continue after 3 seconds
        brick.StopMotor('A');
        brick.StopMotor('D');
        pause (3);
        brick.MoveMotor('A', -15);
        brick.MoveMotor('D', -15);
        pause (3);
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
