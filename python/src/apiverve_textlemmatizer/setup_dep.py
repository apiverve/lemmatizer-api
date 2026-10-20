from setuptools import setup, find_packages

setup(
    name='apiverve_textlemmatizer',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Text Lemmatizer reduces inflected words in submitted text down to their dictionary base forms. It confirms when valid lemmas exist, while paid plans return full word-by-word mappings.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/lemmatizer?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
