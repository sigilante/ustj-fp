---
type:
  - note
  - review
  - response
tags:
  - urbit
  - urbit-systems-technical-journal
aliases: 
publish: false
internal: false
complete: true
sensitivity: none
---
# General remarks
- In general the paper is well-written and beautifully typeset.

- The author makes use of some fairly indulgent and recherchÃ© language for a computer science paper. At the same time, it's the Urbit Systems Technical Journal and the author has absolute moral and thematic justification for adopting or breaking with any convention.

- The manuscript is good at enumerating and clearly explaining technical aspects shaping the (mis)behaviour of really-existing floating point arithmetic, and pointing out a variety of alarming and sobering inadequacies and economies with the truth in implementations.

- The manuscript does not provide context for the desirability or necessity of deterministic floating point arithmetic either in general or in the case of Urbit until page 10. It can be inferred by people with decent familiarity with FP arithmetic or Urbit or both but may bear additional explanation earlier on.
  * RESOLVED

- There is some inconsistent use of math mode in text.

- There is inconsistent use of periods in enumerations.
  * RESOLVED

# Itemised comments
## p. 1
- Whilst there is a space between your name and your @p (your *true* name) in the TeX source, it doesn't look like it in the manuscript. Perhaps use a `\qquad`.
  * RESOLVED

## p. 2
- Your mention of two nuclear physics/engineering use-cases as early applications of numerical computing is perhaps over-specific, even when making the case of the relevance to numeric computation to military and national security applications. You may wish to mention more fundamental early numerical computation applications of relevance to military/national security such as numerical solutions of partial differential equations, optimisation problems, etc.
  * RESOLVED

- The use of the term *'arrays of many steps'* is perhaps confusing, because the word array is commonly interpreted as referring to a data structure and/or may carry implications of parallelism when the meaning here seems to be a large sequential collection of steps.
  * RESOLVED

> [!QUOTE]
> Numerics assumed even greater prominence with the rise of three-dimensional gaming, with a particular emphasis on speed over correctness. Deterministic computing in particular requires that a given computation be reproducible exactly. This includes, for Urbit as a state machine, that the event log replay across platforms to the same result.

- This does not flow logically. I would suggest something like *'[o]n the other hand, deterministic computing requires that [...]'*. I would also recommend at least a sentence to articulate why deterministic computing may be desirable and/or necessary and also perhaps something to explain that deterministic computing is not the inverse ofâ€”or in contrast toâ€”*'speed over correctness'*, but rather that if a deterministic floating-point calculation accumulates error it does so deterministically (you somewhat allude to this on p. 5).
  * RESOLVED
- Describing deterministic computing as requiring that a computation be reproducible seems tautological.
  * RESOLVED rephrased
- *'Nonnegative'* should be hyphenated for consistency with *'non-integer'*.
  * RESOLVED
- *'{discovery, invention}'* is cute but perhaps a bit too oblique. I assume this is a reference to the realist and anti-realist schools of mathematics, but this may be difficult to parse for some readers, especially due to the use of set notation.
  * RESOLVED
- I would recommend wrapping the referenced mathematical symbols (+, -,\*, /) in parentheses. The division sign is particularly jarring because it looks like a syntactic element of the sentence it is in rather than a mathematical sentence.
  * RESOLVED
- I would recommend mentioning the Cyrillic *'Ð¡ÐµÑ‚ÑƒÐ½ÑŒ'* parenthetically.
  * RESOLVED

## p. 3
- Two identical real numbers will have no difference.
  * RESOLVED
- *'mitigate the situation'*: there's no explanation of what situation is being mitigated.
  * RESOLVED
- *'GPGPUs'* is not a hardware platform but a software modality.
  * RESOLVED
- It is not clear that a sign is a necessary quantity to specify a floating point number, as the implicit positive sign in the engineering representation given in footnote 3 provides an apparent counterexample and it's easy to construct a floating point representation that does not have a sign bit (but is limited to non-negative values).
 * RESOLVED
- *'solving arrays'*: again, confusing terminology. Is an array a sequence of computations or a system of simultaneous equations?
  * RESOLVED
- *'bfloat16'*: this is sufficiently well-established as a type that you may want to consider rendering it in `\texttt`, similar to 'float' and 'REAL' overleaf. I don't know enough about TensorFloat-32 to comment.
  * RESOLVED

