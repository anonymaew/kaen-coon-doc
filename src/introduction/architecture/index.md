# System Architecture

- `lico` (10.198.253.15): login node
- `cn1` (10.198.199.202): computing node
  - 2x AMD EPYC 9224: 24 Core 2.5 GHz
  - 16x 64 GB memory
  - 2x 960GB M.2 NVMe SSD + 1x 15.36TB NVMe SSD
  - 4x NVIDIA H100 80GB HBM3
    - 1 Full 80GB
    - 3 (7x 10GB MIGs)
- `cn2` (10.198.199.203): computing node
  - 2x AMD EPYC 9224: 24 Core 2.5 GHz
  - 16x 64 GB memory
  - 2x 960GB M.2 NVMe SSD + 1x 15.36TB NVMe SSD
  - 4x NVIDIA H100 80GB HBM3
    - 4 Full 80GB

![Cluster nodes diagram](./diagram.webp)
