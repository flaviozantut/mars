# Mars

**Exploring mars with elixir**

```shell
$ iex -S mix
iex(1)> rovers = [[1, 2, :n, "lmlmlmlmm"], [3, 3, :e, "mmrmmrmrrm"]]
iex(2)> Mars.explore(5, 5, rovers)
[[1, 3, :n], [5, 1, :e]]
```