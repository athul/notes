---
title: "Theory of Computation | Module 1"
tags: ["college"]
summary: "Notes on Theory of Computation"
---
# Module 1

---

- Fundamental Couse of CS
- Sciece as CS
- Computation speed and related
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

## RegularLanguage
- a regular language is said to be a regular language $\iff$ a finite state machhine recognizes it
- Not Regular
    - When requires memory
    - Not recognized by FSM

> Memory of FSM is very Limited and canno count strings

### Operations on Regular Languages

**Union** : $A\cup B=\{x\mid x\in A \ or\  x\in B\}$  
**Concatenation**: $A \circ B=\{xy\mid x\in A\ and\ y\in B\}$  
**Star**: $A\ast=\{x_1,x_2,x_3\dots x_k\mid k\ge0 \  and \ each\  x_i\in A\}$

Eg: $A=\{pq,r\},B=\{t,uv\}$  
Ans:  
- $A\cup B=\{pq,r,t,uv\}$
- $A\circ B=\{pqt,pquv,rt,ruv\}$
- $A\ast =\{\epsilon,pq,r,pqr,rpq\dots\} = \infin \ set$

**Theorem 1**: The class of Reglular Lanugauges is closed under _Union_($\cup$)  
**Theorem 2**: The class of RL is closed under _Concatenation_($\circ$)

## NFA - Non Deterministic Finite Automata
- There could be multiple Next states
- The next state could be chosen at random
- All the next states may be chosen in Parallel

![NFA-1](https://i.imgur.com/SFegOow.png)

### NFA - Formal Definition

- NFA are defined using
    - $Q$ : Set if al States
    - $\Sigma$ : Inputs
    - $q_{0}$: Start state/ Initaial State
    - $F$ : Set of Final States
    - $\delta$ : Transisition Function that maps from $Q \times \Sigma \to 2^{Q}$


![NFA-2](https://i.imgur.com/qY4BBBD.png)

L={Set of all strings that end with 0}  

> If there is any way to run the machine that **ends in any set of states** out of which **atleast one state is a final state**, then the NFA accepts

For examples, check this [video](https://youtu.be/NGF-b3QVeJU)

## Conversion NFA to DFA

> Every DFA is an NFA, but not vice-versa. But there is an equivalent DFA for every NFA

Things to keep in mind
- $\phi$ in NFA is the Dead State in DFA
- NFA's $\phi$ should be replaced by another state in DFA

_Example 1_: Convert to DFA, `L={Set of all strings over(0,1) that starts with 0}`  

_*Answer*_: $\Sigma=\{0,1\}$  

![NFA(NFA to DFA)](https://i.imgur.com/yGp8PuV.png)

Transition Table:

|   | 0 | 1 |
|:---:|:---:|:---:|
| A | B | $\phi$ |
| B | B | B |

While converting this to DFA, we have to account the $\phi$ as it should be converted to a **dead state**. This gives us the Transition Table,

|   | 0 | 1 |
|:---:|:---:|:---:|
| A | B | C |
| B | B | B |
| C | C | C |

Which gives us the DFA, where `C` is the dead state

![DFA-2](https://i.imgur.com/b2TuDKV.png)


## Minimization of DFA

- To obtain the minimal version of any DFA which consists of the min number of states possible

- Equivalent states can be combined
- Two states can be equivalent if,
$\delta(A,X) \to F$ and $\delta(A,X) \nrightarrow F$ OR $\delta(B,X) \to F$ and $\delta(B,X) \nrightarrow F$

> Where `X` is any i/p string

*If $|X| = n$ the A and B are said to be `n` equivalent*

> Refer https://youtu.be/0XaGAkY09Wc for better Idea :smile: