---
title: convolutional neural network
aliases: [CNN]
summary: 
created: 2021-08-07 22:51
modified: 2021-08-07 22:51
tags: []
---

[[machine learning]]
[[artificial neural network]]
[[autoencoder]]
[[max-pooling]]
[[image classification]]
[[object detection]]
[[semantic segmentation]]
[[locality]]
[[translation invariance]]
[[stride]]
[[padding]]

# Notes

- good for working with images
- [[translation invariance|translation invariant]]
- standard [[artificial neural network|ann]] does not make use of spatial features of image
-  we know that nearby pixels should be correlated ([[locality]])
-  we know that patterns can appear anywhere in the image
-  Early layers detect simple patterns (edges, textures)
-  Intermediate layers detect larger patterns (parts of face, part of objects, last layers detect the intended object)
-  Different types of convolution include
	-  valid convolution
	-  same convolution
	-  full convolution
	-  dilated convolution
	-  strided convolution
-  pooling reduces the size of the feature map and thus the network complexity
	-  [[max-pooling]]
	-  [[average pooling]]

![[Pasted image 20210807225902.png]]
![[Pasted image 20210807225945.png]]
![[Pasted image 20210807230152.png]]
![[Pasted image 20210807230445.png]]
![[Pasted image 20210807230629.png]]


# Resources