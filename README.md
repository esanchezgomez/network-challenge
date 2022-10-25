# README File <a name="readme-top"></a>


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/esanchezgomez/network-challenge">
    <img src="images/readme_logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">PPRO DevOps + Network Engineering Challenge</h3>

  <p align="center">
    Repository to create an AWS Network Infrastructure (VPC, Subnet, Internet Gateway, Custom Route Table, Security Group) as well as an Ubuntu EC2 with a Hello World application using Terraform Infrastructure as Code (IaC)
    <br />
    <br />
    <a href="https://github.com/esanchezgomez/network-challenge/blob/main/ec2.tf">EC2 Ubuntu IaC</a>
    ·
    <a href="https://github.com/esanchezgomez/network-challenge/blob/main/vpc.tf">AWS Network IaC</a>
    ·
    <a href="https://github.com/esanchezgomez/network-challenge/blob/main/key-pair-main.tf">Private/Public Keys IaC</a>
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
      <ul>
        <li><a href="#verification">Verification</a></li>
      </ul>
      <ul>
        <li><a href="#testing">Testing</a></li>
      </ul>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This GitHub Repository contains all the necessary Terraform code to create the following AWS resources:
* A VPC
* A public subnet within that VPC
* An internet gateway
* A Custom Route Table (CRT) with a default route for internet access
* Association between the public subnet and the CRT
* A Security Group to allow TLS (443) and HTTP (80) access to an EC2 instance
* A key pair (public and private) for access into an EC2 instance
* An EC2 instance (ubuntu) with a public IP running a simple Hello World application

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

Before you start, read this README file carefully. Below you will see the prerequisites as well as installation instructions to make this project work.

### Prerequisites

For this project you will need:
* A <strong>GitHub account</strong> to be able to clone this repository
* Have <strong>Terraform installed</strong>. Instructions how to install Terraform on Windows, Mac and Linux devices can be found <a href="https://learn.hashicorp.com/tutorials/terraform/install-cli">here</a>
* An <strong>AWS account</strong> with AWS Access Credentials. 

If you don't have AWS Access Credentials, create your <strong>AWS Access Key ID</strong> and <strong>Secret Access Key</strong> by navigating to your IAM security credentials in the AWS console. Click "Create access key" here and download the file. This file contains your access credentials.


<!-- USAGE EXAMPLES -->
## Usage

Follow these steps in order to implement the code.

1. In your device, create the folder structure where you will clone this repository to
2. Clone the repo. You can use for example <strong>Git Bash</strong> to do this.
   ```sh
   git clone https://github.com/esanchezgomez/network-challenge.git
   ```
3. For Terraform to be able to make changes in your AWS account, you will need to set the AWS credentials (as mentioned in the prerequisites) as the environment variables. 
   <br />
   <br />
   Here is how to do it in a Linux or MacOS terminal:
   ```sh
   $ export AWS_ACCESS_KEY_ID=(your access key id)
   $ export AWS_SECRET_ACCESS_KEY=(your secret access key)
   ```
   Here is how to do it in a Windows PowerShell terminal:
   ```sh
   $ set AWS_ACCESS_KEY_ID=(your access key id)
   $ set AWS_SECRET_ACCESS_KEY=(your secret access key)
   ```
   Note that these environment variables apply only to the current shell, so if you reboot your computer or open a new terminal window, you will need to export these variables again.
   <br />
   <br />
4. Within that same terminal window, go into the folder where the repo is located
5. Run the command `terraform init` to initialize Terraform and figure out which providers the code is using
6. Run the command `terraform plan` to see what Terraform will do before actually making any changes
7. Run the command `terraform apply` to create all the AWS resources, including the EC2 instance

### Verification

Login to your AWS account and verify that:
1. 

### Testing

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

No License is needed for this project. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Your Name - [@twitter_handle](https://twitter.com/twitter_handle) - email@email_client.com

Project Link: [https://github.com/github_username/repo_name](https://github.com/github_username/repo_name)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png

