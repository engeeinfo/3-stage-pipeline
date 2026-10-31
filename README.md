# Three-Stage Pipeline

Verilog pipeline that computes `(a + b + a - b) * d` across registered
stages, equivalent to `2 * a * d`.

## Requirements

- Icarus Verilog 11 or newer
- `make`

Run the simulation:

```sh
make test
```

## Structure

- `pipel.v` contains the registered arithmetic pipeline.
- `pipe_tb.v` drives multiple input vectors and checks the final result.
- `docs/ARCHITECTURE.md` and `docs/MODERNIZATION.md` document the design and
  baseline.
