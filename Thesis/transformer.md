---
title: transformer
aliases: [transformers]
summary: 
created: 2021-08-07 23:39
modified: 2021-08-07 23:39
tags: []
---

[[recurrent neural networks]]
[[machine learning]]
[[encoder]]
[[decoder]]
[[attention]]

# Notes
The Transformer model leverages the concept of "attention" to draw global dependencies between input and output, allowing the model to focus on different parts of the input data to produce its output.

**ALT**
The Transformer model uses self-attention to compute representations of input sequences, which allows it to capture long-term dependencies and parallelize computation effectively.

- replaces traditional [[recurrent neural networks]] (RNNs) and [[convolutional neural network]]s (CNNs) with an entirely attention-based mechanism.

**Key components of the Transformer:**

1. **Multi-head Attention Mechanism**: This is the heart of the Transformer model. Instead of having a single set of attention weights, the model uses multiple sets, enabling it to focus on different parts of the input for different tasks or reasons.
    
2. **Positional Encoding**: Since the Transformer doesn't have any inherent notion of the order of tokens (unlike RNNs or LSTMs), positional encodings are added to give the model information about the position of each token in the sequence.
    
3. **Feed-forward Neural Networks**: After the attention mechanism, the Transformer has feed-forward neural networks in each layer.
    
4. **Normalization and Residual Connections**: Each sub-layer (like the attention mechanism or feed-forward neural network) in the model has a residual connection around it followed by a layer normalization. This helps in training deep networks.
    
5. **Stacked Layers**: Both the encoder and decoder of the Transformer have a defined number of identical layers stacked on top of each other.
    
6. **Encoder-Decoder Structure**: The original Transformer model has an encoder-decoder structure. The encoder takes in the input data and compresses the information into a 'context' which the decoder then uses to produce the output. However, many modern variants use only one of these (e.g., BERT uses encoders only, GPT uses decoders only).
    

**How it works in a nutshell:**

1. **Input**: The input data is first passed through an embedding layer. Positional encodings are added to these embeddings to give them a sense of order.
    
2. **Attention**: The data is then passed through several layers of multi-head attention mechanisms, allowing the model to focus on different parts of the input sequence when producing each element of the output sequence.
    
3. **Feed-forward & Repeat**: After attention, the data is passed through feed-forward neural networks. This process (attention + feed-forward) is repeated for each layer in the Transformer.
    
4. **Output**: If using an encoder-decoder structure, the encoder's final output becomes the "context" that the decoder uses to produce the final output.
    

**Advantages:**

1. **Parallelization**: Unlike RNNs, where computations are dependent on the previous step, transformers allow for parallelization as each position is processed simultaneously.
    
2. **Long-range dependencies**: The attention mechanism enables the model to consider the entire context, making it capable of handling long-range dependencies in the data.
    

**Disadvantages:**

1. **Computational cost**: The attention mechanism, especially in large models, can be computationally expensive.
    
2. **Lack of inherent sequential information**: Transformers rely heavily on positional encodings to understand order, unlike RNNs which inherently process data sequentially.


![[Pasted image 20230911095936.png|350]]

[[tokenize|tokenizer]]
![[Pasted image 20230911100027.png|450]]
- same tokenizer must be used to train model and then to generate text
- each token is represented as a multi-dimensional vector
![[Pasted image 20230911100232.png|500]]

![[Pasted image 20230911100307.png|450]]
Also need to encode the position of the word so word order can be maintained...
![[Pasted image 20230911100359.png|450]]

- have multiple [[attention heads]] in the encoder/decoder layers

Output has a prediction for the likelihood of EVERY word:
![[Pasted image 20230911100622.png]]


**Encoder** [[encoding model]]
encodes inputs ('prompts') with contextual understanding and produces one vector per input token
**Decoder**
Accepts input tokens and generates new tokens

There are bot
- Encoder Only models and (Bert)
- Encoder Decoder models (Bart)
- Decoder Only models (GPT, Llama)

# Resources
**Papers**
- Vaswani et al., 2017, "Attention is All You Need" by Google researchers