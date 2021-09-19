# +
from RPA.Robocloud.Secrets import Secrets

_secret = Secrets().get_secret("Cred")

WebsiteURL = _secret["WebsiteURL"]
User_Name = _secret["UserName"]
Password = _secret["Password"]
