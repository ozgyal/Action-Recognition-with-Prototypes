# Action-Recognition-with-Prototypes

This code includes the implementation of ["Action Recognition with Prototypes"](http://ieeexplore.ieee.org/document/7960314/) paper which is published in SIU 2017. You can find the English version [here](http://repository.bilkent.edu.tr/bitstream/handle/11693/30163/PROTOTYPES%20EXEMPLAR%20BASED%20VIDEO%20REPRESENTATION.pdf?sequence=1). In order to have prototypes and prototype representations of the data, it is enough to run the code by using "run.m" script. It will start to find prototypes from training data by using k-means cluster centers and then calculates the representations as a very simple process. For other selection methods, which are shown in the figure below, please refer to mentioned papers.

<center><img src="https://raw.githubusercontent.com/ozgyal/Action-Recognition-with-Prototypes/master/proSelection.png" width="500" height="500"/></center>

In order to apply k-means clustering, please download [INRIA's YAEL library](https://gforge.inria.fr/frs/?group_id=2151).