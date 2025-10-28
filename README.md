# ⚡ Utility Data Integration System (UDIS)

## 🧩 Project Overview
This is my personal end-to-end data integration project, built using **Informatica IICS**, **SQL Server**, **AWS S3**, and **Snowflake**.  
The project is based on a **Utilities domain** scenario — where I’m integrating data related to **Customer, Premise, Service Point, Meter, and Orders** from different sources into a single data warehouse.

I’m building this step-by-step to strengthen my IICS and Snowflake hands-on skills and to show my learning progress on GitHub.

---

## 🧱 Tech Stack
| Component | Tool / Platform |
|------------|----------------|
| ETL Tool | Informatica Intelligent Cloud Services (IICS) |
| Source | SQL Server & Flat Files |
| Target | SQL Server / Flat Files |
| Cloud Staging | AWS S3 |
| Cloud Warehouse | Snowflake |
| Version Control | GitHub |

---

## 🎯 Objective
The goal of this project is to simulate a real-time data integration process used in utility companies.  
Different systems maintain customer and meter data separately, and the aim is to bring all of them together for reporting and analysis.  

Main goals:
- Consolidate data using **IICS mappings and taskflows**  
- Apply **validations and SCD Type 2 logic** for customer history  
- Load data into **Snowflake** using AWS S3 staging  
- Add **audit logs, error handling, and email notifications**

---

## 🧮 Data Model

| Entity | Description | Key Columns |
|--------|--------------|-------------|
| **CUSTOMER** | Customer details | Customer_ID, Name, Status |
| **PREMISE** | Customer’s address | Premise_ID, Src_Prem_id, premise_id |
| **SERVICE_POINT** | Connection point for supply | SP_ID, Premise_ID,serv_ln_cut_off_dt |
| **METER** | Meter installed at a service point | Meter_ID, meter_Number|
| **ORDERS** | Service orders (Install / Replace / Remove) | Order_ID, Meter_ID,ord_status,ord_completion_date |

---

## 🧰 Key Features (Planned)
- Implement **SCD Type 2** for Customer data  
- Use **parameters and reusable mappings** in IICS  
- Add **audit logging and email alerts**  
- Create **loop-based taskflows** for multiple daily order files  
- Integrate with **AWS S3 and Snowflake** for cloud analytics  
- Handle **error records and data validation**  

---

## 🏗️ Architecture (High Level)

(SQL Server / Flat Files)  
↓  
Informatica IICS (ETL)  
↓  
SQL Server Target  
↓  
AWS S3 Stage  
↓  
Snowflake  

---

## 📁 Folder Structure
Utility-Data-Integration-Project/
│
├── data/
│ ├── source/
│ ├── target/
│
├── sql/
│ ├── create_tables.sql
│ ├── sample_data.sql
│
├── iics/
│ ├── mappings/
│ ├── taskflows/
│ ├── parameter_files/
│
├── aws/
│ ├── s3_setup.md
│
├── snowflake/
│ ├── ddl/
│ ├── load_scripts/
│
└── docs/
├── architecture_diagram.png
└── README.md


---

## 📆 Project Progress Tracker

| Day | Task | Status |
|-----|------|--------|
| **Day 1** | Project setup, SQL table creation, README added | ✅ Completed |
| **Day 2** | Create sample data and load into SQL Server | ⏳ Pending |
| **Day 3** | IICS mapping – Extract & Load basic flow | ⏳ Pending |
| **Day 4** | SCD Type 2 for Customer | ⏳ Pending |
| **Day 5** | Meter–Premise validation and error handling | ⏳ Pending |
| **Day 6** | Reusable mappings and parameters | ⏳ Pending |
| **Day 7** | Taskflow orchestration with loop and error path | ⏳ Pending |
| **Day 8** | AWS S3 and Snowflake load | ⏳ Pending |
| **Day 9** | Audit log and email notification | ⏳ Pending |
| **Day 10** | Documentation and GitHub update | ⏳ Pending |

---

## 👩‍💻 Author
**Radhika Guru**  
Data Integration Engineer (Informatica IICS | SQL | Snowflake | Utilities Domain)  

📧 **Email:** radhikaguru20@gmail.com
🌐 **GitHub:** https://github.com/Radhika-utilites/Utility-Data-Integration-Project 
💼 **LinkedIn:** www.linkedin.com/in/radhika-k-143a60181


---

## 🏷️ Tags
`#InformaticaIICS` `#Snowflake` `#SQLServer` `#AWS` `#S3`  
`#DataIntegration` `#ETLProject` `#UtilitiesDomain` `#CloudDataPipeline`  
`#IICSHandsOn` `#DataEngineer` `#EndToEndProject`

---

## 📌 Note
I’m updating this **README.md** daily with:
- Progress made on that day ✅  
- Screenshots or results 📊  
- My key learnings 💡  

This helps me (and recruiters) see **consistent hands-on activity** and growth in my IICS + Snowflake learning journey.