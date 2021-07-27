install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py
	
lint:
	pylint --disable=R,C main.py
	
test:
	python -m pytest -vv --cov=hello test_main.py
	
all: install lint test
