---
title: K-means clustering
aliases: []
summary: 
created: 2021-08-08 10:54
modified: 2021-08-08 10:54
tags: [algorithm]
---

[[clustering]]
[[machine learning]]
[[classification]]
[[hierarchical clustering]]
[[algorithms]]
[[K-means clustering]]
[[logistic regression]]
[[linear regression]]
[[neural network]]
[[gradient descent]]
[[decision tree]]

# Notes
[K-means](http://en.wikipedia.org/wiki/K_means) is a clustering algorithm that tries to partition a set of points into K sets (clusters) such that the points in each cluster tend to be near each other. 

- It is unsupervised because the points have no external classification.
- randomly initialize a certain number of starting points
	- can get different clusters in different runs
	- can average the results across multiple runs
- often do not know how many clusters there should be
	- another case of [[bias-variance tradeoff]]...more clusters -> lower [[variance]]

From [[Andrew Ng]]
#### K-Means Clustering: Group Think

If you’re standing close to others at a party, it’s likely that you have something in common. This is the idea behind using k-means clustering to split data points into groups. Whether the groups formed via human agency or some other force, this algorithm will find them. 

From detonations to dial tones: American physicist Stuart Lloyd, an alumnus of both Bell Labs’ iconic innovation factory and the Manhattan Project that invented the atomic bomb, first proposed k-means clustering in 1957 to distribute information within digital signals. He didn’t [publish](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgCgfW24nhyG8HbZKlW4KTqgg79GgvZW7XFJbJ5hkqrdW2b-Q0y7zD3jPW5HSxy16TvWkHW2MShYf8R29x4W3q8XYv4dNhdHW37l7ts5062DyW4Xbpyj84V1thW26zV3X3QpsK3N9ksYhrF1cgSW1N5Nsf1yw1D8W2rnk_M7ZH75HW1b2qnN3p_YSTW4bDFjF4-1X1xW1_FCZs8vp5gmW2Z9TTC4KTNsRV5Lkb28xl5mZW6v3fGc5nRCfzN75QWF4NlD8kW3C_j972bhqZVVMQd7778FHP2W1syPKt4P3cQRW52C1mK5PvGPf33Fx1) it until 1982. Meanwhile, American statistician Edward Forgy [described](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgRhtW7N-bwn7y6zLdW6FpGxq957m7WW43qdhW6cy301Vwx1KS6Qn1D2W8NS01_5h3T9MW2-Bhxc2L4q7lW7rqH8M2B-XwYW663MvM1WMCvrV62Xyk4_bdcjW6W9PWj5sttmYW4L13PR7HypKwW56FPPr909RQ3W4Rh-Hm8vzK_5N2ts1LQF568wW1hdF6F1hyYq6W335LQ76vkz8NW7WYXVZ3HWfV-W2td75g8YyzzyW1WXyvP6jbMF4W2g_WwG6zljQKW4mlRBL7vsdvpW4FTmPN3pY3sDW8VgGYr3dYcgyN35hjx3bbZyl2561) a similar method in 1965, leading to its alternative name, the Lloyd-Forgy algorithm. 

Finding the center: Consider breaking up the party into like-minded working groups. Given the positions of attendees in the room and the number of groups to be formed, k-means clustering can divide the attendees into groups of roughly equal size, each gathered around a central point, or centroid.

-   During training, the algorithm initially designates k centroids by randomly choosing k people. (K must be chosen manually, and finding an optimal value is not always trivial.) Then it grows k clusters by associating each person to the closest centroid.
-   For each cluster, it computes the mean position of all people assigned to the group and designates the mean position as the new centroid. Each new centroid probably isn’t occupied by a person, but so what? People tend to gather around the chocolate fondue.
-   Having calculated new centroids, the algorithm reassigns individuals to the centroid closest to them. Then it computes new centroids, adjusts clusters, and so on, until the centroids (and the groups around them) no longer shift. From there, assigning newcomers to the right cluster is easy. Let them take their place in the room and look for the nearest centroid.
-   Be forewarned: Given the initial random centroid assignments, you may not end up in the same group as that cute data-centric AI specialist you were hoping to be with. The algorithm does a good job, but it’s not guaranteed to find the best solution. Better luck at the next party!

Different distances: Of course the distance between clustered objects doesn’t need to be spatial. Any measure between two vectors will do. For instance, rather than grouping partygoers according to physical proximity, k-means clustering can divide them by their outfits, occupations, or other attributes. Online shops use it to partition customers based on their preferences or behavior, and astronomers to group stars of the same type.

Power to the data points: The idea has spawned a few notable variations:

-   [K-medoids](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKn53q3n_V1-WJV7CgHg4N8SgF9DC4JsgW62YsCb97XFwGW64n89z8MhnfTW2sBK7m7ZM1KNW6bQf2S511GrfW5ynnqF6MF9L_W6q_-Qv8bw-c-W1R2h_T8kMlSNN4btqTWTMzJhW7kfDGZ8FD2w_W34Y73t1qrSb2W1lThvv1c0mnKTjz4g7rdR4WW1Gk81555TJN2VZlYT119LmhKW46rGxg2P_75nW3ZpB-g6SMQ1TW2wrC2c1sGDL4N2wdcJ98yL9BW1-Cm2Y7_4kw8W28d7NF24ySczW7BqTvq7cpSmtW6xh4Dd8-MttWW1MYfs-4Vzl8GW84jdKZ3MTQypW1vQVYg5bNJZ53nN51) use actual data points as centroids rather than mean positions in a given cluster. The medoids are points that minimize the distance to all other points in their cluster. This variation is more interpretable because the centroids are always data points.
-   [Fuzzy C-Means Clustering](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgV_YW7NDzl58t7ns4VPpGhd5xWcqpW2MqjK_5vzmR4W3Ddf8D4GgkLKVtZ4lK9hy4RYW8SM7KG2BDPK3W7XdrVJ8nL5njW2Q2cLc2-McXjW9dljJ76JZrdMW4Zhwm26p_1p6W3J7qJN4vK2_3W7rDThR1fH8P7W3ZN2CV7rtWLSW4n66b68Qv4M4Vtcn-X6pn9_fW8nvQnq3hzrmKW9ktv1L8Xf1t8N6-WpqSTTx4LW9fQnKN1027xfW5QssWz5htQ32W7-vph68tDlTzW5BG7mx3Rzj_0N6c_1YVT6V6fW5LwZX32GyFCj33C71) enables the data points to participate in multiple clusters to varying degrees. It replaces hard cluster assignments with degrees of membership depending on distance from the centroids.

Revelry in n dimensions: Nonetheless, the algorithm in its original form remains widely useful — especially because, as an unsupervised algorithm, it doesn’t require gathering potentially expensive labeled data. It’s also ever faster to use. For instance, machine learning libraries including scikit-learn benefit from the 2002 addition of [kd-trees](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgRtdW5Myccm7KjwnKVZCrKr3y6814W1rpK_R21h9Z1Vmv5gy1C9mLLN4w9dGZRVhB6W7T-Kmm56NtZ0VJnJ_57xhvRBW7HC66Z4GCQtbVDV2232kWpzXW3_4vhP3MldsTW3MlM501HBDPnVJCfWb7yngKlVhvhvq9dxlj5W6lHxTJ6LgH6QVhcS929jY0TlW9ls2-g2M026gW72VmfR1fwwCRW3Nvl0W3NXJ-FW22HGjh5Xd32PN9k6_W5Xxn9QW5b3t0M802JnnW63qCvx5l6YzcVckHsf3rvzMkW8gL-VX4gdtrZ38bq1) that partition high-dimensional data extremely quickly. By the way, if you throw any high-dimensional parties, we’d love to be on the guest list.

# Resources