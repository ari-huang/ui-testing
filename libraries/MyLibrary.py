# example of accessing a variable from variables.py
from resources.variables import TODAY
from robot.api import logger


class MyLibrary:
    """Give this library a proper name and document it."""

    def example_python_keyword(self):
        logger.info("This is Python!")
        logger.info(f"... and today is {TODAY}")

    