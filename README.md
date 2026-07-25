# Programming in FastLAS — example files

Task files accompanying *Programming in FastLAS: A Practical Guide to the Syntax*.

Every file here runs against **FastLAS 2.2.0** and produces the output printed in the guide.
Nothing is pseudo-code.

## Layout

| Path | Contents |
| --- | --- |
| [`examples/`](examples) | the numbered examples from the body of the guide (`ex01`–`ex18`) |
| [`examples/solutions/`](examples/solutions) | worked solutions to the exercises (`sol01`–`sol18`) |
| [`examples/asp/`](examples/asp) | plain ASP programs for **clingo** (`asp01`–`asp09`): primes, clique, Hamiltonian cycles, eight queens, vertex cover, colouring, knapsack, weak constraints, paths |

## Running an example

FastLAS needs [Clingo](https://potassco.org/clingo/) on your `PATH`, and every run takes a
mandatory algorithm flag, either `--opl` or `--nopl`:

```
$ FastLAS --opl examples/ex01_cycle.las
cycle :- not rain.
```

A few tasks need something extra, and the guide says so where they appear:

```
$ FastLAS --nopl examples/ex08_nopl_permitted.las              # non-observational target
$ FastLAS --opl --max-conditions 2 examples/solutions/sol06_numvar_multi.las
```

The incremental examples are run as a chain, each window reading the cache written by the
previous one:

```
$ FastLAS --opl --write-cache c1 examples/ex15_window1.las
$ FastLAS --opl --read-cache  c1 examples/ex15_window2.las
```

## Index

`ex01` first task · `ex02`–`ex03` typed variables and exceptions · `ex04` arithmetic ·
`ex05` learned constants · `ex06`–`ex07` scoring with `#bias` · `ex08`–`ex09` non-observational
learning · `ex10`–`ex11` `#predict` · `ex12` mode-bias performance · `ex13`–`ex14` recursion and
the verifier reframing · `ex15` incremental learning · `ex16` `#final_bias` · `ex17` `num_var`
thresholds · `ex18` access-control policy learning · `ex19`–`ex22` the classic problems as learning
tasks (vertex cover, graph colouring, pet owner, a SUSHI-style taste) · `ex23`–`ex26` the
semantics demonstrations (#neg needing --nopl, computed inclusion/exclusion slots, brave coverage,
noisy examples, a negative example ruling out an over-general rule, weights deciding the answer,
and the search space seen through ILASP`s -s flag).

The `examples/asp/` programs are for [clingo](https://potassco.org/clingo/), not FastLAS:

```
$ clingo examples/asp/asp05_vertexcover.lp
in(b) in(c) in(d) in(e)
```

They use choice rules, conditional literals, aggregates and weak constraints, which are outside
the FastLAS input dialect. The guide explains which construct goes where.

## Credits

The ASP programs and the classic examples follow the *Logic Programming and Explainable AI*
lecture notes of F. A. D'Asaro (University of Trento, 2023), which in turn draw on the textbook
treatments of Lifschitz (*Answer Set Programming*, Springer 2019) and Gebser et al. (*Answer Set
Solving in Practice*, 2012). The SUSHI features follow Kamishima's SUSHI preference data sets
(<http://www.kamishima.net/sushi/>).

## Getting FastLAS

<https://github.com/spike-imperial/FastLAS>
