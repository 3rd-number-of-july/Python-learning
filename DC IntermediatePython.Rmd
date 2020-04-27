---
title: "DataCamp Courses Material"
output: 
     html_document:
          code_fonding: non
          toc: TRUE
          toc_float: True
          toc_depth: 3
          number_sections: TRUE
          section_divs: TRUE
          smart: TRUE
          highlight: 'kate'
          theme: 'darkly'
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

---

# **General information**


##  Visualization Basics

General functions for displaying plots:

* `plt.show()`
* `plt.clf()` cleans previous plot up so you can start afresh

Types of plots:

* `plt.plot` - line
* `plt.scatter` - dots
* `plt.hist` - histograms

### Customizing plot

|**Scales**|**Labels**|**Ticks**|
|-------|-------|-------------|
|plt.xscale(*'scale-name'*)|plt.xlabel(*'name'*)|plt.xticks(*'what', 'to-what'*)|
|plt.yscale(*'scale-name'*)|plt.ylabel(*'name'*)|plt.yticks(*'what', 'to-what'*)|
|Name could be *logarithmic*/...|||


|**Title**|**Text**|
|----------|----------|
|plt.title(*'name'*)|`plt.text`(xcoord, ycoord, 'text')|
||*there should be lpt.grid(True) call*|

* to pass these coordinates to plt.axes() in the form of a list: `[xlo, ylo, width, height]`
* `plt.subplot()` to create a figure with 1x2 subplot layout & make the first subplot active - `plt.subplot(1,2,1)`
* `plt.tight_layout()` to improve the spacing between subplots
* `plt.xlim()` to set the x-axis range
* to save the output - `plt.savefig('xlim_and_ylim.png')`
* to set the x-axis and y-axis limits `plt.axis((x1,x2,y1,y2))`
* to hide the axes `plt.axis('off')`
* to add a legend at the lower center - `plt.legend(loc='lower center')`
* plt.annotate()
  + plt.annotate`('name label', xy = (a1, a2), xytext = (b1, b2), arrowprops = dict(facecolor = 'color name'))`
* to retrieve the index of the highest value in the array using `.argmax()`
* to set the style to 'ggplot' - `plt.style.use('ggplot')`

### Plots arguments

|Plot type|Argument Name|Usage|Values|
|----|----|----|----|
|**Scatter**|s|size of dots|number|
|**Scatter**|c|color|name of the color|
|**Scatter**|alpha|opacity of the dots|number<1|
|**Histogram**|bins|||

---
### Meshes

* to generate 1-dimensional array a1 use - `np.linspace()`
  + a1 should contain *n* values uniformly spaced between *-m* and *k* - a1 = np.linspace`(-m, k, n)`
* to construct 2-dimensional array X from a1 and a2 use - `np.meshgrid()`
* array Y can be visualized by using `plt.pcolor(Y)`
* `plt.imshow()` or `plt.pcolor()` are often used to visualize a 2-D array in entirety
* 2 types of contour plot supported by Matplotlib are `plt.contour()` and `plt.contourf()` 
  + the former displays the contours as lines and the latter displayed filled areas between contours
  + colormap (`cmap`) = 'jet' / 'coolwarm' / 'magma' / 'viridis' / 'summer' / 'autumn' / 'winter' / 'spring'
* `plt.colorbar()`

### Histograms

* to visualize 2-D histograms - `plt.hist2d()`
  + to specify the coordinates of the points use plt.hist2d`(x,y)` *(assuming x and y are two vectors of the same length)*
  + to specify the number of bins with the argument `bins=(nx, ny)`: `nx` = the number of bins to use in the horizontal direction; ny = the number of bins to use in the vertical 
  + to specify the rectangular region in which the samples are counted in constructing the 2D histogram - `range=((xmin, xmax), (ymin, ymax))`
