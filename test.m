% global key
% InitKeyboard();

rightdistance = 0;
leftdistance = 0;

while 1
    distance = brick.UltrasonicDist(2);
    if distance > 40
        brick.MoveMotor ('AB', -50);
        distance = brick.UltrasonicDist(2);
        disp(distance);
    else %distance < 30
        brick.StopMotor('AB');
        brick.MoveMotor('B', -50); %turning right
        pause(3);
        brick.StopMotor('B');
        rightdistance = brick.UltrasonicDist(2);
        disp(rightdistance);
        brick.MoveMotor('A', -50); %turning left
        pause(6); 
        brick.StopMotor('A');
        leftdistance = brick.UltrasonicDist(2);
        disp(leftdistance);
    end
    
    if rightdistance > leftdistance
        brick.MoveMotor('B', -50);
        pause(8);
        brick.StopMotor('B');
        brick.MoveMotor('AB', -50);
        
    else 
        brick.MoveMotor('AB', -50);

    end
end



 
