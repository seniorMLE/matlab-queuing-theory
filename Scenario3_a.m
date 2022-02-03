function burst_loss_p = Scenario3_a()
m = 32;
sum = 0;
deflect_p = 0.2;

traffic_load = 0.1:0.01:0.3;
o = m*traffic_load;
q = (o./(1+o)).*(1 - deflect_p + deflect_p*(o./(1+o))).*(1+(1-deflect_p)./o);
q

plot(traffic_load, q);
