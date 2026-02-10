---
title: Coursera_Generative AI with Large Language Models
aliases: []
summary: 
created: 2023-09-11 10:22
modified: 2023-09-11 10:22
tags: [coursera, learning]
---
[[transformer]]
[[one shot inference]]
[[few shot inference]]
[[machine learning]]




### Prompting and prompt engineering
![[Pasted image 20230911102348.png]]

- [[greedy policy|greedy sampling]] vs. [[random sample|random sampling]]

### Generative AI project life cycle
![[Pasted image 20230913101232.png]]

[[temperature]] controls randomness - is applied to [[softmax function]]

![[Pasted image 20230918100335.png]]

As temperature increases so does randomness...usually set temperature between 0 and 1

[[Top `k`]] allows to select between a set of the most probable values for prediction.
- can be problematic if it is a very skewed distribution (i.e. one very obvious answer)
Can fix this by using [[Top `P`]]
- Sample from minimum set of tokens whose cumulative probability is greater or equal to `P`
- Can apply after applpying [[Top `k`]]

![[Pasted image 20230918101553.png]]
Different ways of measuring similarity:
![[Pasted image 20230919095404.png]]
- Magnitude can be useful in recommendation systems
- cosine similarity and dot product the same if vectors are normalized to length 1

### Summary
![[Pasted image 20230919101155.png]]

[[transformer|transformers]] consist of [[encoder only models]], [[encoder decoder models]], and [[decoder only models]]:

![[Pasted image 20230925102410.png]]

[[autoencoder]] is another term for [[autoencoder|encoder only models]].
- de-noising objective
- bi-directional representation of input sequence
**Good for**
- [[sentiment analysis]]
- named entity recognition
- word classification
**Examples**
- BERT
- ROBERTA

[[decoder only models]] are also known as [[decoder only models|autoregressive models]].
- do not know words after the token to be predicted...
- unidirectional context
- often used for text generation
- builds up statistical representation of language
![[Pasted image 20230925103229.png]]

**Use cases**
- text generation
- other emergent behavior
	- e.g. very large models

**Examples**
- GPT
- BLOOM


#### Comparison of architectures
![[Pasted image 20230925103802.png]]

#### Computation al Challenges
Can use [[quantization]] to  compress data:
![[Pasted image 20230925104519.png]]
![[Pasted image 20230925104556.png]]
![[Pasted image 20230925104607.png]]
![[Pasted image 20230925104637.png]]
![[Pasted image 20230926095551.png]]

![[Pasted image 20230926100302.png]]

### Week 1 Resources
#### **Transformer Architecture**
- [**Attention is All You Need**](https://arxiv.org/pdf/1706.03762) - This paper introduced the Transformer architecture, with the core “self-attention” mechanism. This article was the foundation for LLMs.
    
- [**BLOOM: BigScience 176B Model**](https://arxiv.org/abs/2211.05100) - BLOOM is a open-source LLM with 176B parameters (similar to GPT-4) trained in an open and transparent way. In this paper, the authors present a detailed discussion of the dataset and process used to train the model. You can also see a high-level overview of the model [here](https://bigscience.notion.site/BLOOM-BigScience-176B-Model-ad073ca07cdf479398d5f95d88e218c4).
    
- [**Vector Space Models**](https://www.coursera.org/learn/classification-vector-spaces-in-nlp/home/week/3) - Series of lessons from DeepLearning.AI's Natural Language Processing specialization discussing the basics of vector space models and their use in language modeling.
    
#### **Pre-training and scaling laws**
- [**Scaling Laws for Neural Language Models**](https://arxiv.org/abs/2001.08361) - empirical study by researchers at OpenAI exploring the scaling laws for large language models.
    
#### **Model architectures and pre-training objectives**
- [**What Language Model Architecture and Pretraining Objective Work Best for Zero-Shot Generalization?**](https://arxiv.org/pdf/2204.05832.pdf) - The paper examines modeling choices in large pre-trained language models and identifies the optimal approach for zero-shot generalization.
    
- [**HuggingFace Tasks**](https://huggingface.co/tasks) **and** [**Model Hub**](https://huggingface.co/models) - Collection of resources to tackle varying machine learning tasks using the HuggingFace library.
    
- [**LLaMA: Open and Efficient Foundation Language Models**](https://arxiv.org/pdf/2302.13971.pdf) - Article from Meta AI proposing Efficient LLMs (their model with 13B parameters outperform GPT3 with 175B parameters on most benchmarks)
    
#### **Scaling laws and compute-optimal models**
- [**Language Models are Few-Shot Learners**](https://arxiv.org/pdf/2005.14165.pdf) - This paper investigates the potential of few-shot learning in Large Language Models.
    
- [**Training Compute-Optimal Large Language Models**](https://arxiv.org/pdf/2203.15556.pdf) - Study from DeepMind to evaluate the optimal model size and number of tokens for training LLMs. Also known as “Chinchilla Paper”.
    
- [**BloombergGPT: A Large Language Model for Finance**](https://arxiv.org/pdf/2303.17564.pdf) - LLM trained specifically for the finance domain, a good example that tried to follow chinchilla laws.

## Week 2: Fine-tuning LLMs with instruction



# Resources
**Papers**