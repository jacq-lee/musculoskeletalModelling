function [normalize_PE_force] = force_length_parallel(lm)
    %%%% TASK 1
    
    Ipes = 1;
    
    % Input Parameters
    % lm: normalized length of muscle (contractile element)
    
    % Output
    % normalized force produced by parallel elastic element
    
    % WRITE YOUR CODE HERE
    
    if Im < Ipes
        normalize_PE_force = 0;
    else 
        normalize_PE_force = (3*(Im-Ipes)^2)/(0.6+Im-Ipes);
    
    end

end