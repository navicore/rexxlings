# Hint: Practical CSV Parsing

You can use literal string patterns in PARSE to split on delimiters
like commas:

```rexx
csv = 'Alice,30,Engineer'
PARSE VAR csv name ',' age ',' role
/* name = 'Alice', age = '30', role = 'Engineer' */
```

The literal `','` in the template tells PARSE to search for a comma
and split the string there. The comma itself is consumed and not
included in any variable.

For this exercise, you need two PARSE statements:

```rexx
PARSE VAR csv1 name1 ',' age1 ',' role1
PARSE VAR csv2 name2 ',' age2 ',' role2
```
