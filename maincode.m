global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow' 
            disp('Up Arrow Pressed!');
            brick.MoveMotor('AB', -50);
            pause (.25);
            brick.StopMotor('AB');
            
        case 'downarrow'
            disp('Down Arrow Pressed!'); 
            brick.MoveMotor('AB', 50);
            pause (.25);
            brick.StopMotor('AB');
            
        case 'leftarrow'
            disp('Left Arrow Pressed!');
            brick.MoveMotor('A', -50);
            pause (.25);
            brick.StopMotor('A');
            
        case 'rightarrow'
            disp('Right Arrow Pressed!'); 
            brick.MoveMotor('B', -50);
            pause (.25);
            brick.StopMotor('B');
            
        case 'l'
            disp('l Key Pressed!');
            brick.MoveMotor('C', 10);
            pause (.25);
            brick.StopMotor('C');
            
        case 'd'
            disp('d Key Pressed!');
            brick.MoveMotor('C', -10);
            pause (.25);
            brick.StopMotor('C');
            
        case 0  
            disp('No Key Pressed!'); 
            brick.StopAllMotors;
            
        case 'q'    
            break; 
    end
    
end
CloseKeyboard(); 
