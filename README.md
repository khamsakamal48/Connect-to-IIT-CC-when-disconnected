# Connect to IIT Bombay Computer Centre when disconnected

The script checks whether the machine is connected to [IIT Bombay's Computer Centre (CC) Internet](https://internet.iitb.ac.in) and will connect automatically if found disconnected.

## Pre-requisites

Install below package(s) on your Linux Machine.

```bash
sudo apt install curl
```

## Usage
- Log into [IIT Bombay's SSO](https://sso.iitb.ac.in)
- Get access token by following the steps [here](https://www.cc.iitb.ac.in/attachments/sso/InternetAccess_WithoutGUI.pdf)
- Create **`.env`** file in the root and add below details
```env
LDAP_ID=
ACCESS_TOKEN=
```
- Set a new cronjob to run the script **`Check_and_Connect.sh`** at definite intervals
```bash
crontab -e

# This will run the script every 5 minutes
*/5 * * * * path_to_folder/Check_and_Connect.sh
```
