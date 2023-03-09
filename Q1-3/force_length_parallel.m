function [normalize_PE_force] = force_length_parallel(lm)
    %%%% TASK 1
    
    lpes = 1;
    
    % Input Parameters
    % lm: normalized length of muscle (contractile element)
    
    % Output
    % normalized force produced by parallel elastic element
    
    % WRITE YOUR CODE HERE
    
    for n = 1:1:length(lm)
        if lm(n) < lpes
            normalize_PE_force = 0;
        else 
            normalize_PE_force = (3*(lm(n)-lpes)^2)/(0.6+lm(n)-lpes);
        
        end
    end

end