* `plt.hexbin()` uses hexagonal bins
  + `gridsize` (default 100) 1) gives the number of hexagons across the x-direction used in the hexagonal tiling. 2) fixes the number of hexagon in the x- and y-directions respectively in the tiling if specified as a list or` a tuple of length 2
  + `extent=(xmin, xmax, ymin, ymax)` specifies rectangular region covered by the hexagonal tiling

### Images

* to read an image from file use `plt.imread()`
* the color image can be plotted as usual using `plt.imshow()`
* The resulting image loaded is a NumPy array of three dimensions
  + The array typically has dimensions M×N×3, where M×N is the dimensions of the image
  + The third dimensions are referred to as color channels *(typically red, green, and blue)*
  + The color channels can be extracted by Numpy array slicing
* the ratio of the displayed width to height is image `aspect`
  + The default value of `'auto'` keeps the pixels square and the extents are automatically computed from the shape of the array if not specified otherwise
* the range used to label the x- and y-axes is the image `extent`

---

## Packages Observation

|№|Package Name|Usage|Import command|
|----|----|----|----|
|1|Matplotlib|?|import matplotlib.pyplot as plt|
|2|NumPy|?|import numpy as np|
|3|Pandas|?|import pandas as pd|


Useful functions:

* `np.array()` - to create numpy array from a list
* boolean operators `and`, `or` and `not` don't work with Numpy arrays, so instead use 
  + `np.logical_and()`
  + `np.logical_or()`
  + `np.logical_not()`
* `np.transpose()` ?
* `np.log10(variable)` 

---

## Some statistics 

* **seed()** sets the random seed, so that your results are reproducible between simulations. 
  + As an argument, it takes an integer of your choosing. 
  + If you call the function, no output will be generated.
* **rand()** if you don't specify any arguments, it generates a random float between 0 and 1
* **randint()** generates integers randomly
  + arguments set borders 

For Numpy:

* **np.random** should be placed before seed() or rand()

---

# **Data Types and Structures**

|№|General Data Type|Data Type|
|-|----------|-------|
|1|**Numeric**|  1. integer
|||2. float|
|||3. complex number||
|2|**Boolean**|*True / False*|
|3|**Sequence**|1. string|
|||2. list|
|||3. tuple|
|4|**Dictionary**|*{key:value}*|

---

## Numeric

|Operator|Description|
|----|-----------|
|+,-,*,/| |
|%|returns the remainder (остаток) of the division|
|**|степень|
|//|the quotient in which the digits after the decimal point are removed|
||if one of the operands is <0, the result is floored, i.e., rounded away from zero (towards negative infinity)|

---

|Basic Functions|Description|
|----|-----------|
|**int**|returns the integer object from a *float or a string containing digits*|
|**float**|returns a floating-point number object from *a number or string containing digits with decimal point or scientific notation*|
|**complex**|returns a complex number with real and imaginary components|
|**hex**|converts a *decimal integer* into a hexadecimal number with 0x prefix|
|**oct**|converts a *decimal integer* in an octal representation with 0o prefix|
|**pow**|returns the power of *the specified numbers*|
|**abs**|returns the absolute value of a *number* without considering its sign|
|**round**|returns the rounded number|

---

## Boolean

1. **String comparison**: Python determines the relationship based on alphabetical order:

```{python}
'alpha' <= 'beta'
```

2. **Arrays comparison**: determines for each element of array

---

## Sequence

1. **String** -- a collection of >= 1 characters put in single, double or triple quotes ("")

|Operator|Description|
|----|-----------|
|+|Appends the second string to the first|
|*|Concatenates multiple copies of the same string|
|[]|Returns the character at the given index|
|[:]|Fetches the characters in the range specified by two index operands separated by the ':'|
|in|Returns true if a character exists in the given string (ex: a = 'Python Tutorials' -> *'X' in a* -> False)|
|not in|Returns true if a character does not exist in the given string|

---

|Action|Code|
|----|-----------|
|**create**| string = '' |

---

* *for additional info:* [link](https://www.tutorialsteacher.com/python/python-string)

---


2. **List** -- an ordered collection of >= 1 data items, not necessarily of the same type, put in square brackets ([])

|Operator|Description|
|----|-----------|
|+|Appends the second list to the first|
|*|Concatenates multiple copies of the same list|
|[] (slice)|Returns the item at the given index|
||A negative index counts the position from the right side|
|[:]|Fetches the characters in the range specified by two index operands separated by the ':'|
|in|Returns true if a character exists in the given string (ex: a = 'Python Tutorials' -> *'X' in a* -> False)|
|not in|Returns true if a character does not exist in the given string|

---

|Action/Method|Code|
|---|-----------|
|**to create**| list = [value1, value2, ... valueN] |
|len()|returns the number of elements in the list/tuple|
|max()|returns the largest number, if the list contains numbers|
||if the list contains strings, the one that comes last in alphabetical order will be returned|
|min()|returns the smallest number, if the list contains numbers|
||if the list contains strings, the one that comes first in alphabetical order will be returned|
|append()|adds an item  at the end of the list|
|insert()|insert an item in a list at the specified index|
|remove()|remove a specified object from the list|
|sort()|rearrange the items in the list according to the alphabetical order|
||list.sort()|
|sorted|rearrange the items in the list according to the alphabetical order|
||sorted(list)|
||defauilt is the ascending order|
||reverse=True for descending order|
---

* *for additional info:* [link](https://www.tutorialsteacher.com/python/python-list)

---

3. **Tuple** -- an ordered collection of >= 1 data items, not necessarily of the same type, put in parentheses (())

* *unlike the list*, tuple is immutable (неизменяемый)
* operators for tuple are the same as for list
* methods len(), max() and min() are the same as for list

|Action|Code|
|----|-----------|
|**create**| tuple = () |

---

## Set

---

## Dictionaries

**Structure of a dictionary**: 

* *numeric values are used without commas*

```{python}
dictionary = { 'key1':{'key1-1':'value1-1', 'key1-2':'value1-2'}, 'key2':'value2'}
print(dictionary)
```
---

|Action|Code|
|--------|-----------|
|**add** new pair of 'key:value'|dictionary['key'] = 'value'|
||*to assert that new 'key' is now a key in dictionary*: 'key' in dictionary|
|**delete** key|del(dictionary['key'])|

---

|Method|Usage|
|--------|-----------|
|index()| something.index(*'what-to-find'*)|
|keys()| dictionary.keys()|
|items()|returns a view object that contains the key-value pairs of the dictionary, as tuples in a list|

* *for additional info:* [link](https://www.tutorialsteacher.com/python/python-dictionary)
---






---

# **Loop fuctions**

## Not specified

**Printing out elements of a list**

```{python}
a = [11.25, 18.0, 20.0, 10.75, 9.50]

