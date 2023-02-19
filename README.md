# Smart Solar - Supervisory Data Acquisition, Visualization, Optimization, Analysis
## Data Modeling and Analysis
This repository showcases the full progress report, evidence and results of data modeling and analysis software code in .m file using MATLAB software to feature progress as of now.

Inside the repository folder features a MATLAB .m file of the code in progress, graph visualization, sample data, and lastly this README.md.
## Code Process (Acitvity Diagram)
![Subsystem Diagram](https://user-images.githubusercontent.com/70229773/219973558-7d33b56b-5338-4c60-a29f-ccf55f6dba2b.JPG)
## Features (System Environment)
In features, we simplify the code by breaking down the code infrastructure in .m files into each section corresponding to its process and function. 
- Importing the Data
- Visualization of Data
- Computation of Generation and Load Consumption Graphs
-  Visualization of Variation in Usage using Moving Average Filter
- Normalizing Input data and Transforming Outputs 
- Process of Artificial Neural Network 
- Model Visualization and Computation of Error

## As of Now Progress
Note: Due to the rest of incomplete subsystems, we are unable to import real data from remote server. In our testing of code function, we do not require real data to test the operation of the system. Instead, we only need a sample of power consumption data.  

In the absence of real data,  we used the analogy of each subsystem's power consumption similar to each Wang Hall tenant's power consumption, and run on the assumption that Wang Hall has solar panels that yield renewable generation. We use this analogy to create the sample data csv. of power consumption of each tenant. This will be the data example in our first round of testing of the code that covers importing the data, visualization of data, computation of generation and load consumption graphs and visualization of moving average.

## Objective 
The objective of the code is to first import the data from remote server. Visualize them. Normalizing input and output. Feed into Machine Learning. The process of Machine Learning include re-training the model and finding the optimal number of neurons. Finally, based on optimal results, we can infer and predict the results of future performance of Power generation of the solar panel. 