## p. 4
- Consider rewriting that formula as an expression. It's a bit hard to see what you're saying.
- *'but not leaves algorithmic details to the implementation'*: grammar.
  * RESOLVED
- *'operations such as << left shift and + addition'*: consider placing the operator symbol after the name (in consistency with earlier and later examples) and wrapping them in parentheses.
  * RESOLVED

## p. 5
- *'IEEE 754 floating-point arithmetic (and its predecessors) has some significant'*: have?
  * RESOLVED
- *'$\frac{1}{3} = 0.\bar{3} \approx 0.3333\dots$'*: What is the meaning of the ellipsis here? If it is intended to represent a repeating decimal then it will be exactly equal to $0.\bar{3}$.
  * RESOLVED
- *'Nani gigantum humeris insidentes'*: Quoting languages other than the parent language of the manuscript without providing a translation is likely to rankle some readers.
  * RESOLVED by excision

## p. 6
- There are curly braces missing in the LaTeX maths expression for the machine epsilon.
  * RESOLVED

## p. 7
- *'justamente'*: this feels a bit affected.
  * RESOLVED
- In the first enumeration, should each element end in a period? They do elsewhere.
  * RESOLVED by removing enumerate

## p. 8
- The problem of deficient (subnormal, even) handling of subnormals is described without a description of what subnormals are.
  * RESOLVED
- A reference should be provided for the FDIV bug.
  * RESOLVED
- *'While this particular example may not strike the reader as particularly egregious'*: this example does strike me as particularly egregious and I'm not sure why it wouldn't.
  * RESOLVED
- *'specter'* is an uncommon spelling.
  * RESOLVED

## p. 10
- The relationship between footnote 22 and the referencing sentence is unclear.
  * RESOLVED

## p. 11
- The example of ambiguous behaviour across architectures should be made concrete, if a code example is given. I assume that Jones 2008 describes differential behaviour in this code on at least two named platforms, and they should be specified here.
  * IRRESOLVABLE

## p. 12
- *'In this hypothetical case,â€œany extended precision bits'*: there's a missing space here.
 * RESOLVED
- Should *'K & R C permitted'* have spaces around the ampersand?
 * RESOLVED
- 'The fly in the ointment for Urbit is that deterministic computing requires deterministic computing': this was confusing to me in context and should probably be reworded to not be a tautology.
 * RESOLVED

> [!QUOTE]
> The situation is in fact worse for transcendental functions, because there is necessarily truncation and/or rounding error
> (The situation is in fact worse for transcendental functions [Dawson, 2013].)

- This looks like an error in expanding a note.
 * RESOLVED
- *'situation is in fact'*: pleonasm.
 * RESOLVED
- The enumeration of possible solutions lacks periods.
 * RESOLVED
- *'mitigated again in turn'*: pleonasm.
 * RESOLVED

## p. 13
- *'nonnegligible'*: hyphenate. You may also want to hyphenate *'nontrivial'* on p. 5 for consistency.
 * RESOLVED
- It's not clear how controlling the compiler and runtime execution stack constitutes a hardware measure. That sounds like software (specifically, the implementation of 'quirks modes').
  * RESOLVED by rewording to “hardware-targeted solutions”
- *'If you controlled the compiler and runtime execution stack to sufficient precision'*: 'precision' here is ambiguous. Unclear if what is meant is implementing IEEE 754 with sufficient faithfulness to the standard and control, or sufficient bit-depth.
 * RESOLVED
- *'â€œA translator that generates very high performance code is of no use if the final behavior is incorrectâ€ [Jones, 2008, p. 189].'*: This sentence does not have an obvious connection to the preceding one.
 * RESOLVED
- 'This introduces a dependence between Martian software on Earthling software, repugnant to the Urbit ethos.': between â†’ on.
 * RESOLVED

## p. 14
- *'This augurs the ability to specify not only rounding modes and access floating-point exception status flags, but it is not clear that this environmental control spans the entire output of floating-point computations.'*: there seems to be a grammatical error here.
 * RESOLVED

## p. 17
- *'it is important to keep in mind that results like transcendental functions are still not correctly known.'*: unclear.
 * RESOLVED
- *'choppping'*: should this have three ps?
 * RESOLVED

## p. 18
- Should section 4.4 use the term 'memoization' somewhere?
 * RESOLVED
- *'Cf. Jonesâ€™ citation of Citron et al..'*: double period.
 * RESOLVED

## p. 21
- Is cplx in essence a tuple of floats or something else?
 * RESOLVED
