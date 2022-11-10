global key
InitKeyboard();
% brick = ConnectBrick('NAME');

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            brick.MoveMotor('A', -15); % forward
            brick.MoveMotor('D', -15);
            pause(0.5);
            brick.StopMotor('A');
            brick.StopMotor('D');
        case 'downarrow'
            brick.MoveMotor('A', 15); % backward
            brick.MoveMotor('D', 15);
            pause(0.5);
            brick.StopMotor('A');
            brick.StopMotor('D');
        case 'rightarrow' % turn right
            brick.MoveMotor('D', -15);
            pause(0.5);
            brick.StopMotor('A');
            brick.StopMotor('D');
        case 'leftarrow'
            brick.MoveMotor('A', -15); % turn left
            pause(0.5);
            brick.StopMotor('A');
            brick.StopMotor('D');
        case 'w'
            brick.MoveMotor('C', 3); % crane up
            pause(0.5);
            brick.StopMotor('C');
            pickUp = true;
        case 's'
            brick.MoveMotor('C', -3); % crane down
            pause(0.5);
            brick.StopMotor('C');
        case 0      % no key pressed
            disp('no key pressed');
        case 'q'    % quit button
            break;
    end
end
CloseKeyboard();
