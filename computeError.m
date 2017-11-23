function error = computeError(Xtest, ytest, theta, lambda)
  % STEP 1, map the Xtest to polynomial of its values
  X_ploy = polyFeatures(Xtest, 8);
  X = [ones(size(X_ploy, 1), 1) X_ploy];
  [J grad] = linearRegCostFunction(X, ytest, theta, 0);
  error = J;
endfunction;