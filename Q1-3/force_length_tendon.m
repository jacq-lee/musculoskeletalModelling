function [normalize_tendon_tension] = force_length_tendon(lt)
    % y = normalize_tendon_tension
    % x = lt

    %%%% TASK 1

    % Input Parameters
    % lt: normalized length of tendon (series elastic element)

    % Output
    % normalized tension produced by tendon

    % WRITE YOUR CODE HERE
    
    lts = 1;
    
    normalize_tendon_tension = zeros(1,length(lt));
    
    for n = 1:1:length(lt)
        if lt(n) < lts 
            normalize_tendon_tension(n) = 0;
        else
            normalize_tendon_tension(n) = 10*(lt(n) - lts) + 240*(lt(n) - lts)^2;
        end
    end

end
