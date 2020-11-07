function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


Z=X(y==1,:);
A=X(y==0,:);
plot(Z(:,1),Z(:,2),"k+",'LineWidth', 2, 'MarkerSize', 7)

hold on;
plot(A(:,1),A(:,2),"ko",'MarkerFaceColor', 'y','MarkerSize', 7)



% =========================================================================
xlabel("Quiz 1");
ylabel("Quiz 2");
legend("Successful","Failed");


hold off;

end
