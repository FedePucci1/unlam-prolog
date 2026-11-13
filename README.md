# UNLaM — Prolog Exercises

Small logic-programming exercises by **Federico Pucci**, developed during Programación Avanzada at Universidad Nacional de La Matanza. Three topics were separated from a personal exercise file; the retained predicates preserve their original behavior.

| File | Topics |
| --- | --- |
| [viajes.pl](exercises/viajes.pl) | Facts, relations, arithmetic and travel budget filtering |
| [notas.pl](exercises/notas.pl) | Grade classification, averages and backtracking-driven reports |
| [maximo.pl](exercises/maximo.pl) | Cartesian products, projection and maximum selection through negation |

## Explore with SWI-Prolog

Load one exercise at a time:

```sh
swipl -s exercises/viajes.pl
```

```prolog
?- viaje(roma, 2, hotel, P).
P = 120.
```

Filter by budget with `viajeeconomico/5`:

```prolog
?- viajeeconomico(roma, 2, hotel, P, 121).
P = 120.
```

The budget check is strictly `<`, so a trip costing exactly the maximum is excluded. The grade predicates print qualifying students and then deliberately `fail` to continue backtracking; the final `false` after a report is expected.

```sh
swipl -q -s exercises/notas.pl -g '(promociono(_,_);true),halt'
swipl -q -s exercises/maximo.pl -g 'resta_al_conjunto_inicial_para_obtener_el_mayor(X),writeln(X),halt'
```

The promotion report prints `ana 7` and `juan 7.5`. Maximum selection returns `3` for the retained set of facts.

## Scope

GitHub Actions loads each file and checks sample travel costs, the strict budget boundary, the promotion report and the maximum query with SWI-Prolog. This is a small academic collection, not a production travel or grading system. Duplicates and an incomplete alternative grade-ranking attempt were left out. See [source notes](SOURCES.md) and the [main portfolio](https://github.com/FedePucci1/portfolio-index).
