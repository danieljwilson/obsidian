---
title: F-score
aliases: [F-measure]
summary: 
created: 2021-11-30 10:05
modified: 2021-11-30 10:05
tags: []
---

[[F-test]]
[[statistics]]
[[precision]]
[[F1 score]]
[[binary classification]]

# Notes
Measure of test [[accuracy]] calculated from the [[precision]] and [[recall]] of the test.

![[Pasted image 20211130100836.png]]

- often used in the field of information retrieval for measuring search, document classification and query classification
- earlier work focused primarily on the [[F1 score]], but lately performance goals may place more emphasis on either [[precision]] or [[recall]] ($F_\beta$)
- used in [[machine learning]]
- The name F-measure is believed to be named after a different F function in Van Rijsbergen's book, when introduced to the Fourth [Message Understanding Conference](https://en.wikipedia.org/wiki/Message_Understanding_Conference "Message Understanding Conference") (MUC-4, 1992)

**Critiques**
- ==does not take true negatives into account==
	- can be misleading for unbalanced classes
- gives equal importance to [[precision]] and [[recall]]

# Resources
**Papers**