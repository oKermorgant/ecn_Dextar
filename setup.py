# -*- coding: utf-8 -*-
"""
Created on Mon Jun 20 19:39:44 2016

@author: Marcos Belchior
"""

from setuptools import setup

def readme():
    with open('README.rst') as f:
        return f.read()

setup(name='DexTARDrawFace',
      version='0.1',
      description='Face detection and drawing with a DexTAR 5 bar parallel robot.',
      long_description=readme(),
      classifiers=[
        'Development Status :: Alpha',
        'License :: No License',
        'Programming Language :: Python :: 2.7',
        'Topic :: Computer Vison :: Robotics',
      ],
      keywords='face detection draw parallel robot',
      url='',
      author='Marcos Belchior MONTEIRO MORETE PINTO',
      author_email='marcos.monteiro-morete-pinto@eleves.ec-nantes.fr',
      license='none',
      packages=['dextar_draw_face'],
      install_requires=[
          'openCV',
      ],
      include_package_data=True,
      zip_safe=False)
