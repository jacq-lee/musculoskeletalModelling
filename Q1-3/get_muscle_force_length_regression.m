function [force_length_regression] = get_muscle_force_length_regression()
    %%% TASK 2
    
    % Input Parameters
    % data(:,1): samples of an independent variable
    % data(:,2): corresponding samples of a dependent variable
    
    % Output
    % force_length_regression: the genered Gaussian model
    
    %     WRITE CODE HERE
    %      1) Use WebPlotDigitizer to extract force-length points
    %     from Winters et al. (2011) Figure 3C, which is on Learn. Click
    %     "View Data", select all, cut, and paste below. 
    %     2) Normalize the data so optimal length = 1 and peak = 1. 
    %     3) Return a Regression object that  uses Gaussian basis functions.
    
    % Define data points
    ta_active = [72.59171597633136, 9.559322033898312
                70.60355029585799, 3.4576271186440692
                68.18934911242603, 1.830508474576277
                68.57988165680473, 14.576271186440664
                68.61538461538461, 15.93220338983052
                69.57396449704142, 17.559322033898297
                69.6094674556213, 21.627118644067792
                70.7455621301775, 24.33898305084746
                71.59763313609467, 14.711864406779654
                69.6094674556213, 36.54237288135593
                68.57988165680473, 26.779661016949163
                67.0887573964497, 23.79661016949153
                66.62721893491124, 23.79661016949153
                66.16568047337277, 22.169491525423723
                68.61538461538461, 31.66101694915254
                67.94082840236686, 32.067796610169495
                66.62721893491124, 35.050847457627114
                67.4792899408284, 42.23728813559322
                66.59171597633136, 44.67796610169492
                65.59763313609467, 45.49152542372882
                64.46153846153845, 43.593220338983045
                64.46153846153845, 46.57627118644068
                63.32544378698225, 44.67796610169492
                67.15976331360946, 46.4406779661017
                67.15976331360946, 48.20338983050847
                66.87573964497041, 50.10169491525424
                66.59171597633136, 53.89830508474576
                64.60355029585799, 53.76271186440678
                64.81656804733727, 54.03389830508475
                66.27218934911242, 57.152542372881356
                65.59763313609467, 60.677966101694906
                63.6094674556213, 62.57627118644068
                62.61538461538461, 62.57627118644068
                61.017751479289934, 62.98305084745763
                62.29585798816567, 66.91525423728814
                62.61538461538461, 71.52542372881356
                64.28402366863905, 67.72881355932203
                64.10650887573964, 70.71186440677967
                63.6094674556213, 71.79661016949153
                63.6094674556213, 73.5593220338983
                63.360946745562124, 75.59322033898306
                62.899408284023664, 80.47457627118644
                62.402366863905314, 81.83050847457628
                62.61538461538461, 81.83050847457628
                61.869822485207095, 83.45762711864407
                61.05325443786982, 82.10169491525423
                61.05325443786982, 81.28813559322035
                60.556213017751475, 76.13559322033899
                59.420118343195256, 74.37288135593221
                59.27810650887574, 78.03389830508475
                58.88757396449704, 78.57627118644068
                59.065088757396445, 78.84745762711864
                59.065088757396445, 80.20338983050848
                60.27218934911242, 81.83050847457628
                61.12426035502958, 85.49152542372883
                60.23668639053254, 85.08474576271186
                59.3491124260355, 84.94915254237287
                59.31360946745561, 87.2542372881356
                59.7396449704142, 87.66101694915255
                60.37869822485206, 86.71186440677965
                59.3491124260355, 90.64406779661017
                58.5680473372781, 89.42372881355932
                58.31952662721893, 91.05084745762713
                57.360946745562124, 89.28813559322035
                56.721893491124256, 88.61016949152543
                56.47337278106508, 83.32203389830508
                56.47337278106508, 78.71186440677965
                56.08284023668639, 92
                56.36686390532544, 92.54237288135593
                55.83431952662721, 93.62711864406779
                55.72781065088757, 94.57627118644068
                56.508875739644964, 94.57627118644068
                56.47337278106508, 96.61016949152543
                56.22485207100591, 96.74576271186442
                55.37278106508875, 99.72881355932205
                54.34319526627218, 96.20338983050848
                54.34319526627218, 96.20338983050848
                53.881656804733716, 96.33898305084746
                53.59763313609467, 99.72881355932203
                53.242603550295854, 99.72881355932205
                52.81656804733727, 99.45762711864407
                53.02958579881656, 100.27118644067797
                52.74556213017751, 98.10169491525424
                52.53254437869822, 99.72881355932205
                52.1775147928994, 99.45762711864407
                51.467455621301774, 96.33898305084746
                51.14792899408284, 99.18644067796609
                50.68639053254437, 97.96610169491527
                50.40236686390532, 95.66101694915255
                50.22485207100591, 96.74576271186442
                50.01183431952662, 95.66101694915255
                49.44378698224852, 93.4915254237288
                48.698224852071, 92.13559322033899
                48.66272189349112, 94.84745762711864
                49.44378698224852, 99.59322033898306
                47.66863905325443, 96.61016949152543
                47.84615384615384, 89.42372881355932
                48.59171597633136, 87.79661016949153
                48.73372781065088, 84.54237288135593
                52.213017751479285, 91.32203389830508
                51.6094674556213, 90.91525423728814
                50.68639053254437, 91.32203389830508
                46.85207100591715, 86.30508474576271
                46.35502958579882, 85.49152542372882
                46.213017751479285, 86.98305084745763
                46.35502958579882, 89.69491525423729
                45.50295857988166, 86.98305084745763
                45.50295857988166, 81.83050847457628
                46.14201183431952, 80.20338983050848
                46.5680473372781, 79.79661016949153
                46.603550295857985, 80.7457627118644
                47.42011834319526, 79.66101694915255
                48.59171597633136, 79.66101694915255
                48.62721893491124, 76.94915254237287
                46.07100591715976, 76.27118644067797
                44.86390532544378, 76.27118644067797
                44.437869822485204, 72.88135593220339
                43.90532544378698, 72.20338983050848
                43.62130177514793, 75.59322033898306
                44.29585798816568, 68.27118644067797
                44.260355029585796, 66.23728813559322
                43.12426035502958, 66.37288135593221
                42.80473372781065, 63.389830508474574
                42.23668639053254, 62.71186440677967
                41.59763313609467, 59.86440677966101
                46.603550295857985, 59.45762711864407
                44.650887573964496, 64.20338983050847
                42.5207100591716, 51.72881355932202
                46.63905325443787, 52.94915254237287
                45.25443786982248, 53.4915254237288
                44.29585798816567, 48.06779661016951
                45.25443786982248, 51.864406779661024
                42.98224852071005, 42.64406779661017
                40.67455621301775, 42.23728813559322
                40.603550295857985, 41.83050847457626
                39.46745562130177, 48.610169491525426
                38.61538461538461, 34.64406779661016
                36.59171597633136, 34.64406779661017
                42.59171597633136, 35.72881355932202
                41.455621301775146, 27.45762711864407
                39.82248520710059, 29.491525423728802
                39.53846153846154, 29.762711864406768
                37.62130177514793, 24.610169491525426
                37.05325443786982, 25.694915254237287
                36.59171597633136, 18.64406779661016
                36.627218934911234, 17.559322033898297
                36.627218934911234, 12.406779661016955
                35.59763313609467, 12.949152542372886
                34.603550295857985, 12.677966101694892
                34.78106508875739, 17.830508474576263
                33.6094674556213, 8.610169491525426 ];
    ta_active_length = ta_active(:,1);
    ta_active_force = ta_active(:,2);
    
    % Normalization
    
    [M,I] = max(ta_active_force);   % Find the max force and its index
    
    % Divide by max force to scale force between 0 and 1
    normalized_ta_active_force = ta_active_force./M;

    % Scale length so length is 1 at max force   
    normalized_ta_active_length = ta_active_length/ta_active_length(I);

    % Regression with "fit" function with "gauss2" option as model type
    force_length_regression = fit(normalized_ta_active_length, normalized_ta_active_force, 'gauss2');
    figure;
    plot(force_length_regression, normalized_ta_active_length, normalized_ta_active_force);

end
