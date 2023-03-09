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
    
    % for the ft(lt) = 0, lt < lts
    for n = 1:1:length(lt)
        if lt(n) < lts
            normalize_tendon_tension = 0;
        % for the ft(lt) = 10(lt - tls) + 240(lt - lts)^2, lt >= lts
        else
            normalize_tendon_tension = 10*(lt(n) - lts) + 240*(lt(n) - lts)^2;
        end
    end

end
