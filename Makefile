lima-up:
	limactl create slurm-single-node -y
	limactl start slurm-single-node
	limactl shell slurm-single-node ./setup.sh

lima-down:
	limactl stop slurm-single-node || limactl delete slurm-single-node

lima-enter:
	limactl shell slurm-single-node

lima-test:
	limactl shell slurm-single-node srun echo "Hello, World!"
