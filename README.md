# DivideEtImpera

```
➜  mix run bench/script.exs
Operating System: macOS
CPU Information: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz
Number of Available Cores: 12
Available memory: 16 GB
Elixir 1.14.3
Erlang 25.3
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
reduction time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 14 s

Benchmarking elixir_implementation ...
Benchmarking rust_implementation ...
Calculating statistics...
Formatting results...

Name                            ips        average  deviation         median         99th %
elixir_implementation         80.69       12.39 ms    ±10.48%       11.65 ms       14.84 ms
rust_implementation           30.03       33.30 ms     ±0.87%       33.26 ms       34.67 ms

Comparison: 
elixir_implementation         80.69
rust_implementation           30.03 - 2.69x slower +20.91 ms
```

