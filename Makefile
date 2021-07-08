test:
	pylint --rcfile=.pylintrc cornell tests

configure:
	pip install -e .'[dev]'

publish:
	python setup.py sdist
	pip install twine
	twine upload dist/*