import pytest

from app import add, greet
def test_greet():
    assert greet("DevOps") == "Hello, DevOps!"
def test_add():
    assert add(2, 3) == 5
def test_greet_empty_name():
    with pytest.raises(ValueError):
        greet("")