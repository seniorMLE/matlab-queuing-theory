function burst_loss_p = Scenario1_b()
sum = 0;
deflect_p = 0.2;
traffic_load = 0.75;
q_m_1 = [];
q_m_2 = [];
q_m = [];
for m=0:64
    q_m_11 = (m*traffic_load)^m/factorial(m);
    q_m_1(end+1) = q_m_11;
    for k = 0:m
        sum = sum + (m*traffic_load).^k/factorial(k);
    end    
    q_m_2(end+1) = sum;    
end    

q_m = q_m_1./q_m_2;
disp(q_m);
m=0:64;
burst_loss_pq = (q_m).*(1-deflect_p + deflect_p.*q_m);
plot(m, burst_loss_pq,'DisplayName','Analysis','Marker','v');
legend('Analysis');
xlabel('Number of wavelength');
ylabel('Burst Loss Probability');
title('Approximate Model');

end

