---
date: "2020-09-15T20:58:42+05:30"
title: "Logic for CS-Module 1"
---
# Module 1

Created: Sep 11, 2020 10:54 AM

- **Formulas can be implemented as Binary Trees**

**👉**

![Module%201%2083acc9e1566046b786ead9dd0589c6f7/Screen_Shot_2020-09-09_at_11.34.02_AM.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/60d1f413-002c-436f-8e72-84ef8592ac2a/Screen_Shot_2020-09-09_at_11.34.02_AM.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20200920%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200920T190000Z&X-Amz-Expires=86400&X-Amz-Signature=0bc2c0618837a963fc8e5d8c2c341ce74b6aa33063ef3116256ed2a9a8ea6836&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Screen_Shot_2020-09-09_at_11.34.02_AM.png%22)

Inorder → LEFT → Root → Right

Preorder → ROOT → Left → Right

- Inorder Traversal can be used to reduce ambiguity.
- The formula for above tree is  $( p \rightarrow q ) \iff (\neg p \rightarrow \neg q)$
    - First check left of root ⇒ $`\rightarrow`$
    1. On right of $\to$ is $p \therefore p$
    2.  Then to root of $p$ , ie  $\to$ , on right of it is $q$ . This becomes $p \to q$
    3. Coming back to root gives us $\iff$
    4. Going to the right of tree gives us $\to$ first. 
        1. Then on this tree we move left(recursive)
        2. we get $\neg$ first and p which gives us $\neg p$
        3. We go to root which gives us $\to$
        4. On going we get $\neg$  and $q$
        5. Thus we get from this tree $\neg p \to \neg q$
    5. **This Gives us  $(p \to q) \iff (\neg p \to \neg q)$**

---

12/09/2020 

- Polish Notation
- Congruence or  $\equiv$
- Atoms - Indivisible Units in a statement Eg: $p,q$
- Grammar
    - $a \to a\  op\  b$ ; $op = +, -, *, /$
    - $fml$ is any propositional formula
- 

$$fml \\ fml\space op \space fml \\
fml \iff fml \\ fml \space op\space fml \iff fml\\
\\ ...
\\ ... \\
p \to q \iff \neg p \to \neg q
$$

![Module%201%2083acc9e1566046b786ead9dd0589c6f7/Screen_Shot_2020-09-12_at_9.47.20_AM.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/51757bdc-4bb4-486a-aabf-396c4bbc1ce4/Screen_Shot_2020-09-12_at_9.47.20_AM.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20200920%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200920T190146Z&X-Amz-Expires=86400&X-Amz-Signature=6296a338ccb8c0c2f53524769b1ac7d891d3c29fb9fd5eb88459aed7f0c0e1b2&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Screen_Shot_2020-09-12_at_9.47.20_AM.png%22)

---

Sep 16, 2020 

## Interpretations

- $p \to q \iff \neg p \to \neg q$

### Definition

- $A \in \digamma$

## Boolean Operators

Inclusice OR: $\lor$

eXclusive OR: $\oplus$

---

Sep 17, 2020 

**Def 1:**

Let S = ${A_1,...}$ be a set of formulas and let $\mathscr{P}_S =\cup_i \mathscr{P}_{A_i}$ that
is, $\mathscr{P}_S$ is the set of all the atoms that appear in the formulas of $S$. An interpretation
for $S$ is a function $\mathscr{I}_S:\mathscr{P}_S\mapsto\{T,F\}$. For any $A_i\in S,v_{\mathscr{I}_S}(A_i)$

![Module%201%2083acc9e1566046b786ead9dd0589c6f7/Screen_Shot_2020-09-17_at_1.03.06_PM.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/c472ec75-54de-41c8-b057-845e13d2780e/Screen_Shot_2020-09-17_at_1.03.06_PM.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20200920%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200920T190358Z&X-Amz-Expires=86400&X-Amz-Signature=9fe9b698f99aece8013430c6ee1b7372b4a9c1076c3cf53b5ff0a1047eaeceea&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Screen_Shot_2020-09-17_at_1.03.06_PM.png%22)

### Logical Equivalence

**Def 1:** Let $A_1, A_2 \in \mathscr{F}$ . If $v_\mathscr{I}(A_1) = v_\mathscr{I}(A_2)$ for all interpretations $\mathscr{I}$, then $A_1$ is logiclally equivalent to $A_2$, denoted by $A_1 \equiv A_2$8

### Similarities b/w $\iff and \equiv$

### Substitution