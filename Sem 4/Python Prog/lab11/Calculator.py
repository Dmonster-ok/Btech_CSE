"""
Module: Calculator
This module provides a calculator with basic arithmetic operations.
add(*args) - returns the sum of all arguments
subtract(*args) - returns the difference of all arguments
multiply(*args) - returns the product of all arguments
divide(a, b) - returns the quotient of a and b
"""


def add(*args):
    return sum(args)

def subtract(*args):
    return args[0] - sum(args[1:])

def multiply(*args):
    result = 1
    for i in args:
        result *= i
    return result

def divide(a, b):
    return a / b
