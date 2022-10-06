brick.GyroCalibrate(1);
pause(1);

brick.MoveMotor('A', 25); % turn right
brick.MoveMotor('D', -25);
pause(1);
brick.StopMotor('A');
brick.StopMotor('D');

angle = brick.GyroAngle(1);

display(angle);