% select seeds as cluster centers

class_no = max(train_labels);

clusterNo = 20;

clusterSeeds = [];
% find cluster centers from kmeans
for i=1:class_no
	indices = find(train_labels == i);
    class = train_data(indices, :);
       
    [C, I] = yael_kmeans(single(class'), clusterNo, 'niter', 50);
	
    clusterSeeds = [clusterSeeds;C'];
end
