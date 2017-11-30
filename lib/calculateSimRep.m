function [ simRep ] = calculateSimRep( clip,clipSeeds )
%Calculates the similarity representation for given clip according to seed
%clips

simRep = [];

for i=1:size(clipSeeds, 1)    
    dist = pdist2(clip, double(clipSeeds(i,:)));
    simRep = [simRep dist];
end

simRep = (simRep - min(simRep)) / (max(simRep) - min(simRep));

end

