# Architecture

The pipeline registers intermediate values in four sequential stages:

1. Compute `a+b`, `a-b`, and capture `d`.
2. Add the two arithmetic results.
3. Delay the combined value.
4. Multiply by the delayed `d` path and drive `f`.

The design is intentionally a small timing experiment. A production
integration should define reset behavior and a valid/ready protocol around
the pipeline.
