% Fitness function of matrix inversion
% Search space: -5 < x(i) < 5

function [Fit] = fitness(Pop, A)

    [lpop,lstring]=size(Pop); % zistenie velkosti matrice Pop -> pocet riadkov, stlpcov
    oneM=[1 0 0; 0 1 0; 0 0 1]; % jednotkova matica 
    
    for i=1:lpop
        invM=reshape(Pop(i,:), [3 3]); % vytvorenie inverznej matice z kazdeho jedneho jedinca z populacie
        multiM=A*invM; % vynasobenie matic medzi sebou
        diff=abs(multiM - oneM); % rozdiel hodnot matic
        Fit(i)=sum(diff(:)); % scitanie rozdielu matic
    end
    
end