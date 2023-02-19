
% Importing the Data

data = readmatrix("sampledata.csv"); 

BrokenEggCafe = data(:,1);
PurdueFederalUnion = data(:,2);
BigWoods = data(:,3);
Generation = data(:,4);

% Initializing a Time Variables to facilitate visualization
XDates = [datetime(2023,1,28:31) datetime(2023,2,1:46)]
XDate1 = [datetime(2023,1,28:31) datetime(2023,2,1:3)]

% Visualization of Data

% Visualization of Tenant 50-Day Power Consumption across Calendar
figure(1)
plot(XDates, BrokenEggCafe, XDates, PurdueFederalUnion, XDates, BigWoods)
title('Wang Hall 50-day Power Consumption kW')
legend("Broken Egg Cafe", "Purdue Federal Credit Union", "Big Woods Cafe")
xlabel("Dates")
ylabel("kW")

% Visualization of Tenant Weekly Power Consumption across Calendar
figure(2)
plot(XDate1, BrokenEggCafe(1:7,1), XDate1, PurdueFederalUnion(1:7,1), XDate1, BigWoods(1:7,1))
title('Wang Hall 7-day Power Consumption kW')
legend("Broken Egg Cafe", "Purdue Federal Credit Union", "Big Woods Cafe")
xlabel("Dates")
ylabel("kW")

% Visualization of Tenant Monthly Power Consumption across Calendar
figure(3)
plot(XDates, BrokenEggCafe, XDates, PurdueFederalUnion, XDates, BigWoods)
xlim([datetime(2023,1,28) datetime(2023,2,28)])
title('Wang Hall Daily 1/28-2/28  Power Consumption kW')
legend("Broken Egg Cafe", "Purdue Federal Credit Union", "Big Woods Cafe")
xlabel("Dates")
ylabel("kW")

% Computation of Total Power Consumption of Wang Hall System
WangHall = BrokenEggCafe + PurdueFederalUnion + BigWoods;

% Tenant Percentage Share in Power Consumption
figure(4)
PieData = [sum(BrokenEggCafe)/sum(WangHall) sum(PurdueFederalUnion)/sum(WangHall) sum(BigWoods)/sum(WangHall)]
labels = {"Broken Egg Cafe", "Purdue Federal Credit Union", "Big Woods Cafe"}
pie(PieData)
legend(labels)

% Visualization of Generation Curve
figure(5)
plot(XDates, Generation, 'g')
legend("Generation")
title("Renewable Generation by Solar Panel")
xlabel("Dates")
ylabel("kW")

% Visualization of Total Consumption Curve versus Generation Curve with
% tenant small consumption detail features
figure(6)
plot(XDates, WangHall, XDates, BrokenEggCafe, XDates, PurdueFederalUnion, XDates, BigWoods, XDates, Generation, 'g')
title('Wang Hall 6-day Power Consumption kW')
legend("Total of Wang Hall","Broken Egg Cafe", "Purdue Federal Credit Union", "Big Woods Cafe", "Generation")
xlabel("Dates")
ylabel("kW")

% Daily Consumption Ratio Pie Chart for Tenants
figure(7)
jan28 = [BrokenEggCafe(1) PurdueFederalUnion(1) BigWoods(1)];
jan29 = [BrokenEggCafe(2) PurdueFederalUnion(2) BigWoods(2)];
jan30 = [BrokenEggCafe(3) PurdueFederalUnion(3) BigWoods(3)];
jan31 = [BrokenEggCafe(4) PurdueFederalUnion(4) BigWoods(4)];
feb1 = [BrokenEggCafe(5) PurdueFederalUnion(5) BigWoods(5)];
feb2 = [BrokenEggCafe(6) PurdueFederalUnion(6) BigWoods(6)];

t = tiledlayout(2,3,'TileSpacing','compact');

ax1 = nexttile;
pie(ax1,jan28)
title('January 28th')

ax2 = nexttile;
pie(ax2,jan29)
title('January 29th')

ax3 = nexttile;
pie(ax3,jan30)
title('January 30th')

ax4 = nexttile;
pie(ax4,jan31)
title('January 31st')

ax5 = nexttile;
pie(ax5,feb1)
title('February 1st')

ax6 = nexttile;
pie(ax6,feb2)
title('February 2nd')

labels = {"Broken Egg Cafe", "Purdue Federal Credit Union", "Big Woods Cafe"};
lgd = legend(labels);
lgd.Layout.Tile = 'east';


% System Ratio of Consumption:Generation
figure(8)
Ratio = [sum(WangHall) sum(Generation)]
explode = [0 1]
pie(Ratio,explode)
legend("Consumption %", "Generation %")



