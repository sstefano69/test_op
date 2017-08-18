#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""test """

var = 10


def plugin_new():
    """test """
    pass


def plugin_info():
    """test """
    print ("OMF translator info -  OK ")

    print("Variable 3 - {0}".format(var))


def plugin_init():
    """test """
    print ("OMF translator init -  OK ")


if __name__ == "__main__":
    print("OMF translator plug in - MAIN")
