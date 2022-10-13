mySonicSensor = sonicSensor(brick,3);
distance = readDistance(mySonicSensor);
disp distance

if (distance == 26)
    %intiate the turn left sequence
else
    %continue the robots movement
end