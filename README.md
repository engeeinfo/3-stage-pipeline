# Three-Stage Pipeline

A small Verilog RTL example of a three-stage datapath pipeline.

## Files

- `pipel.v` - pipeline implementation
- `pipe_tb.v` - simulation testbench

## Simulate

With Icarus Verilog:

```bash
iverilog -o pipeline_tb pipel.v pipe_tb.v
vvp pipeline_tb
```

The testbench is the executable specification for the example.