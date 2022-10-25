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
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
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


### Installation

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/github_username/repo_name.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

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

