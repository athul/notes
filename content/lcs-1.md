---
date: "2020-09-15T20:58:42+05:30"
title: "Logic for CS-Module 1"
---
# Module 1

Created: Sep 11, 2020 10:54 AM

- **Formulas can be implemented as Binary Trees**

**👉**

![Module%201%2083acc9e1566046b786ead9dd0589c6f7/Screen_Shot_2020-09-09_at_11.34.02_AM.png](Module%201%2083acc9e1566046b786ead9dd0589c6f7/Screen_Shot_2020-09-09_at_11.34.02_AM.png)

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

![Module%201%2083acc9e1566046b786ead9dd0589c6f7/Screen_Shot_2020-09-12_at_9.47.20_AM.png](Module%201%2083acc9e1566046b786ead9dd0589c6f7/Screen_Shot_2020-09-12_at_9.47.20_AM.png)