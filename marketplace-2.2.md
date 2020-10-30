# DigitalOcean Marketplace submission

> OpenCPU 2.2 - not yet published

[![DO button](https://raw.githubusercontent.com/analythium/shinyproxy-1-click/master/digitalocean/images/do-btn-blue.svg)](https://marketplace.digitalocean.com/apps/opencpu)

OS version: Ubuntu 20.04 (LTS)

Category: Data Science

Minimum resource: 1 CPU, 1G RAM, 25G SSD

## Software Included

- OpenCPU 2.2 ([Apache 2](https://www.apache.org/licenses/LICENSE-2.0))
- RStudio Server Open Source Edition ([AGPL v3](https://www.gnu.org/licenses/agpl-3.0.en.html))

## Change log

- First submission.

## Application summary

OpenCPU is a software system for embedded statistical computation and reproducible research.
The server exposes a web API interfacing [R](https://www.r-project.org/).
Apps hosted on OpenCPU server are R packages that include web pages or
call the R functions in the package using the OpenCPU API.

RStudio is an integrated development environment (IDE) for R.
RStudio Server lets you install R packages and OpenCPU web applications and
interfaces in an interactive fashion and run the server as a multi-tenant environment.

The 1-Click option makes it easier than ever to deploy OpenCPU and RStudio Server Open Source
on DigitalOcean droplets in fully-tested app environments.

## Application Description

Deploy R based APIs and web applications at scale with ease using the 1-Click OpenCPU app.
Use RStudio Server Open Source as a multi-tenant environment and to interactively
develop and deploy applications to the server.

## Getting started instructions

We recommend using a 2 vCPUs 4 GB memory droplet for best performance.

Use your SSH key you set up with your droplet to log in
(ssh -i ~/.ssh/id_rsa root@your_host).
Add new user as `adduser user_name`, optionally make them
superuser as `usermod -aG sudo user_name`.

Now you can go to `http://your_host/rstudio` and log in
using the newly created username and password.

Istall a demo app:

```
remotes::install_github("rwebapps/appdemo")
```

Now visit `http://your_host/ocpu/user/user_name/library/appdemo/` to the the
demo app.

Go to `http://your_host/ocpu/` to test various
[endpoints](https://www.opencpu.org/api.html#api-endpoints).

## Support

[https://github.com/analythium/opencpu-1-click/issues](https://github.com/analythium/opencpu-1-click/issues)

## Additional links

Analythium Hub: [https://hub.analythium.io/docs/](https://hub.analythium.io/docs/) Detailed 1-Click App Documentation

OpenCPU website: [https://www.opencpu.org/](https://www.opencpu.org/)

RStudio: [https://rstudio.com/products/rstudio/](hhttps://rstudio.com/products/rstudio/)
