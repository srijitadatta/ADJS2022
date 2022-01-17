## Our R Dictionary (select terms we'll use regularly)

#### **Variables**

* Containers we create (and name) to hold various _objects_, such as strings, numbers, lists, data frames, tibbles, etc
* On naming variables: you can use letters, numbers, underscores and dots


Variable Name | Validity | Reason
------------- | -------- | ------
var_name2.    | valid    | has letters, numbers, underscore, dot
.var_name     | valid    | can start with a dot (but not a dot followed by a number)
var_name%     | invalid  | has the character '%' (not allowed)
2var_name     | invalid  | starts with a number
.2var_name    | invalid  | cannot start with a dot and a number
_var_name     | invalid  | cannot start with underscore


#### **Data Types**

* character: commonly referred to as a string; can be letters, numbers, punctuation, etc. Always enclosed in "double quotes". 
* integer: a whole number, such as `1`, `5`, `10000`. No decimal places.
* numeric: a number that can have decimal places, such as `5.2` or `100.37`
* logical: either `TRUE` or `FALSE` (not quoted) 
* complex: e.g. `3 + 2i` (probably won't use this) 
* raw: (won't use this either)


#### **Objects**

* Vector: the most basic R object. 
	* Can be a single item, or multiple items of the same type
		* `"hello"` is a character vector of 1 item
		* `"hello", "guten tag", "bienvenito"` is a character vector of 3 items
		* `1, 2, 3, 4, 5` is a numeric vector of 5 items
	* Create and name vectors with the assignment operator: 
		* create a character vector with c():  `greeting <- c("hello", "guten tag", "bienvenito")`
		* create a number vector within a range: `nums <- 1:5`
	* Extract an item from a vector of multiple items: `greeting[1]` returns `"hello"`
		
* List
	* Usually contains multilple items, can be of different types
	* Create using list()
	* Extract using []
	* Examples:
		* `lista <- list("hello", "goodbye", 1, 5)`
			* lista has 4 items
			* extract one item: `lista[4]` returns `5`
		* `listb <- list(c("hello", 5), c("apple", 21, "blueberry"))`
			* listb has 2 items (2 vectors)
			* extract the second item: `listb[2]` returns `"apple" "21" "blueberry"`. _Note that "21" was converted to character because it was created using c(), which creates vectors, which must be items of the same type._

* Factor
	* used to characterize data and store it as levels
	* creating using factor() and taking a vector as input
	* example: 	`f <- factor("east", "west", "north", "south")`
	* important in data frames

* Data.Frame
	* Two-dimensional, like a table (columns x rows)
	* Each column contains values for one variable and each row a set of values for each column
	* Data can be numeric, character, or factor
	* Columns must be named
	* Create a data frame using data.frame()
		* ex: `df <- data.frame(student_id = c(1:5), name = c("David", "Bailey", "Grace", "Andrea", "Roshae"))`
	* Extract columns using $: `df$name`

* Tibble
	* A reimagined data frame that is part of Tidyverse
	* ["lazy and surly"](https://tibble.tidyverse.org/): do less and complain more
	* This tends to make you write cleaner code
	* Create using tibble()
	* Extract same as data frame, with $
	
