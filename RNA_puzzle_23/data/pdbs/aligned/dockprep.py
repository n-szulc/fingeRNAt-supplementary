#!/usr/bin/env python
# -*- coding: utf-8 -*-


import chimera
from DockPrep import prep
import getopt
import sys
from chimera import runCommand as rc
from WriteMol2 import writeMol2

try:
    opts, args = getopt.getopt(sys.argv[1:], 'o:', ['output='])
except getopt.error, message:
    raise chimera.NonChimeraError("%s: %s" % (__name__, message))
radius = 1.0
for o in opts:
    if o[0] in ("-o", "--output"):
	output = o[1]
assert(len(args) == 0)


models = chimera.openModels.list(modelTypes=[chimera.Molecule])
#rc("del solvent")
#rc("del ligand")
#rc("del protein")
#rc("del ions")

prep(models)
writeMol2(models, output)

print "Saved to ", output
