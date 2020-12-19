---
title: "Logic for CS - Predicate Logic"
tags: ["college","notes"]
summary: Notes for Predicate Logic in Computational Logic
---

## Predicate
These are the statements involving variables which are neither true or false until or unless the values are specified

In predicate logic, a statement is divided into two parts
1. Subject
2. Predicate

Usually we denote such statements using shorthand notation.

Example: "$X$ is greater than 3" = $G\{X\}$ where, 
- $G()$ denotes the predicate "is greater than 3"
- $X$ denotes subject

## Quantifiers
These are words that refer to quantities such as 'some' or 'all'. It tells for how many elements a given predicate is true.

Example: *all,some,many,none,few etc...* | "Can I have some water?"

### Types of quantifiers
1. Universal Quantifier ( $\forall$ )
2. Existential Quantifier ( $\exist$ )

Example 1: 
Let $p(x)$ be a statement, $x+1 > x$. Here $P(x)$ is true for all positive integer $x$, ie $\forall_{x} P(x)$_

Example 2:
Let $Q(x)$ br a statement $x<2$
- $Q(1): 1\ < \ 2$ (**True**)
- $Q(2): 2 \ <\ 2$ (**False**)

$\therefore$ there exist some $x$ for which $Q(x)$ is true. $\to \exist x P(x)$

## Logical Equivalences
Two logical statements involving predicates and quantifiers are said to be equivalent if and only if they have the same truth value in all the possible cases.

There are two impoortant equivalences involving quantifiers
- $\forall x(P(x) \land Q(x)) \equiv \forall x P(x) \land \forall xQ(x)$
- $\exist x(P(x) \lor Q(x)) \equiv \exist x P(x) \lor \exist x Q(x)$

## Semantic Tableaux
(Q)1. $\exist x\ (p_{x} \land q_{x}) , \forall x(p_{x} \to \neg q_{x})$ 

Check whether they are consistent ot each other.

Ans: 
1. $\exist x (P_{x} \land q_{x})$
2. $\forall x (p_{x} \to \neg q_{x})$

First Eliminate statements with $\exist x$

3. $p_{a} \land q_{x}$ (Here branch is $p_{a} \land q_{a} \to \textcolor{orange}{p_{a}} \And \textcolor{orange}{q_{a}}$)
4. $p_{a} \to \neg q_{a}$  
$\swarrow \ \ \ \ \ \  \searrow$   
5. $\neg p_{a} \textcolor{red}{\times}\ \ \ \ \ \ \neg q_{a} \textcolor{red}{\times}$

ie, means $\exist x (p_{x} \land q_{x})$ and $\forall x (p_{x} \to q_{x})$ is inconsistent to each other.

----

$Q_{2}$: $\exist_{x} (P_{x} \land Q_{x}), \exist_{x} (P_{x} \lor Q_{x}), \neg \exist_{x} P_{x}$ check whether consistent or not.  

1. $\exist_{x} (P_{x} \land Q_{x})$
2. $\exist_{x} (P_{x} \lor Q_{x})$
3. $\neg \exist_{x} P_{x} = \forall_{x} \neg P_{x}$
4. $P_{a} \land Q_{a}$
5. $P_{b} \lor Q_{b}$
6. $\neg P_{b}$  
$\swarrow \ \ \searrow$  
7. $P_{b} (\textcolor{red}{\times}) \ | \ Q_{b} (\textcolor{green}{\checkmark})$

$\therefore$ This 3 statements are consistent to each other at $\implies \ \ \ q_{b} = T, \neg P_{b} = T, Q_{a} = T, P_{a}=T$

---

$Q_{3}$:  Consider the following sentences,
1. $\forall_{x} \forall_{y} \forall_{z} \bigg[R(x,y) \land R(y,z) \to R(x,z) \bigg]$
2. $\forall_{x} \forall_{y} \bigg[R(x,y) \to R(y,x) \bigg]$
3. $\forall_{x} \exist_{y} \bigg[R(x,y) \bigg]$
4. $\forall_{x} \bigg[ R(x,y) \bigg]$

Show that ${1,2,3} \models {4}$,  

> ($\models$ is semantic/logical consequence)

Ans: Given $\forall_{x} \bigg[ R(x,x) \bigg]$  
First we _negate_ as usual.

$\neg \forall_{x} \Big(R(x,x)\Big)$  

5. $\exist_{x} \neg \Big(R(x,x) \Big)$
6. $\neg R(a,a) \textcolor{red}{\times} \ \ \implies$ (from 5)
7. $\exist_{y} R(a,y) \ \ \ \implies$ (3, Universal Instantiation)
8. $R(a,b) \ \textcolor{red}{\times} \ \ \ \ \implies$ (7, Existential Instantiation)
9. $R(a,b) \to R(b,a)\ \ \ \ \implies$ (substituted, x|a $\And$ y|b in 2)  

$\neg R(a,b) \textcolor{red}{\times} \ \ R(b,a) \textcolor{red}{\times}$

10. From $\Bigm(x|a, y|b, z|a \ in\  \small(1 \small)\Bigm)$

![ST-2](https://i.imgur.com/fO8gmvW.png)

This means that the negation of the conclusion is unsatisfiable, ie the conclusion has to be valid
