create database hospitaldata;
create table hospital_management(
Serial_no int primary key not null,
name varchar(40) not null,
district varchar(40) not null,
hospital_address varchar(60) not null,
clusters_HMIS_application varchar(500) not null
);
select * from hospital_management;

# Data extraction and data analysis

# 1] Find all health centers offering Obstetrics and Gynaecology services:
select name, district, hospital_address, clusters_HMIS_application  -- Select relevant fields
from hospital_management
where clusters_HMIS_application LIKE '%OBSTETRICS AND GYNAECOLOGY%';  -- Filter for specific services

# 2] Count the total number of health centers in a specific city (e.g., "Ahmadabad"):
select district, count(distinct name) as total_count  -- Count distinct health center names
from hospital_management
where district = 'AHMADABAD';  -- Filter for Ahmadabad district

# 3] What are the unique districts present in the hospital_management database and their count?
select distinct district,  -- Select unique districts
(select count(distinct district) from hospital_management) as total_district  -- Count of unique districts
from hospital_management;

# 4] Which primary health center has the longest address?
select name, district, hospital_address  -- Select name, district, and address
from hospital_management
order by length(hospital_address) desc limit 1;  -- Order by address length and limit to the longest

# 5] How many health centers belong to each cluster?
select district, count(distinct name) as total_count, clusters_HMIS_application  -- Count distinct health centers per cluster
from hospital_management
group by district, clusters_HMIS_application  -- Group by district and cluster
order by total_count desc;  -- Order by total count in descending order

# 6] Which clusters are associated with the most health centers?
with total_health_centre as (  -- Create a CTE to count health centers by district
    select district, count(name) as total_count  -- Count of health centers per district
    from hospital_management
    group by district
    order by total_count desc limit 5
)
select district, total_count  -- Select district and total count from the CTE
from total_health_centre as tc
where total_count = (select max(total_count) from total_health_centre where district = tc.district);  -- Filter for maximum count

# 7] What are the unique clusters listed in the HMIS application?
select distinct clusters_HMIS_application  -- Select unique clusters
from hospital_management;

# 8] Are there any duplicate entries for hospitals based on their names or addresses?
select name, hospital_address, count(*) as duplicate_count  -- Count duplicates based on name and address
from hospital_management
group by name, hospital_address  -- Group by name and address
having count(*) > 1;  -- Filter for duplicates

# 9] Find Hospitals Belonging to Specific Clusters (e.g., Cluster-22, Cluster-5)
select name, hospital_address, district, clusters_HMIS_application  -- Select relevant fields
from hospital_management
where clusters_HMIS_application like '%CLUSTER-22%' or clusters_HMIS_application like '%CLUSTER-5%';  -- Filter for specific clusters

# Additional query to view names and clusters of all hospitals (for reference)
select name, clusters_HMIS_application from hospital_management;  -- Select all hospital names and their clusters
