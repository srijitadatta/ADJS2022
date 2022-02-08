## *Definitions*

### Primary functions for data analysis: 
* **read_csv()** : imports text files in CSV format into the R environment.
* **filter()** : select only certian rows from a dataset.
* **group_by()** : group the rows in a dataset based on the values in one or more columns.
* **summarise()** : apply summary functions (see below) to the whole dataset, or to groups if `group_by()` is used
* **arrange()** : sort results based on one or more columns; ascending is the default, use `desc()` for descending. 
* **count()** : group the data based on a column or columns and apply the n() summary function to those groups.
* **mutate()** : creates a new column in a dataset 


### Summary functions for analysis
* **sum()** : sums a numbers column. If NAs are present will return NA, unless `na.rm=T` is used.
* **mean()** : averages a numbers column. If NAs are present will return NA, unless `na.rm=T` is used.
* **median()** : gives the median of a numbers column. If NAs are present will return NA, unless `na.rm=T` is used.
* **n()** : counts rows or observations.
* **range()** : 

### Supplementary functions for manipulating data: 
* **clean_names()** :  from the `janitor` package, standardizes column names in a dataset to all lowercase, and replaces non-letter characters and spaces to underscores (`_`).
* **is.na()** : used within `filter()` to find nulls (NAs). 
* **as.numeric()** : converts strings to numbers; will coerce non-numeric values into NA.
* **as.character()** : converts non-string values to strings.


## *Examples*



