# OpenCPU and RStudio 1-Click App

- RStudio Server Open Source Edition (AGPL v3)
- OpenCPU (Apache 2)
- R (GPL)

Use Ubuntu 18.04 base image:

```bash
sudo add-apt-repository -y ppa:opencpu/opencpu-2.1
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install -y opencpu-server
sudo apt-get install -y rstudio-server 
```

```bash
sudo touch /etc/update-motd.d/99-image-readme
vim /etc/update-motd.d/99-image-readme
```

```vim
#!/bin/sh
echo " OpenCPU + RStudio Server 1-Click App"
echo " by Analythium https://www.analythium.io"
echo
echo "   * OpenCPU documentation:        https://www.opencpu.org"
echo "   * RStudio Server:  https://rstudio.com/products/rstudio"
echo
```

Make it executable:
```bash
sudo chmod +x /etc/update-motd.d/99-image-readme
```

UFW is an Uncomplicated Firewall.
We enables the UFW firewall to allow only SSH, HTTP and HTTPS.
See a detailed tutorial [here](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-18-04).

```bash
sudo apt install ufw

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw allow 8787
```
Finally, enable these rules by running
`sudo ufw enable`. This also disables the previously used 8080 port.

Clean up and validate the build Droplet with the [provided scripts](https://github.com/digitalocean/marketplace-partners), `cleanup.sh` and `img_check.sh`. 
The scripts will check for and fix potential security concerns and verify that the image will be compatible with Marketplace, see 
[here](https://github.com/digitalocean/marketplace-partners/blob/master/getting-started.md).

```bash
wget https://raw.githubusercontent.com/digitalocean/marketplace-partners/master/scripts/cleanup.sh
wget https://raw.githubusercontent.com/digitalocean/marketplace-partners/master/scripts/img_check.sh
bash cleanup.sh
bash img_check.sh
```

To clear up log files, use `truncate -s 0 /var/log/*log`.

Finally, clean up these files as `rm *.sh`,
`shutdown -h now`.

Create user

```bash
adduser paul
usermod -aG sudo paul

adduser john
```

Install demo app
```R
remotes::install_github("rwebapps/appdemo")
```
visit `http://167.99.188.234/ocpu/library/appdemo/`
