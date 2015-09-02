### Discussing errors

```sh
NameError: uninitialized constant DockingStation
	from (irb):1
	from /Users/joezhou/.rvm/rubies/ruby-2.2.1/bin/irb:11:in `<main>'
```

* Type of error:  name error, meaning that the constant is not recognized and not defined.
* File path of the error is given in the third line of the error stack.
* The line number of the error is 1, as seen from the second line of the error stack.  This is the line number of the irb session which caused the error.
* Ruby doc says:  NameError: undefined local variable or method, or wrong constant name.
* To solve the error:  Define the class or some constant named DockingStation.
