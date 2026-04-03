# Glossary

CUDA
  :Compute Unified Device Architecture. A computing platform specialized on
  parallel computation, which existed in NVIDIA GPU. Must interact via CUDA
  driver and CUDA framework in C++ (which includes Python).

H100
  :One of NVIDIA's industrial GPU (Blackwell generation) lineups.[^1]

[^1]: <https://www.nvidia.com/en-us/data-center/h100/>

MIG
  :A partitioning system for NVIDIA GPU, allowing multiple instances running
  simultaneously on one GPU with on-premise performance. [^2]

[^2]: <https://www.nvidia.com/en-us/technologies/multi-instance-gpu/>

Slurm
  :A workload management and jobs scheduling system for multiple computing
  nodes.

LiCO
  :Web-based software developed by Lenovo. It provides Slurm interaction points
  via web interface, unlike usual Slurm interaction via command lines.

## Slurm Glossaries

Job
  :A unit of workload for Slurm to process; usually expressed in a shell
    script.

Node
  :One single unit of computer within a cluster.

Cluster
  :A group of computing nodes.

Container
  :Operation-system-level virtualization with isolation from others processes.
  In Slurm, it is another way of getting any packages within the job
  environment.

Partition
  :A grouping of nodes. Each partition may have different specifications.

Queue
  :A waiting line for jobs. Some queues may have priorities (preemptive jobs)
  or access to specific partition of the cluster.

Wall Time
  :The maximum period of time allowed for a job to run. If the job is still
  running when running time exceeds the wall time, Slurm will stop the job
  immediately with `SIGTERM`.

Additional Slurm terminologies/concepts can be found
[here](https://slurm.schedmd.com/overview.html#architecture).
