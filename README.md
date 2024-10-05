# 🏥 Hospital Management SQL Project

## 📋 Overview

This project focuses on **SQL analysis** of hospital data from various districts in **Gujarat**. The dataset includes details of primary health centers, their addresses, and the clusters they belong to within the **HMIS** (Health Management Information System) application. The objective is to perform data analysis by answering key questions related to hospital management and to extract valuable insights from the dataset.

## 📂 Dataset Information

- **Source:** The data is sourced from Kaggle, specifically covering **Gujarat** district hospitals.
- **Dataset Description:** The dataset includes details about hospitals and health centers, along with their respective districts and HMIS clusters.

## 🛠️ Table Schema

| Column                        | Data Type                   | Description                                               |
|-------------------------------|-----------------------------|-----------------------------------------------------------|
| 🆔 Serial_No                   | INT                         | Unique identifier for each hospital or health center.      |
| 🏥 Name                        | VARCHAR(40)                 | Name of the hospital or health center.                    |
| 🏙️ District                    | VARCHAR(40)                 | District where the hospital is located.                   |
| 🏠 Hospital_Address            | VARCHAR(60)                 | Physical address of the hospital.                         |
| 📊 Clusters_HMIS_Application   | VARCHAR(500)                | Cluster association in the HMIS application.              |

## 🔍 Key SQL Queries

This project answers several important questions about the health centers and hospitals in Gujarat:

1. 🏥 Find all health centers offering **Obstetrics and Gynaecology** services.
2. 🧮 Count the total number of health centers in a specific city (e.g., Ahmadabad).
3. 📊 What are the unique districts present in the hospital management database and their count?
4. 🏠 Which primary health center has the **longest address**?
5. 🏥 How many health centers belong to each cluster?
6. 🏥 Which clusters are associated with the **most health centers**?
7. 📊 What are the **unique clusters** listed in the HMIS application?
8. 🔁 Are there any **duplicate entries** for hospitals based on their names or addresses?
9. 🔎 Find hospitals belonging to **specific clusters** (e.g., Cluster-22, Cluster-5).

## 🎯 Project Objectives

- Perform **exploratory data analysis** on the **Gujarat district hospital** dataset.
- Provide insights into the **distribution of hospitals** across various clusters.
- **Identify duplicate entries** and understand **cluster associations**.
- Answer essential questions regarding the **services and clusters** of health centers.

## 🛠️ Tools Used

- **SQL**: To perform queries and analyze the dataset.
- **Kaggle Dataset**: For real-world health center data.

