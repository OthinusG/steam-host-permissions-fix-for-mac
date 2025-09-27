# steam++ (Watt Toolkit) - hosts permissions fix for mac

#### Readme EN｜[CN](https://github.com/OthinusG/steamplusplus-host-permissions-fix-for-mac/blob/main/README.md)
               
## Problem Reproduction
On macOS, using steam++ (Watt Toolkit) to accelerate Steam is a free and fast choice in China. It can also be used to watch Twitch live streams, access overseas CAPTCHA platforms without a VPN, and even browse GitHub without a VPN under certain extreme conditions.  

Its principle is to modify the **hosts** file so that external network traffic goes through the steam++ proxy.  

However, due to macOS system restrictions, every time steam++ is launched, you will inevitably encounter the hosts permission issue (as shown in the figure below), which requires `sudo` privileges to modify the hosts file:  
![image](https://github.com/OthinusG/steamplusplus-host-permissions-fix-for-mac/blob/main/readmeimages/e0bcb6c6-5ccd-4e2b-a97d-1ac75af743ce.jpg)
         
## Solution
To solve the above problem, you can use a simple bash script to pre-store your account password. After execution, steam++ will open automatically, avoiding the hassle of typing commands and passwords each time.  

Then, with macOS’s built-in **Automator** app, you can convert the bash script into an application, allowing you to launch steam++ with hosts permission by just clicking. You can even set it to launch automatically on startup.

### Script Explanation
In the script:  
- `[yourname]` is your macOS account name.  
- `[yourpassword]` is your login password.  
- You can find your account name by opening the **Macintosh HD/Users** folder:  
![image](https://github.com/OthinusG/steamplusplus-host-permissions-fix-for-mac/blob/main/readmeimages/040d79cc-479d-4014-8bff-80b03c014f0e.jpg)  

For example, if your account name is `xiaolin` and your login password is `0000`, the script would look like the sample shown.  

To make the script work, download the hosts file from GitHub, or simply copy your system’s original hosts file (`/etc/hosts`) into your user root directory, e.g., `/Users/xiaolin`.  

A sample script has been uploaded to GitHub.

### Creating the Automated App
1. Open the pre-installed **Automator** app on macOS.
![image](https://github.com/OthinusG/steamplusplus-host-permissions-fix-for-mac/blob/main/readmeimages/acb6a817-f3d6-4506-89d1-74124c46645c.jpg)
2. Create a new document, and select **Application** as the type:  
![image](https://github.com/OthinusG/steamplusplus-host-permissions-fix-for-mac/blob/main/readmeimages/0bc38ca4-6c7f-4f09-9a63-434f68fb4201.jpg)
