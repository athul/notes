---
title: "Theory of Compution"
tags: ["college"]
---
- Fundamental Couse of CS
- Sciece as CS
- Computation speed and related

---
- FSM : Finite State Machine
- CFL : Context Free Language
- Turing Machine

FSM → CFL → Turing Machine

> Language here is a **set of Strings**

--- 

# FSM

- Symbol: `a b c 0 1 2 4...`
- Alphabet : Denoted by $\Sigma$ is a collection of symbols
    - Eg : $\{a,b,c\}\  or \ \{1,2,3\}$
- String : Sequence of Symbols
    eg: a,b,c... or aa,bb,cc,...
- Language : Set of Strings
    - Eg: $\Sigma = \{0,1\}$
    - Set of all strings of Length 2: $\{00,01,10,11,...\}$
    - Set of all strings of length 3: $\{000,001,010,....\}$
    - Set of all strings that begin with 0: $\{0,001,010,...\}$
    > Third example is an $\infin$ set

### Powers of $\Sigma$

Let $\Sigma = \{0,1\}$  

- $\Sigma^{0}$ = Set of all strings of length 0: $\Sigma^{0} = \{\epsilon\}$  (Epsilon)

> $\epsilon$ denotes all strings of length 0

- $\Sigma^{1}=$ Set of all strings of length 1; $\Sigma^{1} = \{0,1\}$
- $\Sigma^{n}=$ Set of all strings of length n

### Cardinality

- No of Elements in a set
> Cardinality of $\Sigma^{n}=2^{n}$

### $\Sigma^{*}$

$\Sigma^{*} = \Sigma^{0}\cup\Sigma^{1}\cup\Sigma^{2}\cup......\Sigma^{n}$  
=> $\{\epsilon\}\cup\{0,1\}\cup.....$  
=> Set of all possible strinfgs of all length over $\{0,1\}$ -> $\infin$ set

## Finite Automata

![FA-1](https://i.imgur.com/DlWVtCu.png)

---

### DFA - Deterministic Finite Automata
- Simplest Model fo Computation
- It has veru limited memory

![DFA-1](https://i.imgur.com/6o4tvPF.png)

- Circles are **States**
- Edges/ Arrows are **transistions**
- Labelling are **Inputs**
- Double Cirlce is Final State
- Arrow from _nowhere_ is the Initial State

Every DFA can be represented using 5 tuples $\to (Q,\Sigma,q_{0},F,\delta)$

- $Q$ : Set if al States
- $\Sigma$ : Inputes
- $q_{0}$: Start state/ Initaial State
- $F$ : Set of Final States
- $\delta$ : Transisition Function that maps from $Q \times \Sigma \to Q$

For the Above DFA, the values are
- $Q = \{A,B,C,D\}$
- $\Sigma = \{0,1\}$
- $q_{0}=A$
- $F=\{D\}$
- $\delta =$

|   | 0 | 1 |
|:---:|:---:|:---:|
| A | C | B |
| B | D | A |
| C | A | D |
| D | B | C |

----

Example Question: Let L1= Set of all strings that stras with 0
= {0,00,01,000,010,011,0000,....}. Design the DFA

Answer: 

![DFA-2](https://i.imgur.com/b2TuDKV.png)

> Here C is the **Dead State of Trap State**

Example Question: Construct a DFA that accepts sets of all strings over {0,1} of length 2.

Answer: $\Sigma =\{0,1\}$ and $L=\{00,01,10,11\}$
![DFA-3](https://i.imgur.com/TPbqPkx.png)