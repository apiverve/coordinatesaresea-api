from setuptools import setup, find_packages

setup(
    name='apiverve_coordinatesaresea',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Coordinates are Sea is a simple tool for checking if coordinates are in the sea. It returns if the coordinates are in the sea or not.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/coordinatesaresea?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
