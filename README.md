# !!EXPERIMENTAL!!

---
# hvm-kanren

This is an experimental port of µKanren to [HVM](https://github.com/Kindelia/HVM) based on [this](https://cgi.luddy.indiana.edu/~c311/lib/exe/fetch.php?media=microkanren.pdf) paper.

The primary goal is to implement core constructs from µKanren in HVM with an eye towards exploring HVM strengths (linearity, optimal reduction, laziness and parallelism) to the extent possible.

These core constructs are:

* equality constraints
* disjunction of constraints
* fresh variable generation
* conjunction of constraints
* bounded and unbounded recursion


// TODO Inline leaf contructors? E.g. Nil: could we consider Nil as normal form and clone statically?
//          Right now HVM creates a dup node that simply could be done statically?
//
## References

* http://webyrd.net/scheme-2013/papers/HemannMuKanren2013.pdf
