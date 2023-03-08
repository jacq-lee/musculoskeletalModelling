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
    if lt < lts
        normalize_tendon_tension = 0;
    % for the ft(lt) = 10(lt - tls) + 240(lt - lts)^2, lt >= lts
    else
        normalize_tendon_tension = 10*(lt - lts) + 240*(lt - lts)^2;
end
