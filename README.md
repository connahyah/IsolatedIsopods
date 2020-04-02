# IsolatedIsopods

Data source: https://www.kaggle.com/oindrilasen/la-airbnb-listings

Trello board: https://trello.com/b/HiNoxhxh/project-2

# Primary research question: 
What are the main factors that influence Airbnb renting price?

# Secondary research questions:
1) How many Airbnb listings does each neighborhood in Los Angeles have? (Group By Neighborhood count)

2) Which neighborhoods have the most expensive listings? (Group by neighborhoods, sum price)

3) What is the relationship between the listing price and 1) Neighborhood; 2) Super host; 3) Number of bedrooms; 4) Number of bathrooms; 5) Cleaning fee (Y/N); 6) Security deposit (Y/N); 7) Charge for extra people (Y/N); 8) Cancellation policy (strict, flexible, moderate); 9) Review scores rating; 10) Reviews per month; 11) Review scores rating

# ETL
1) Count number of unique properties --> 31253

2) Compare neighborhood and price

3) Compare superhost status and price

4) Compare bedroom and price

5) Compare bathroom and price

6) Compare fees and price

7) Compare superhost status and price

# Use pandas to load json converted DataFrame into database
