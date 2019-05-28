clear all
X = [3 9 27]; % dependent vectors of interest
Y = [10 8 6];
Z = [4 4 4];
t = [1 2 3]; % independent vector
figure
hold on % allow all vectors to be plotted in same
% figure
plot(t, X, "blue", t, Y, "red", t, Z, "green")
title("Plot of Distance over Time") % title
ylabel("Distance (m)") % label for y axis
xlabel("Time (s)") % label for x axis
legend("Trial 1", "Trial 2", "Trial 3")
legend("Location","NorthWest") % move legend to upper left