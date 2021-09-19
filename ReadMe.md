# Automating Robot Spare Bin Industries

### Course I  -> ROBOCORP

1) Download Input Excel File
2) Open Robot Spare Bin [Website](https://robotsparebinindustries.com/#/)
3) Log in With Credentials (Use Credentials [Vault](https://robocorp.com/docs/development-guide/variables-and-secrets/vault))
4) Start Filling up the sales Information
5) Take Screenshot of Sales
6) Export Sales Table as PDF
---------------

### Using Credentials Vault For Dev/Prod

#### For Development
i) Add below code by creating new file in the Project directory 'devdata/env.json'
> Make sure the Path should be like 
    >> "RPA_SECRET_FILE": "/Users/\<Your_User_Name_Here>/vault.json"


![devdata/env.json Code](https://drive.google.com/file/d/1rImThomKNVHGJsNfeA4kGfcNo7AyaiOY/view?usp=sharing)

ii) In Your C Drive user Folder 
> Make Sure Your Create a Vault.json file with information in Json format
    >> C:\Users\Rohit\vault.json

![Vault.Json Information](https://drive.google.com/file/d/10hVLlsRSbKR2rsOCfvt3991vndZ0Wf2C/view?usp=sharing)