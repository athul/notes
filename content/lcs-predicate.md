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
1. $\exist x\ (p_{x} \land q_{x}) , \forall x(p_{x} \to \neg q_{x})$ 

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
