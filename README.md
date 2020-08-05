# lke-tf

Makefile is self-documented

## Prereqs

- Linode account
- Make, Terraform (0.12), Kubectl (with KUBECONFIG exported)

## Usage

1. Obtain Linode API token

2. Tweak scripts as needed

3. Run `make provision`, and it will create your cluster

4. Once you done playing, run `make destroy`

## List of Linode Instances

| id               | label                            | class     | disk    | memory | vcpus | network_out | transfer | hourly | monthly | gpus |
| ---------------- | -------------------------------- | --------- | ------- | ------ | ----- | ----------- | -------- | ------ | ------- | ---- |
| g6-nanode-1      | Nanode 1GB                       | nanode    | 25600   | 1024   | 1     | 1000        | 1000     | 0.0075 | 5.0     | 0    |
| g6-standard-1    | Linode 2GB                       | standard  | 51200   | 2048   | 1     | 2000        | 2000     | 0.015  | 10.0    | 0    |
| g6-standard-2    | Linode 4GB                       | standard  | 81920   | 4096   | 2     | 4000        | 4000     | 0.03   | 20.0    | 0    |
| g6-standard-4    | Linode 8GB                       | standard  | 163840  | 8192   | 4     | 5000        | 5000     | 0.06   | 40.0    | 0    |
| g6-standard-6    | Linode 16GB                      | standard  | 327680  | 16384  | 6     | 6000        | 8000     | 0.12   | 80.0    | 0    |
| g6-standard-8    | Linode 32GB                      | standard  | 655360  | 32768  | 8     | 7000        | 16000    | 0.24   | 160.0   | 0    |
| g6-standard-16   | Linode 64GB                      | standard  | 1310720 | 65536  | 16    | 9000        | 20000    | 0.48   | 320.0   | 0    |
| g6-standard-20   | Linode 96GB                      | standard  | 1966080 | 98304  | 20    | 10000       | 20000    | 0.72   | 480.0   | 0    |
| g6-standard-24   | Linode 128GB                     | standard  | 2621440 | 131072 | 24    | 11000       | 20000    | 0.96   | 640.0   | 0    |
| g6-standard-32   | Linode 192GB                     | standard  | 3932160 | 196608 | 32    | 12000       | 20000    | 1.44   | 960.0   | 0    |
| g7-highmem-1     | Linode 24GB                      | highmem   | 20480   | 24576  | 1     | 5000        | 5000     | 0.09   | 60.0    | 0    |
| g7-highmem-2     | Linode 48GB                      | highmem   | 40960   | 49152  | 2     | 6000        | 6000     | 0.18   | 120.0   | 0    |
| g7-highmem-4     | Linode 90GB                      | highmem   | 92160   | 92160  | 4     | 7000        | 7000     | 0.36   | 240.0   | 0    |
| g7-highmem-8     | Linode 150GB                     | highmem   | 204800  | 153600 | 8     | 8000        | 8000     | 0.72   | 480.0   | 0    |
| g7-highmem-16    | Linode 300GB                     | highmem   | 348160  | 307200 | 16    | 9000        | 9000     | 1.44   | 960.0   | 0    |
| g6-dedicated-2   | Dedicated 4GB                    | dedicated | 81920   | 4096   | 2     | 4000        | 4000     | 0.045  | 30.0    | 0    |
| g6-dedicated-4   | Dedicated 8GB                    | dedicated | 163840  | 8192   | 4     | 5000        | 5000     | 0.09   | 60.0    | 0    |
| g6-dedicated-8   | Dedicated 16GB                   | dedicated | 327680  | 16384  | 8     | 6000        | 6000     | 0.18   | 120.0   | 0    |
| g6-dedicated-16  | Dedicated 32GB                   | dedicated | 655360  | 32768  | 16    | 7000        | 7000     | 0.36   | 240.0   | 0    |
| g6-dedicated-32  | Dedicated 64GB                   | dedicated | 1310720 | 65536  | 32    | 8000        | 8000     | 0.72   | 480.0   | 0    |
| g6-dedicated-48  | Dedicated 96GB                   | dedicated | 1966080 | 98304  | 48    | 9000        | 9000     | 1.08   | 720.0   | 0    |
| g6-dedicated-50  | Dedicated 128GB                  | dedicated | 2560000 | 131072 | 50    | 10000       | 10000    | 1.44   | 960.0   | 0    |
| g6-dedicated-56  | Dedicated 256GB                  | dedicated | 5120000 | 262144 | 56    | 11000       | 11000    | 2.88   | 1920.0  | 0    |
| g6-dedicated-64  | Dedicated 512GB                  | dedicated | 7372800 | 524288 | 64    | 12000       | 12000    | 5.76   | 3840.0  | 0    |
| g1-gpu-rtx6000-1 | Dedicated 32GB + RTX6000 GPU x1  | gpu       | 655360  | 32768  | 8     | 10000       | 16000    | 1.5    | 1000.0  | 1    |
| g1-gpu-rtx6000-2 | Dedicated 64GB + RTX6000 GPU x2  | gpu       | 1310720 | 65536  | 16    | 10000       | 20000    | 3.0    | 2000.0  | 2    |
| g1-gpu-rtx6000-3 | Dedicated 96GB + RTX6000 GPU x3  | gpu       | 1966080 | 98304  | 20    | 10000       | 20000    | 4.5    | 3000.0  | 3    |
| g1-gpu-rtx6000-4 | Dedicated 128GB + RTX6000 GPU x4 | gpu       | 2621440 | 131072 | 24    | 10000       | 20000    | 6.0    | 4000.0  | 4    |
