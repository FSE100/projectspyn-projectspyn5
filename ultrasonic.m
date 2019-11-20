% global key
% InitKeyboard();

rightdistance = 0;
leftdistance = 0;

while 1
    brick.SetColorMode(3, 2);
    color = brick.ColorCode(3);
    disp(color);
    distance = brick.UltrasonicDist(2);
    rightdistance = 0;
    leftdistance = 0;
    brick.MoveMotor('A', -35);
    brick.MoveMotor('B', -30); 
    
    if color == 5 %red
        brick.StopAllMotors();
        pause(5);
        brick.MoveMotor ('A', -30);
        brick.MoveMotor('B', -35)
        color = brick.ColorCode(3);
        disp(color);
        brick.beep; 
       
    end
    if color == 3 %blue
        brick.StopAllMotors();
        color = brick.ColorCode(3);
        disp(color);
        brick.beep; 
        
    end
    if color == 3 %green
        brick.StopAllMotors();
        color = brick.ColorCode(3);
        disp(color);
        brick.beep; 
        
    end
    
    if distance > 35
        brick.MoveMotor ('A', -30);
        brick.MoveMotor('B', -35)
        distance = brick.UltrasonicDist(2);
        disp(distance);
    else %distance < 30
        brick.StopMotor('AB', 3);
        brick.MoveMotor('B', -30); %turning right 90
        pause(2.3);
        brick.StopMotor('B', 3);
        rightdistance = brick.UltrasonicDist(2);
        disp(rightdistance);
        brick.MoveMotor('A', -30); %turning left 180
        pause(3.8);
        brick.StopMotor('A', 3);
        leftdistance = brick.UltrasonicDist(2);
        disp(leftdistance);
    end
    if rightdistance&&leftdistance < 20;
        brick.MoveMotor('A', -30);
        pause(2);
    end 
    if rightdistance > leftdistance;
        brick.MoveMotor('B', -30);
        pause(3.7);
        brick.StopMotor('B', 3); 
        brick.MoveMotor('A', -35);
        brick.MoveMotor('B', -30);
        
    %else 
        %brick.MoveMotor('A', -35);
        %brick.MoveMotor('B', -30); 

    end
end
