conda-update:
	conda env update --prune -f environment.yml
	echo "Activate your environment with: conda activate setup_ml_env"
	
	
pip-tools:
	pip install pip-tools
	pip-compile requirements/prod.in && pip-compile requirements/dev.in
	pip-sync requirements/prod.txt requirements/dev.txt
