
classNo = max(train_labels);



%% for train data
parfor i=1:classNo
	indices = find(train_labels == i);
	class = train_data(indices, :);
	clipNo = size(class, 1);
	sim = [];
	for j=1:clipNo
		sim = [sim;calculateSimRep(class(j, :), clusterSeeds)];
	end
	train_sim{i, 1} = sim;
	display(['In class: ' num2str(i)])
end

train_sim_mat = zeros(size(train_data, 1), size(clusterSeeds, 1));

for i=1:classNo
	class = train_sim{i, 1};
	indices = find(train_labels == i);
	train_sim_mat(indices, :) = class;
end

disp('Train is finished.....')

%% for test data
parfor i=1:classNo
	indices = find(test_labels == i);
	class = test_data(indices, :);
	clipNo = size(class, 1);
	sim = [];
	for j=1:clipNo
		sim = [sim;calculateSimRep(class(j, :), clusterSeeds)];
	end
	test_sim{i, 1} = sim;
	display(['In class: ' num2str(i)])
end

test_sim_mat = zeros(size(test_data, 1), size(clusterSeeds, 1));

for i=1:classNo
	class = test_sim{i, 1};
	indices = find(test_labels == i);
	test_sim_mat(indices, :) = class;
end

disp('Test is finished.....')