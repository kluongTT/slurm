TEMPLATE ?= ubuntu-22.04
lima-up:
	limactl create --name=slurm-single-node -y template://$(TEMPLATE)
	limactl start slurm-single-node
	limactl shell slurm-single-node ./setup_single_queue.sh

lima-down:
	limactl stop slurm-single-node || limactl delete slurm-single-node

lima-plain:
	limactl create --name=slurm-single-node -y template://ubuntu-22.04
	limactl start slurm-single-node

lima-enter:
	limactl shell slurm-single-node

lima-test:
	limactl shell slurm-single-node srun echo "Hello, World!"
