# slurm-single-node demo

## Summary

This is a simple demo to get a single node slurm cluster up.
We're exploring slurm from a "top down" approach using slinky,
I thought it would be good to take this from the "bottom up"
approach as well.

This setup use limactl to run the demo, to make things more
consistent. To run:

```
# make lima-up
# make lima-test
limactl shell slurm-single-node srun echo "Hello, World!"
Hello, World!
```
