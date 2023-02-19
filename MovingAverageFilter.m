% Importing Data

data = readmatrix("sampledata.csv"); 

BrokenEggCafe = data(:,1);
PurdueFederalUnion = data(:,2);
BigWoods = data(:,3);
Generation = data(:,4);

WangHall = BrokenEggCafe + PurdueFederalUnion + BigWoods;

% Visualization of Histograms of 1.) System Power Consumption and 2.) Solar Power Generation

figure(1)
histogram(WangHall,10)
title("Consumption")
ylabel("Frequency")
xlabel("Bin (Power Consumption) / kW")

figure(2)
histogram(Generation,10)
title("Generation")
ylabel("Frequency")
xlabel("Bin (Renewable Generation) / kW")

% Invoking Moving Average Built-in Function

windowSize1 = 4;
windowSize2 = 7;

b1 = (1/windowSize1)*ones(1,windowSize1);
b2 = (1/windowSize2)*ones(1,windowSize2);

a = 1;

ConsumeMovingAverage = filter(b1,a,WangHall)
GenMovingAverage = filter(b2,a,Generation)

% Initializing Time Variable
XDates = [datetime(2023,1,28:31) datetime(2023,2,1:46)];

% Visualization of Moving Average Data

figure(3)
plot(XDates, WangHall, XDates, ConsumeMovingAverage)
legend("Load Demand or Consumption", "Moving Average (windowSize=4)")
xlabel("Date")
ylabel("Power Consumption kW")
title("Consumption Moving Average")

figure(4)
plot(XDates, Generation, XDates, GenMovingAverage)
legend("Renewable Power Generation", "Moving Average (windowSize=7)")
xlabel("Date")
ylabel("Renewable Generation kW")
title("Generation Moving Average")

figure(5)
plot(XDates, ConsumeMovingAverage, "r", XDates, GenMovingAverage, "g")
legend("Consumption Moving Average", "Generation Moving Average")
xlabel("Date")
ylabel("Power / kW")
title("Generation and Consumption Computation of Moving Averages")

