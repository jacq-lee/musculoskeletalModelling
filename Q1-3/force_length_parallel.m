function [normalize_PE_force] = force_length_parallel(lm)
    %%%% TASK 1
    
    % Input Parameters
    % lm: normalized length of muscle (contractile element)
    
    % Output
    % normalized force produced by parallel elastic element
    
    % WRITE YOUR CODE HERE

    lpes = 1;
    normalize_PE_force = zeros(1,length(lm));

    for n = 1:1:length(lm)
        if lm(n) < lpes
            normalize_PE_force(n) = 0;
        else 
            normalize_PE_force(n) = (3*(lm(n)-lpes)^2)/(0.6+lm(n)-lpes);
        
        end
    end

end
