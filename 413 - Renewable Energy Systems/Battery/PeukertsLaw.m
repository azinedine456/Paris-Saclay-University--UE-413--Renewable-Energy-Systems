
CB=[c_bat 2*c_bat 3*c_bat 4*c_bat 5*c_bat]

hold on;
for i=CB
    Ibat=i;
    stp=c_bat*3600/i
    set_param('LIPO',"Solver","ode1","StopTime",num2str(stp))
    sim('LIPO');
    plot(ans.socsim.Data,flip(ans.vbat.Data))
end
hold off;