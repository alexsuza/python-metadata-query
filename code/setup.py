#!/usr/bin/env python3

# Note: the conditional syntax for subprocess32 below REQUIRES setuptools 36.2 or later.

import os
from setuptools import setup, find_packages, Command

try:  # for pip >= 10
    from pip._internal.req import parse_requirements
except ImportError:  # for pip <= 9.0.3
    from pip.req import parse_requirements

install_reqs = parse_requirements('requirements.txt', session='hack')
try:
    reqs = [str(ir.req) for ir in install_reqs]
except:
    reqs = [str(ir.requirement) for ir in install_reqs]


class CleanCommand(Command):
    """Custom clean command to tidy up the project root."""
    user_options = []

    def initialize_options(self):
        pass

    def finalize_options(self):
        pass

    def run(self):
        os.system(
            'rm -vrf ./venv/ ./target ./build ./dist ./*/*.pyc ./*/*_pb2.py ./*.tgz ./*.egg-info'
        )


setup(name='metadataquery',
      version='1.0.2',
      author='Alex D',
      author_email='aodesou@sandia.gov',
      url='https://gitlab.ufcloud.io/env/leap/python-metadata-query',
      description='metadata  query reads database',
      packages=['metadataquery'],
      classifiers=[
          'Programming Language :: Python :: 3',
          'Programming Language :: Python :: 3.4',
          'Programming Language :: Python :: 3.6',
          'Programming Language :: Python :: 3.8',
          'Programming Language :: Python :: 3.9'
      ],
      entry_points = {
         'console_scripts': ['metadataquery=metadataquery.app:runit'],
      },
      cmdclass={'clean': CleanCommand},
      setup_requires=['pip>=8.1.1'],
      install_requires=reqs)

