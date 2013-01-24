#!/usr/bin/python
"""
Collect list of *.cpp files in Classes subdirectory relative to Android.mk

Author: Alexander Belchenko.
This code is placed in public domain.
"""


import os

CLASSESDIR = '../../Classes'

def listCppPaths(directory=CLASSESDIR):
	cpps = []
	paths = []
	for root, dirs, files in os.walk(directory):
		for f in files:
			if not f.endswith('.cpp'): continue
			full = os.path.join(root, f)
			cpps.append(full)
		for d in dirs:
			full = os.path.join(root, d)
			paths.append(full)

	return sorted(cpps), sorted(paths)


if __name__ == '__main__':
	import pprint
	pprint.pprint(listCppPaths())
