function [ mvs ] = MVS( x )
    x=[x(1),x(2),x(3),x(4),x(5),x(6),x(7),x(8),x(9),x(10),x(11),x(12),x(13),x(14),x(15),x(16),x(17),x(18),x(19),x(20),x(21),x(22),x(23),x(24),x(25),x(26),x(27),x(28),x(29),x(30),x(31),x(32),x(33),x(34),x(35),x(36),x(37),x(38),x(39),x(40),x(41),x(42),x(43),x(44),x(45),x(46),x(47),x(48),x(49),x(50)];
    
    %c4 = xlsread('Return_Equity.xlsx');
    
    e4=evalin('base','c4');
    D1 = 13.76-(1*x*e4)/100;
    
    %c2 = xlsread('coVariance.xlsx');
    e2=evalin('base','c2');
    D2 = 2.5799-sqrt(1*x*e2*x');
    
    %c1 = xlsread('coSkewness.xlsx');
    e1=evalin('base','c1');
    a = 1*x*e1*kron(x',x');
    b = 1*x*e2*x';
    D3=2.551903306-a/b^1.5;
    
    %c3 = xlsread('coKurtosisTrans.xlsx');
    e3=evalin('base','c3');
    a = 1*x*e3'*kron(kron(x',x'),x');
    b = 1*x*e2*x';
    D4=1.343341171-a/b^2;
    
    
    
    
    mvs = abs(D1/13.76)+abs(D2/2.5799)+abs(D3/2.551903306)+0*abs(D4/1.343341171);
    
    
        
    
    
    
   
   
    
   
end

