#!/usr/bin/env python
"""
    Copyright (c) Bifferos 2009 (sales@bifferos.com)
    
    This is free software, licensed under the GNU General Public License v2.
    See COPYING for more information.
"""


import rdc, os, sys, struct

if __name__ == "__main__":

  r = rdc.RDC()
  print "Sector erase"
  r.EonSectorErase(0xffff0000)
