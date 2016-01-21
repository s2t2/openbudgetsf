# Observations

## Budget Data

 + .csv file
 + .json file
 + data dictionary .pdf file

The atom ext editor throws a "large file" warning message when attempting to open either the .json or .csv version.

### Datatypes

The .csv version is too large to import into Google Sheets, but not too large to import into MS Excel. Excel actions experience a lag.

There are 22 columns and over 110K rows in the .csv file.

Database table importation errors:

    [ERROR in row 77556] Out of range value for column 'Amount' at row 1
    [ERROR in row 77569] Out of range value for column 'Amount' at row 1
    [ERROR in row 77638] Out of range value for column 'Amount' at row 1
    [ERROR in row 77663] Out of range value for column 'Amount' at row 1
    [ERROR in row 77727] Out of range value for column 'Amount' at row 1
    [ERROR in row 77771] Out of range value for column 'Amount' at row 1

The greatest positive line item amount is $1,489,720,578
  and negative line item amount is $-3,335,080,143.

So the `Amount` field needs to be imported as a `bigint` datatype.

### Indices

None of the fields is a candidate primary key. Need to create one during import.
