# Frequent Problems

> Why does my submitted job appear to stuck in the queue forever?

One way to diagnose the problem is to click on the `Scheduler ID` and look at
the scheduler's description. If the `Reason` variable equals to:

- `QOSMaxWallDurationPerJobLimit`: Your job requested wall time for too long and
  will stick in the queue forever. Please cancel the current job, copy the job,
  and adjust the wall time to be under your role's
  [limitations](./limitations.html).

> Why my job cannot use existing GPU?

Especially for students groups, only MIG GPUs are allowed. By default, your
script is not usually specified to use MIG GPUs for computation, but full GPUs.
As the job is only allocated for MIG GPUs, requesting a full GPU inside might be
problematic. To make your job use MIG GPUs, some environmental declarations are
needed. In this case, we specify "CUDA devices" to be a MIG GPU via declaring
`CUDA_VISIBLE_DEVICES` environment variable as a MIG GPU ID. You can copy this
line of the script before the execution line of the program.

```bash
export CUDA_VISIBLE_DEVICES=$(
    nvidia-smi -L | \
        grep -Eo 'MIG-[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}' | \
        head -n 1
)
```

The script basically lists all available GPUs with UUID. Then, we grab the first
MIG GPU ID (the one Slurm allocates for us), and declaring it the CUDA device to
be used.
