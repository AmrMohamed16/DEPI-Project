# DEPI-Project :
Transforming Passenger Feedback into Actionable Insights: An In-Depth Data Engineering Project to Uncover Key Drivers of Airline Customer Satisfaction and Improve Service Quality



# Table of Content

* [Contributors](#Contributors)
* [Brief](#Brief)
* [DataSet](#DataSet)
* [Tools](#Tools)
* [Cleaning Process](#Cleaning_Process)
* [Analysis Process](#Analysis_Process)
* [Dataware Housing](#Dataware_Housing)
* [Data visulization](#Data_visulization)
* [Machine Learning](#Machine_Learning)
* [Conclusion](#Conclusion)
  


# Contributors

  • [Amr Mohamed](#https://github.com/AmrMohamed16)
  • Omar Ashraf
  • Yassen Elattar
  • Saher Mohamed

# Brif

  This project processes and analyzes airline reviews to identify trends in customer satisfaction across flight features like comfort and service quality. Using data engineering      techniques, it organizes and structures feedback, revealing key drivers behind positive or negative experiences. The insights generated aim to support airlines in enhancing         services and boosting customer satisfaction.

# DataSet 

  The dataset contains 8,093 airline reviews from passengers, offering insights into various aspects of their flight experiences. Each entry  includes details such as the reviewer's   name, the airline, the class of service, 
 and ratings for factors like seat comfort, staff service, food, and inflight entertainment. 
 The dataset also captures flight-specific information, such as the departure and destination locations, as well as whether the reviewer      recommends the airline. This
 data can be used to analyze customer satisfaction and identify key drivers behind positive or negative reviews in the airline industry.

# Tools 
  Python Libraries:
  
   • Pandas: For data cleaning, manipulation, and organization. 
    
   • NumPy: For efficient numerical operations and handling arrays.
    
   • Matplotlib & Seaborn: For creating visualizations and statistical graphs.
    
  SQL:
  
   • Database creation and management, including table design and importing data. 
   
   • Complex SQL queries for analysis, such as calculating average ratings, identifying popular routes, 
   
   and exploring customer satisfaction by seat class.
   
    
  SSMS (SQL Server Management Studio):
  
   • To manage the database and implement the schema.
   
   
  Power BI:
  
   • For creating interactive dashboards and visualizing trends, customer feedback, seasonal travel patterns, and recommendations.
   
   
  Data Warehouse Concepts:
  
   • Designing and implementing Slowly Changing Dimensions (SCDs) to track data changes over time, essential for historical analysis.


   

# Cleaning Process

   • To load the dataset, we used the pandas library's read_csv() function to import CSV files into dataframes.
   
   • This allow us to easily work with the data and inspect its structure.
   
   •  The CSV file contains data related to passengers info, flight info, reviews info and they were read using the appropriate file paths and encoding.


   • Checking For Nulls : 
   
   
  <img width="806" alt="Check for nulls" src="https://github.com/user-attachments/assets/2417e911-c41e-4395-bac9-72f9deb2a9da">
  

  • The code checks for null values in the specified columns and provides a simple report on their presence or absence.
  


  • Checking For Missing Data : 

   We used the isnull().sum() function to check for missing values in each column.

   <img width="248" alt="Screenshot 2024-11-02 at 7 42 13 pm" src="https://github.com/user-attachments/assets/8065645e-0353-4563-9b49-279dcfe52289">

   
  • Checking For Duplicates :

  Duplicates are checked and removed from the dataset to avoid redundant data affecting the analysis.

   

# Analysis Process


# Dataware Housing


# Data visulization


# Machine Learning



# Conclusion


 