for i in a:
    print(i)
```

* There each element of the list is a list:

```{python}
a = [["hallway", 11.25], 
         ["kitchen", 18.0], 
         ["living room", 20.0], 
         ["bedroom", 10.75], 
         ["bathroom", 9.50]]
         
for x,y in a:
    print('the ' + str(x) + ' is ' + str(y) + ' sqm')
```


## Enumerate()

Create tulpe

```{python}
string = 'hello'

for i in enumerate(string):
  print(i)
```

* Enumerate() используется для упрощения прохода по коллекциям в цикле, *когда кроме самих элементов требуется их индекс*

```{python}
a = [11, 18, 20, 10, 9]

for index, item in enumerate(a) :
    a[index] = item ** 2
    
print(a)
```

* **enumerate()** also accepts an optional argument - from where to start the index

```{python}
a = ['apple', 'banana', 'grapes', 'pear']

for index, value in enumerate(a, 3):
    print(index, value)
```

* it also can be used without loop function:

```{python}
my_list = ['apple', 'banana', 'grapes', 'pear']
counter_list = list(enumerate(my_list, 1))
print(counter_list)
```

---

## Dictionary.items()

```{python}
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin',
          'norway':'oslo', 'italy':'rome', 'poland':'warsaw', 'austria':'vienna' }
          
for key, value in europe.items():
    print('the capital of ' + str(key) + ' is ' + str(value))
```

---

## Loop over Numpy array

|Numpy array dimension|Code|
|-|--------|
|1D|for x in my_array:|
|2D|for x in **np.nditer(my_array)**:|


## Loop over Pandas DataFrame

* **iterrows()** method - every observation is iterated over and on every iteration *the row label* and *actual row contents* are available:
  + `for lab, row in df.iterrows() :`
  + row data is a Pandas Series by default
  + to select variables from Pandas Series: 
  `for lab, row in df.iterrows() :`
    + `print(str(row['colname']))`


* to add a new column to Data Frame (here a specific method is applied to current variables of a column) - BUT it's not so efficient to use *iterrows()* here:
  + `for lab, row in df.iterrows():`
    + `df.loc[lab, 'new_col_name'] = row['col_name'].method()`

* **apply()**  
  + `cars["new_col_name"] = cars["col_name"].apply(something)`

---

# Pandas

Useful functions:

* `pd.DataFrame()`

     
**Square Brackets**

* *single* to print  column as Pandas Series
* *double* to print column as Pandas DataFrame
     + to print few columns: `df[['column1', 'column2', ...]]`

* Extarcting more specific data: 
  + `august = df['Temperature']['2010-August']`

**Loc and iloc**

  * **loc** is label-based: `df.loc['text']` or `df.loc[['text']]`
  * **iloc** is integer index based

* basically are used for selecting *rows*
* allow you to select *both rows and columns* (first arg = row, second = column)
     + `df.loc[ ['row1', 'row2', ...] , ['col1', 'col2', ...] ]`
* possible to select only *columns*
     + `df.loc[ : , 'col' ]` as Pandas Series
     + `df.loc[ : , ['col'] ]` as Pandas DataFrame

---

## Reading files

* **read_csv()** 
  + to be read as pandas DataFrame: **pd.read_csv()**
  + attributes to read_csv(): header, names, delimiter, comment
     + `index_col` argument is used to specify which column in the CSV file should be as a row label

```{python eval=FALSE, include=FALSE}
# Read the raw file as-is: df1
df1 = pd.read_csv(file_messy)

