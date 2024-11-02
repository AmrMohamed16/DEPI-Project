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

  * [Amr Mohamed](https://github.com/AmrMohamed16)
  
  * Omar Ashraf
  
  * Yassen Elattar
  
  * Saher Mohamed

# Brif


  This project processes and analyzes airline reviews to identify trends in customer satisfaction across flight features like comfort and service quality. Using data engineering      techniques, it organizes and structures feedback, revealing key drivers behind positive or negative experiences. The insights generated aim to support airlines in enhancing         services and boosting customer satisfaction.


# DataSet 


  The dataset contains 8,093 airline reviews from passengers, offering insights into various aspects of their flight experiences. Each entry  includes details such as the reviewer's   name, the airline, the class of service, 
 and ratings for factors like seat comfort, staff service, food, and inflight entertainment. 
 The dataset also captures flight-specific information, such as the departure and destination locations, as well as whether the reviewer      recommends the airline. This
 data can be used to analyze customer satisfaction and identify key drivers behind positive or negative reviews in the airline industry.


# Tools 
  * Python Libraries:
    
    
  
    Pandas: For data cleaning, manipulation, and organization. 
    
    NumPy: For efficient numerical operations and handling arrays.
    
    Matplotlib & Seaborn: For creating visualizations and statistical graphs.
    
    
  * SQL:

    
  
    Database creation and management, including table design and importing data. 
   
    Complex SQL queries for analysis, such as calculating average ratings, identifying popular routes, 
   
    and exploring customer satisfaction by seat class.
   
    
  * SSMS (SQL Server Management Studio):
  
    To manage the database and implement the schema.
   
   
  * Power BI:
  
    For creating interactive dashboards and visualizing trends, customer feedback, seasonal travel patterns, and recommendations.
   
   
  * Data Warehouse Concepts:
  
    Designing and implementing Slowly Changing Dimensions (SCDs) to track data changes over time, essential for historical analysis.


   

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


  <img width="756" alt="Dup" src="https://github.com/user-attachments/assets/87bebe98-dce8-4237-8395-804aa5e9fdac">


  
    


# Analysis Process

  • Most Travelled To City :
  

   <img width="644" alt="Most travel" src="https://github.com/user-attachments/assets/07cc31ef-3894-4159-a599-6bd10beab5bd">


   Result: 


    
   <img width="400" alt="Screenshot 2024-11-02 at 8 12 12 pm" src="https://github.com/user-attachments/assets/8c53ad4c-5d4b-44ae-82cd-c0fb2d30aca2">   <img width="500" alt="Screenshot 2024-11-02 at 8 13 43 pm" src="https://github.com/user-attachments/assets/2857b533-2d2f-4c59-9d0a-4095cecf60e2">

    


  • Most Travelled From City : 


   <img width="635" alt="From" src="https://github.com/user-attachments/assets/948eb685-62cf-4cd2-b339-68f7281546bc">



  Result: 


  <img width="300" alt="From r" src="https://github.com/user-attachments/assets/387ba517-a142-4926-adcb-4379b2cc3453">   <img width="600" alt="From coity" src="https://github.com/user-attachments/assets/2ccb42fb-862d-44fd-91e2-dc7ae68f9471">

  




# Dataware Housing



  • Schema :

  

   <img width="886" alt="Screenshot 2024-11-02 at 7 55 59 pm" src="https://github.com/user-attachments/assets/94d7179b-bb9c-4336-87dd-8b10297e813b">


   

   We used A star schema because it simplifies queries, making it easier to analyze data, and improves performance by reducing the need for complex joins. It organizes data in a clear way, grouping related details like customer and flight information, which makes insights more accessible. It also scales well, allowing for easy expansion as new data is added. By focusing on key metrics and dimensions, the star schema enables faster discovery of trends, like customer satisfaction by airline or seasonal travel patterns.



   • Slowly changing dimention (SCD):
     The SCD data flow represents a process for handling slowly changing dimensions (SCD) in a data warehouse: 


     

   <img width="683" alt="Screenshot 2024-11-02 at 8 05 51 pm" src="https://github.com/user-attachments/assets/2c373e14-c839-446a-ba07-278ba8777f2c">



    
     
   1. Data Source: Extracts data from a database.
   
   2. Lookup: Checks if the incoming records already exist in the target table.

   3. Slowly Changing Dimension (SCD): Identifies if a record is new, needs updating, or should keep historical data (e.g., Type 1 or Type 2 SCD).

   4. OLE DB Commands: Updates existing records where necessary. 

   5. Union All: Combines updated and new records for further processing.

   6. Derived Column: Modifies data before final insertion.

   7. Insert Destination: Loads the final data into the target table.

      
   • Summary : 
   
  This flow is designed to handle slowly changing dimensions in a data warehouse environment. It checks if records already exist, updates existing records, inserts new ones, and      manages historical changes (Type 2 SCD) by creating new rows with the updated information. The various components ensure that both new data and updates are handled appropriately      before inserting them into the final destination table.

# Data visulization




# Machine Learning



# Conclusion


 
