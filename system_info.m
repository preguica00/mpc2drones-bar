function [H,Ts,drone1_info, drone2_info, bar_info] = system_info
    
    H=10;
    Ts = 0.3;
    
    id1_u1 = 1:H;
    id1_u2 = (1:H) + H;
    id1_theta1= (1:H) + 2*H;
    id1_dottheta1 = (1:H) + 3*H;
    
    id2_u3= (1:H) + 4*H;
    id2_u4 = (1:H) + 5*H;
    id2_theta2= (1:H) + 6*H;
    id2_dottheta2 = (1:H) + 7*H;
    
    idbar_x = (1:H) + 8*H;
    idbar_z = (1:H) + 9*H;
    idbar_dotx= (1:H) + 10*H;
    idbar_dotz = (1:H) + 11*H;
    idbar_theta= (1:H) + 12*H;
    idbar_dottheta = (1:H) + 13*H;

    
    drone1_info=[id1_u1;id1_u2;id1_theta1;id1_dottheta1];
    
    drone2_info=[id2_u3;id2_u4;id2_theta2;id2_dottheta2];
    
    bar_info = [idbar_x;idbar_z;idbar_dotx;idbar_dotz;idbar_theta;idbar_dottheta];
    
end

