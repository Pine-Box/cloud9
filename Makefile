setup:
	python3 -m venv ~/.cloud9
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	#python -m pytest -vv --cov=myrpolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	
lint:
	pylint --disable=R,C cloud9.py
	
all:	install lint test 