function burst_loss_p = Scenario1_a()
m = 64;
sum = 0;
traffic_load = 0.75;

q_m_1 = (64*traffic_load)^m/factorial(m);

for k = 0:m
    sum = sum + (64*traffic_load)^k/factorial(k);
end    
q_m_2 = sum;
q_m = q_m_1/q_m_2;

deflect_p = 0:0.1:1;
burst_loss_pq = (q_m)*(1-deflect_p + deflect_p.*q_m);
plot(deflect_p, burst_loss_pq,'DisplayName','Analysis','Marker','v');
legend('Analysis');
xlabel('Deflection Probability p ');
ylabel('Burst Loss Probability');
title('Approximate Model');

end

