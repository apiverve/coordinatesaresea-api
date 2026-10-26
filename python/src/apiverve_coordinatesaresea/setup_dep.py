from setuptools import setup, find_packages

setup(
    name='apiverve_coordinatesaresea',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Coordinates Are Sea checks whether a given latitude and longitude pair sits in the ocean or on land. Pass geographic coordinates to receive a boolean confirming if the location is in the sea.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/coordinatesaresea?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
