# sqlViewer v1.0

This allows you to recombine a query from your SugarCRM log file into a readable query

You will find the sqlViewer tool on your Admin Menu in the 'System' section
![Screenshot](docs/1.png)

When you click on that link it will take you to the maion screen. Here you can either paste in a query that you want to
work with or click on the 'Retrieve SQL from Log' button.
![Screenshot](docs/2.png)

If you click the 'Retrieve SQL from Log' button you will get a listing of every unique SQL query in your sugarcrm.log
file. Next to the button on the main screen you are able to set a limit to how many lines the tool shows you. They are
sorted Newest to oldest.
![Screenshot](docs/3.png)

Once you paste a query or select one from the log you will then see that query formatted, highlighted, and the params
moved into place.
![Screenshot](docs/4.png)

You can click on the 'Submit and Run Query' button to actually run the query against your database. The tool only runs
SELECT queries and will refuse to run an UPDATE, DELETE or other type of query.
![Screenshot](docs/5.png)
