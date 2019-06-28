import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
     name='fulfilio',
     version='0.0.1',
     author="Richard Cai",
     author_email="richard.cai@fulfilio.com.au",
     description="Fulflio API Wrapper",
     long_description="Fulfilio api wrapper provides seemless integration between fulfilio platform and client system",
     long_description_content_type="text/markdown",
     url="https://github.com/javatechy/dokr",
     packages=['fulfilio', ],
     classifiers=[
         "Programming Language :: Python :: 3.7.3",
         "License :: OSI Approved :: MIT License",
         "Operating System :: OS Independent",
     ],
)