#!/usr/bin/env python3
# -*- coding: utf-8 -*-
""" test  """

import sys
import importlib

# Template module loading
module_template = "tmp_template_translator"
plugin = importlib.import_module(module_template)


def sending_test1():
    """test """

    print("Variable 5 - {0}".format(plugin.var))
    plugin.plugin_init()


def load(module_to_import):
    """test """

    global plugin

    try:
        plugin = importlib.import_module(module_to_import)

    except ImportError:
        print ("Unusable module {0}".format(module_to_import))
        raise
    else:
        plugin = sys.modules[module_to_import]

        print ("Sending OK")

        print ("Variable 1 - {0}".format(plugin.var))
        plugin.var = 20
        print ("Variable 2 - {0}".format(plugin.var))

        plugin.plugin_info()

        print ("Variable 4 - {0}".format(plugin.var))


if __name__ == "__main__":

    print ("Test 1 ==============================================")
    load("tmp_omf_translator")
    sending_test1()

    print("Test 2 ==============================================")
    load("tmp_xxx_translator")
    sending_test1()

    try:
        print("Test 3 ==============================================")
        load("tmp_none")
        sending_test1()

    except ImportError:
        print("Exception ImportError")
