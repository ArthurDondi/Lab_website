#!/bin/bash
#SBATCH --partition=interactiveq
#SBATCH --qos=interactiveq
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=12:00:00
#SBATCH --job-name=hugo-server
#SBATCH --output=hugo-server-%j.log

# update these variables before running the script
miniconda_path=/nobackup/lab_taschner-mandl/arthurdondi/miniconda3
env=hugo
repo_dir=/nobackup/lab_taschner-mandl/arthurdondi/src/Lab_website

# get tunneling info
port=$(shuf -i8000-9000 -n1)
node=$(hostname).int.cemm.at
user=$(whoami)

host ${node}

# activate your environment - no need to update this command
echo "Activating environment"
source ${miniconda_path}/bin/activate ${env}
export PATH="$(go env GOPATH)/bin:$PATH"

echo ""
echo "Hugo site will be reachable at: http://${node}:${port}/"
echo ""

cd ${repo_dir}
hugo mod tidy
hugo server -D --bind 0.0.0.0 --port=${port} --baseURL=http://${node}/ --disableFastRender