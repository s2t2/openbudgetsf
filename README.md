# Open Budget - San Francisco

A collection of budget data visualizations.

## Developing

```` sh
git clone git@github.com:s2t2/openbudgetsf.git
````

[Download](https://data.sfgov.org/City-Management-and-Ethics/Budget/xdgd-c79v) the 2015 SF budget and note its file path (e.g. **~/Downloads/Budget.csv**).

Import the data into a database (assumes existence of **~/Downloads/Budget.csv**).

```` sh
mysql -uroot -p -e 'DROP DATABASE IF EXISTS opensf; CREATE DATABASE opensf;'
mysql --local-infile -uroot -p opensf < script/import_budget.sql
````

Transform budget data into smaller file(s) which can be visualized.

```` sh
todo
````

Start a local web server and visit http://localhost:8888/ in a browser.

```` sh
python -m SimpleHTTPServer 8888 &
````

## Deploying

todo: github pages