# Print the output of df1.head()
print(df1.head())

# Read in the file with the correct parameters: df2
df2 = pd.read_csv(file_messy, delimiter=' ', header=3, comment='#')

# Print the output of df2.head()
print(df2.head())

# Save the cleaned up DataFrame to a CSV file without the index
df2.to_csv('file_clean.csv' ,index = False)

# Save the cleaned up DataFrame to an excel file without the index
df2.to_excel('file_clean.xlsx', index = False)
df2.to_csv('file_clean.xlsx', index=False)
```

---

## Inspecting data

* **head()** and **tail()** methods
* **info()** method to determine information about the total count of non-null entries and infer the total count of null entries
* **.values** to represent a DataFrame as a NumPy array

---

## Creating DataFrames

```{python eval=FALSE, include=FALSE}
import pandas as pd
import numpy as np

list_keys, list_values = ['a','b','c'], [0,1,2]

zipped = list(zip(list_keys, list_values))

# Inspect the list using print()
print(zipped)

# Build a dictionary with the zipped list: data
data = dict(zipped)

# Build and inspect a DataFrame from the dictionary: df
df = pd.DataFrame(data)
print(df)
```

* **df.columns** - to view and assign new string labels to columns in a pandas DataFrame

```{python eval=FALSE, include=FALSE}
# Make a string with the value 'PA': state
state = 'PA'

# Construct a dictionary: data
data = {'state': state, 'city': cities}

# Construct a DataFrame from dictionary data: df
df = pd.DataFrame(data)

# Print the DataFrame
print(df)
```

---

## Plotting series

* pandas **plot()** method makes calls to matplotlib to construct the plots 
  + plot all columns together on one figure by default
  + True `subplots` argument plot all columns as subplots
  + to plot specific columns: `df[column_list1].plot()`
  
* `kind` keyword argument to df.plot() can be *scatter*, *box*, *hist*

```{python eval=FALSE, include=FALSE}
# This formats the plots such that they appear on separate rows
fig, axes = plt.subplots(nrows=2, ncols=1)

# Plot the PDF
df.plot(ax=axes[0], kind='hist', bins=30, normed=True, range=(0,.3))
plt.show()

