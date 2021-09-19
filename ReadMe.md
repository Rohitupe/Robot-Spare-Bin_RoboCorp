# Automating Robot Spare Bin Industries

### Course I  -> ROBOCORP

1) Download Input Excel File
2) Open Robot Spare Bin [Website](https://robotsparebinindustries.com/#/)
3) Log in With Credentials (Use Credentials [Vault Secrets](https://robocorp.com/docs/development-guide/variables-and-secrets/vault))
4) Start Filling up the sales Information
5) Take Screenshot of Sales
6) Export Sales Table as PDF
---------------

### Using Credentials Vault For Dev/Prod
#### <u> Step 1 </u>
##### Setup - For Development
i) Add below code by creating new file in the Project directory 'devdata/env.json'
> Make sure the Path should be like 
    >> "RPA_SECRET_FILE": "/Users/\<Your_User_Name_Here>/vault.json"

<img src="https://drive.google.com/uc?export=view&id=1rImThomKNVHGJsNfeA4kGfcNo7AyaiOY" alt="devdata/env.json">

---------------

ii) In Your C Drive user Folder 
> Make Sure Your Create a Vault.json file with information in Json format
    >> C:\Users\Rohit\vault.json

<img src="https://drive.google.com/uc?export=view&id=10hVLlsRSbKR2rsOCfvt3991vndZ0Wf2C" alt="vault.json Information">

#### Setup - For Production
i) For Production use make sure you create same Credentials in control rooms Vault with same Name/Values as mentioned in the vault.json

---------------------

#### <u> Step 2 </u>
i) Now Create a Python file to get those stored credentials an use them in the automation scripts <br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;    a) Refer to variables folder and 'tasks.robot' in the code file on how to import the Python File in the Automation Scripts

<center><img src="https://drive.google.com/uc?export=view&id=1OiS0K2GddJ4VJGElNAM-HF7FYaGjMmWo" alt="Python Code to get credentials"></center>
<br />
<img src="https://drive.google.com/uc?export=view&id=1iv4k4RoOVianVKNh0U3xu991jbH7r0Tw" alt="Import Credentials in tasks.robot">

-------------------

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) Use Credentials Just by their name in Python code in the tasks.robot file

<img src="https://drive.google.com/uc?export=view&id=1Qce_etLhXAnJa5yE9rH11KQMGxZpPXc_" alt="Use Credentials in tasks.robot">

<br/>

Follow the Course to learn More [Robocorp - Course I](https://robocorp.com/docs/courses/beginners-course)