<div id="top"></div>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/SolarSpec/XRDfitting">
    <img src="images/logo.png" alt="SolarSpec" width="160" height="120">
  </a>

<h3 align="center">XRDfitting</h3>

  <p align="center">
    SolarSpec group script for fitting XRD data
    <br />
    <a href="https://github.com/SolarSpec/XRDfitting"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/SolarSpec/XRDfitting">View Demo</a>
    ·
    <a href="https://github.com/SolarSpec/XRDfitting/issues">Report Bug</a>
    ·
    <a href="https://github.com/SolarSpec/XRDfitting/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![XRDfitting Screenshot][product-screenshot]](https://solarspec.ok.ubc.ca/)
Fitting of XRD data

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [MATLAB](https://www.mathworks.com/products/matlab.html)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To begin using this app is very simple. Just verify you have the necessary prequisites and follow the installation instructions.

### Prerequisites

Make sure MATLAB is installed. It is available for download in the Software Distribution section under the Help tab after you log into Canvas. [https://canvas.ubc.ca/](https://canvas.ubc.ca/)

### Installation

1. Clone the repo to your PC
   ```sh
   git clone https://github.com/SolarSpec/XRDfitting.git
   ```
2. Browse repository
   ```
   View the relevant files
   ```

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage
The user can run the QuickLorentz.m script which will open a UI prompt asking for either a .csv or .txt file of arbitrary XRD data. A figure is created that plots the Intensity vs. θ/2θ. The user is then asked to select the fitting bounds by clicking on two separate locations of the axes or press the escape key twice to use the full range of data. Once chosen, the script will calculate a Lorentz peak fit that will overlay the orginal data and output the Full Width Half Maximum (FWHM) value into the MATLAB Command Window as well as a plot annotation.

This app is currently lacking in any examples. Coming soon!

_For more information on any of the internal functions, please refer to the [MATLAB Documentation](https://www.mathworks.com/help/matlab/)_

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/SolarSpec/XRDfitting/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>

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

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the BSD 3-Clause License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

SolarSpec - [SolarSpec Website](https://solarspec.ok.ubc.ca/) - vidihari@student.ubc.ca

Project Link: [https://github.com/SolarSpec/XRDfitting](https://github.com/SolarSpec/XRDfitting)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Group Leader - Dr. Robert Godin](https://solarspec.ok.ubc.ca/people/)
* [Group Member - Emma Mitchell](https://solarspec.ok.ubc.ca/people/)
* [The Entire SolarSpec Team](https://solarspec.ok.ubc.ca/people/)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/SolarSpec/XRDfitting.svg?style=for-the-badge
[contributors-url]: https://github.com/SolarSpec/XRDfitting/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/SolarSpec/XRDfitting.svg?style=for-the-badge
[forks-url]: https://github.com/SolarSpec/XRDfitting/network/members
[stars-shield]: https://img.shields.io/github/stars/SolarSpec/XRDfitting.svg?style=for-the-badge
[stars-url]: https://github.com/SolarSpec/XRDfitting/stargazers
[issues-shield]: https://img.shields.io/github/issues/SolarSpec/XRDfitting.svg?style=for-the-badge
[issues-url]: https://github.com/SolarSpec/XRDfitting/issues
[license-shield]: https://img.shields.io/github/license/SolarSpec/XRDfitting.svg?style=for-the-badge
[license-url]: https://github.com/SolarSpec/XRDfitting/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/haris-vidimlic-06730019b/
[product-screenshot]: images/Screenshot.png
