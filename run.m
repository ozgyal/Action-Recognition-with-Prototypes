% This is the main process script.
addpath('lib')

% Select protoypes from train data
selectSeeds

% Use these protoypes in order to calculate new representations of train
% and test data
calculateRep