# Plot the CDF
df.plot(ax=axes[1], kind='hist', bins=30, normed=True, cumulative=True, range=(0,.3))
```

* **describe()** method 
* **count()** method
* **quantile()** method
* **std()** method - for standard deviation

---

## Time series 

Reading in a data file using 3 different approaches:
* df1 = pd.read_csv(filename)
* df2 = pd.read_csv(filename, `parse_dates`=['Date'])
* df3 = pd.read_csv(filename, index_col='Date', `parse_dates`=True)

* **pd.to_datetime()**
  + *Prepare a format string:* time_format = '%Y-%m-%d %H:%M'
  + *Convert date_list into a datetime object:* my_datetimes = pd.to_datetime(date_list, `format` = time_format)  

* extracting 'times':
  + Extract the hour from 9pm to 10pm on '2010-10-11': 
    + `ts1 = ts0.loc['2010-10-11 21:00:00':'2010-10-11 22:00:00']`
  + Extract '2010-07-04' from ts0:
    + `ts2 = ts0.loc['2010-07-04']`
  + Extract data from '2010-12-15' to '2010-12-31': 
    + `ts3 = ts0.loc['2010-12-15' : '2010-12-31']`

* **Time zones and converting**
  + Localize the time to US/Central:
    + tz_central = tz_none.`dt.tz_localize('US/Central')`
  + Convert the datetimes from US/Central to US/Pacific:
    + tz_pacific = tz_central.`dt.tz_convert('US/Pacific')`

---

## Manipulating with DataFrames

---

**Way to select True values from Data Frame**

* new0 = df['colname'] - where True value should be searched
* new = df[new0]
* or one-line code: new = df[df['colname']]

**To select values with certain meaning**

* new_variable = df *logic operator* (value)

---

* to slice the row labels (example: 'Perry' to 'Potter'): 
  + `p_counties = election.loc['Perry':'Potter',:]`
* to slice the row labels ('Potter' to 'Perry') in reverse order:
  + `p_counties_rev = election.loc['Potter':'Perry':-1]`

* **Grouping** by multiple columns with **groupby()** method
  + `level` parameter: *group gapminder by 'col1' and 'col2': 
    + new_df = df.`groupby(level=['col1', 'col2'])`

* **agg()** method can be used with a tuple or list of aggregations as input. 
  + When applying multiple aggregations on multiple columns, the aggregated DataFrame has a *multi-level column index*
  
---

## Cleaning data

* `str.strip()` method to strip extra whitespace 
* `str.contains('sth')`

* **Missing Values and interpolation**
  + `interpolate()` method with key argument `how` (linear / ...)

* to split on the comma to create a list: 
  + `new_list = list.split(',')`
  
* **astype()** method to convert data into specific type (str / ...)   

* to pad leading zeros to the Time column: 
  + df['Time'] = df['Time'].`apply(lambda x:'{:0>4}'.format(x))`

* **Reindexing the Index** is useful in preparation for adding or otherwise combining two time series data sets
  + Reindex without fill method: 
    + `ts3 = ts2.reindex(ts1.index)`
  + Reindex with fill method, using forward fill:
    + `ts4 = ts2.reindex(ts1.index, method = 'ffill')`

* **Resampling and frequency**
  + `df.resample()`

* **Rolling** by `rolling()` method (keyword argument 'window')
  
* **Cleaning numeric variables**
  + **pd.to_numeric()** with `errors` keyword argument (can be 'coerce' / ... )
  
---
  
## Filtering data

* to **filter** the DataFrame with the array: 
  + `new_df = df[array]`
* **filter()** method can be used with groupby to remove whole groups of rows from a DataFrame based on a boolean condition.
  
* In certain scenarios, it may be necessary to remove rows and columns with missing data from a DataFrame - **dropna()** method
  + `how` keyword argument ('any'/'all')
  + `axis` keyword argument
  + `thresh` keyword argument
* **.shape** attribute can be also used - 
  + returns the number of rows and columns in a tuple from a DataFrame or the number of rows from a Series
  + to see the effect of dropping missing values from a DataFrame
  
---

## Applying functions 

* to apply the function over columns:
  + `df2 = df[['col1','col2']].apply(function)`
  
* **.transform()** method can be applied after *grouping* to apply a function to groups of data independently
  + Group df by 'col1' and transform the ['col2','col3'] columns by *zscore*.
    + new_df = df.groupby('col1')`['col2', 'col3'].transform(zscore)`
  
---  

## Other

* **map()** method  is used to transform values according to a Python **dictionary** look-up
  + Use the dictionary to map the column to the new column:
    + `df['col2'] = df['col1'].map(dictionary)`

* to compute the absolute difference of t1 and t2: differences = `np.abs(t1 - t2)`

* Reset the index of daily_climate and extract the Temperature column. To do this, first reset the index of daily_climate using the .reset_index() method, and then use bracket slicing to access 'Temperature'. Store the result as daily_temp_climate
* Extract the Temperature column from daily_climate using .reset_index(): daily_temp_climate
daily_temp_climate = daily_climate.reset_index()['Temperature']

---

## Zscore

When performance is paramount, you should avoid using *.apply()* and *.map()* because those constructs perform Python for-loops over the data stored in a *pandas Series or DataFrame*. By using **vectorized functions** instead, you can loop over the data at the same speed as compiled code. NumPy, SciPy and pandas come with a variety of vectorized functions (called Universal Functions or UFuncs in NumPy).

In statistics, the **z-score** is the number of standard deviations by which an observation is *above* the mean - so if it is negative, it means the observation is *below* the mean.

Instead of using *.apply()* as you did in the earlier exercises, the **zscore UFunc** will take a pandas Series as input and return a NumPy array.

---




