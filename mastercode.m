% brick = ConnectBrick('NAME');
% DisconnectBrick('NAME');
% 1 = black
% 2 = blue
% 3 = green
% 4 = yellow
% 5 = red
global pickUp
pickUp = false;
distance = 0;
brick.SetColorMode(2, 2);

while 1
    color = brick.ColorCode(2);
    pause(0.1);
    if color == 5               % Stop on red, continue after 1 seconds
       brick.StopAllMotors();
       pause (1);
       brick.MoveMotor('A', 20);
       brick.MoveMotor('D', 20);
       pause (2);
    elseif color == 3       % stop on green 
       brick.StopAllMotors();
       keyboard;
    elseif color == 2 && pickUp == true % only stop on blue if pickup is true
       brick.StopAllMotors();
       keyboard;
    end
    if color == 1 || color == 4 || (color == 2 && pickUp == false) % Go on black or yellow or blue
        distance = brick.UltrasonicDist(3);
        touch = brick.TouchPressed(1);
        if touch                          % if button is pressed turn left
           brick.MoveMotor('A', -30);
           brick.MoveMotor('D', -30); 
           pause(1.5);
           brick.MoveMotor('A', -25);
           brick.MoveMotor('D', 25);
           pause(1.5);
           brick.MoveMotor('A', 30);
           brick.MoveMotor('D', 30); 
           pause(1);
           brick.StopAllMotors();
    elseif distance > 50                    % if right is open, turn right
           brick.MoveMotor('A', 25);
           brick.MoveMotor('D', 25);
           pause(1.5);
           brick.StopAllMotors('Brake');
           brick.MoveMotor('A', 25); 
           brick.MoveMotor('D', -25);
           pause(1.5);
           scanGround = 0;
               while scanGround <= 15
                  color = brick.ColorCode(2); 
                  brick.MoveMotor('A', 30);
                  brick.MoveMotor('D', 30);
                  pause(0.1);
                  if color == 5
                      brick.StopAllMotors('Brake');
                      pause (1);
                      brick.MoveMotor('A', 20);
                      brick.MoveMotor('D', 20);
                      pause(2);
                      break
                  end
                  scanGround = scanGround + 1;
               end
               color = brick.ColorCode(2);
        elseif distance < 10                   % if too close to wall
           brick.StopAllMotors();
           pause(0.5);
           brick.MoveMotor('D', -20);
           pause(1.0);
           brick.StopMotor('D');
           brick.MoveMotor('A', -20);
           pause(1.6);
        elseif distance > 25 && distance < 35
            brick.StopAllMotors();
            pause(0.5);
            brick.MoveMotor('A', -20);
            pause(1);
            brick.StopMotor('A');
            brick.MoveMotor('D', -20);
            pause(1.4);
            brick.MoveMotor('A', 25); 
            brick.MoveMotor('D', 25);
            pause(0.5);
        end
        brick.MoveMotor('A', 30.5);
        brick.MoveMotor('D', 30);
        pause(0.5);
    end


end
