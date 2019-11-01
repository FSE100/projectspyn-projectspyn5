global key
InitKeyboard();

x = distance == brick.UltrasonicDist(2);

while distance > 12
    brick.MoveMotor ('AB', -50);
    distance = brick.UltrasonicDist(2);
    disp(distance);
    if distance < 12
        brick.StopMotor('AB')
        brick.MoveMotor('B', -50)
        
        distance = brick.UltrasonicDist(2);
        disp(distance);
        if distance > 50
            brick.StopAllMotors
            brick.MoveMotor('A', 50);
            pause(2);
        end
    end
end 
