# Pewlett-Hackard-Analysis Challenge

## Overview of Project

The Pewlett-Hackard-Analysis company has requested that data be gathered to identify how many of their staff will retire in the upcoming years.  The company is referring to the large number of retirees as an event called the "silver tsunami".  They want to prepare for hiring to replace the retirees and create a plan to train new employees with the retirees as mentors, when possible.  The cmopany would like to see the soon to be retirees' names, titles and departments.  SQL queries were created to pull the requested data and Python DataFrames were utilized to sort and report the results. 


## Results

There were four csv files full of sorted and filtered data that were produced within this analysis.  
* retirement_titles.csv
The first csv file is titled retirement_titles.csv which was created to fulfill the company's ask to see the total titles for all potential retirees. The query returns titles for individuals who have a birthdate between 1952 and 1955.  The table has useful information however there are duplicates within the table.  Several employees appear more than once within the table, as seen in the screen shot below.  

![BF5FA10B-6052-408C-A5EA-C46A535096B7_4_5005_c](https://user-images.githubusercontent.com/96222437/152725601-8dc43e94-c3ff-4578-9b30-2028fce6dad8.jpeg)


* unique_titles.csv
The second table and csv file created is titled unique_titles.csv.  This table was created as a result of the previous table which had duplicates. The company will find a cleaner table with unique_titles, and it will display the total number of titles that will need to be replaced when the "silver tsunami" occurs.  

* retiring_titles.csv
The third table titled retiring_titles.csv was designed to share the detailed information of how many of each title will be retiring.  This query lists the count in a column and the corresponding title with it.  The company can easily see which level of their organization will be hit hardest by the "silver tsunami".  

![852B3850-138F-4FD0-BA62-01D95785215F_4_5005_c](https://user-images.githubusercontent.com/96222437/152727186-9898f246-95cd-43b0-935c-c7bdf8fc3364.jpeg)

* mentorship_eligibility
This fourth table was created to help Pewlett-Hackard with their planning to get the employees trained, those who will replace the retirees.  The company wants to use the knowledge of the retirees to help train new employees prior to their departure.  The mentors table limits the list to those with birthdays in the year of 1965 and helps illustrate how many potential mentors exist and in what departments they can be found.  A screen print of this table is below.  

![C914C5A7-D093-4710-99C3-0522462B2576_4_5005_c](https://user-images.githubusercontent.com/96222437/152727444-a39947aa-7639-4344-9f41-73d326abd074.jpeg)

## Summary

Pewlett-Hackard's impact with the "silver tsunami" will be huge.  The figure below shows the proportion of retirees across different titles within their company.  The company will have the biggest challenge with finding replacements to fulfill the senior level positions.  Over 70% of the upcoming retirees have titles that fall within the 'Senior Engineer' and 'Senior Staff' level.  
![CD11741F-10CC-412F-A685-D5167203BC2E_4_5005_c](https://user-images.githubusercontent.com/96222437/152728817-177b5683-2bf0-4282-b689-8f39d53350b1.jpeg)


Pewlett-Hackard has 1,549 available employees who fit the criteria for becomming mentors.  Further research is recommended to identify which department the employees fall within to help ensure that there are an adequate number of mentors in each area.  The mentors table is also limited to only those born in 1965 and there could be employees younger or older who have substantial knowledge to become mentors.  The further research should include other birth years.  
In querying the mentors table further, it is evident that all 1.549 employees listed have been working at the company for at least more than 10 years so it would seem they are knowledgeable enough to train their replacements, shown below in figure 2.  

![78BBBAD7-C74A-43DF-82FF-6D0485E5E19D_4_5005_c](https://user-images.githubusercontent.com/96222437/152727750-8a8a9f2b-dda2-4931-9e60-0987509fe58c.jpeg)

![1AC00A65-8A38-4C3D-A495-FA59F2294D9D_4_5005_c](https://user-images.githubusercontent.com/96222437/152728521-fbde0d6b-dba8-462c-8b14-96e41d581fff.jpeg)

