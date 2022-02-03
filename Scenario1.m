function burst_loss_p = Scenario1()
m = 64;
sum = 0;
deflect_p = 0.2;
traffic_load = 0.62:0.01:0.8;
q_m_1 = (m*traffic_load).^m/factorial(m);

for k = 0:m
    sum = sum + (m*traffic_load).^k/factorial(k);
end    
q_m_2 = sum;

q_m = q_m_1./q_m_2;
disp(q_m_2);

burst_loss_pq = (q_m).*(1-deflect_p + deflect_p*q_m);
plot(traffic_load, burst_loss_pq);

plot(traffic_load, burst_loss_pq,'DisplayName','Analysis','Marker','v');
legend('Analysis');
xlabel('Traffic Load');
ylabel('Burst Loss Probability');
title('Approximate Model');
end

