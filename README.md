<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Instagram][ig-shield]][ig-url]
[![PCBWAY][sponsor-shield]][sponsor-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://makingdevices.com/links/">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Making Devices</h3>

  <p align="center">
    Open Source projects where we struggle with engineering, electronics, coding and who knows what else... Pixel Bytes is an evolution of my previous 8-bit console. The new version is based in the STM32F103CB with IC Leds for a colorwide screen and new power to code new games. 
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
      <a href="#Build-one">Build one</a>
      <ul>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#Sponsor">Sponsor</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Bytes Counter Shot][product-screenshot]](https://makingdevices.com/)

PixelBytes was born in colaboration with Wurth Elektronik and their new RGB IC LEDs. They sent me a bunch of them to test so I though of making a proper evolution of my previous video console. For this time, I wanted to test a new manufacturer for the microcontroller, so it is my first big project working with the STM32. Hopefully it will help to develop new exciting games as it is arduino-compatible. On top of that, I decided to add a giroscope sensor so we can add more ways to have fun within the gaming experience ;). 

The project is divided into two steps: 
1. The first one is the PixelBytesDisplay, which is a matrix of 13x21 IC LEDs divided in 6 strings. 
2. The second part is the host board, which will mount the microcontroller and all the battery and sensors.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

[![Microcontroller][PIC]][PIC-url]
[![Arduino][Arduino]][Arduino-url]
[![Kicad][kicad-shield]][kicad-url]
[![SPONSOR][wurth-icon]][sponsor-url-wurth]
[![SPONSOR][sponsor-icon]][sponsor-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Build one
The project is yet to be finished. Should you want to reproduce it, be careful. 

1. Get the gerber files for the latest version: [Pixel Bytes Display V0.1](/Gerber/Display/pixelbytesdisplay-v0.1) 
2. Get the gerber files for the latest version: [Pixel Bytes Host V0.1](/Gerber/Host/PixelBytesHostV0.1) 
3. Send them to a PCB manufacturer ([Our Sponsor is PCBWAY][sponsor-url])

YET TO BE COMPLETED.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

Instructions of use:

- When turn on, a menu is shown to select between the available games.
- Once you have played a game, a score board will appear everytime you open the game.
- You have a setting menu to turn-off the init splash and the sound.
- If you leave the console one minute without touching the buttons, it will turn into sleep mode.
- Enjoy!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [x] Validate the Pixel Bytes Display
- [x] Assembly a prototype with the F103 Board
- [ ] Order/Assembly the Pixel Bytes Host
- [ ] Develop the firmware
  - [ ] Develop the library for the screen
  - [ ] Develop the menu 
  - [ ] Develop Snake
  - [ ] Develop Arkanoid
  - [ ] Develop Tetris
  - [ ] Develop a game that uses the gyro sensor
  - [ ] Score board
  - [ ] Sleep Mode
- [ ] Validate the complete design (host + display board)


See the [open issues](https://github.com/makingdevices/PixelBytes/issues) for a full list of proposed features (and known issues).

State: Project <b>ONGOING</b> - 22/09/2024

Priority: <b>High</b>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under three licenses:
- [Hardware](/License/HW_cern_ohl_s_v2.pdf)
- [Software](/License/SW_GPLv3.0.txt)
- [Documentation](/License/Documentation_CC-BY-SA-4.0.txt)

OSHWA License: Not Finished

[![GPL v3 License][license-shield]][license-url] 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Making Devices - [@MakingDevices](https://www.instagram.com/makingdevices/)

Project Link: [https://github.com/makingdevices/PixelBytes](https://github.com/makingdevices/PixelBytes)

Other Links: [LinkTree](https://makingdevices.com/links/)

<!-- Sponsor -->
## Sponsors
## PCBWAY

[PCBWAY](https://www.pcbway.com/?from=makingdevices) is the most professional PCB manufacturer for prototyping and low-volume production to work with in the world. With more than a decade in the field, They are committed to meeting the needs of their customers from different industries in terms of quality, delivery, cost-effectiveness and any other demanding requests. As Sponsor of Making Devices, they will be in charge of all the PCBs for MDV, allowing both of us to grow together in a long term partnership. We hope you take them into account for your both personal and professional prototypes or products.

[![Sponsor Shot][sponsor-pcb-1]][sponsor-url]
[![Sponsor Shot][sponsor-pcb-2]][sponsor-url]

## Würth Elektronik

[Wurth Elektronik](https://www.we-online.com/en) is one of the leading manufacturers of electronic and electromechanical components. The best I can say about them is to show you some pictures: All the LEDs from the board are from them. They also have buttons, resistors and capacitors that we use in all our PCBs. They also have some design kits with a lifetime refill which are amazing for makers and business so you can prototype on the go with a huge variety of components!

[![Sponsor Shot][sponsor-wurth-1]][sponsor-url-wurth]
[![Sponsor Shot][sponsor-wurth-3]][sponsor-url-wurth]



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/makingdevices/PixelBytes.svg?style=for-the-badge
[contributors-url]: https://github.com/makingdevices/PixelBytes/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/makingdevices/PixelBytes.svg?style=for-the-badge
[forks-url]: https://github.com/makingdevices/PixelBytes/network/members
[stars-shield]: https://img.shields.io/github/stars/makingdevices/PixelBytes.svg?style=for-the-badge
[stars-url]: https://github.com/makingdevices/PixelBytes/stargazers
[issues-shield]: https://img.shields.io/github/issues/makingdevices/PixelBytes.svg?style=for-the-badge
[issues-url]: https://github.com/makingdevices//PixelBytes/issues
[license-shield]: /images/license.png
[license-url]: https://github.com/makingdevices/PixelBytes/tree/main/License
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/company/making-devices/
[sponsor-shield]: https://img.shields.io/badge/SPONSOR-PCBWAY-black.svg?style=for-the-badge&colorB=1200
[sponsor-url]: https://www.pcbway.com/?from=makingdevices
[sponsor-screenshot]: /images/PCB_sponsor.png
[sponsor-pcb-1]: /images/pixelbytes_pcb1.JPG
[sponsor-pcb-2]: /images/pixelbytes_pcb2.JPG
[sponsor-wurth-1]: /images/wurth_1.gif
[sponsor-wurth-3]: /images/wurth_3.jpg
[sponsor-url-wurth]: https://www.we-online.com/en
[product-screenshot]: images/screenshot.gif
[PIC]: https://img.shields.io/badge/STM32F103-0000D1?style=for-the-badge
[PIC-url]: https://www.st.com/en/microcontrollers-microprocessors/stm32f103.html
[kicad-shield]: https://img.shields.io/badge/kicad-0b03fc?style=for-the-badge&logo=kicad&logoColor=white
[kicad-url]: https://www.kicad.org/
[YT-screenshot]: images/YT_assembly.PNG
[sponsor-icon]:  https://img.shields.io/badge/-PCBWAY-black.svg?style=for-the-badge&colorB=1200
[ig-shield]: https://img.shields.io/badge/instagram-a83297?style=for-the-badge&logo=instagram&logoColor=white
[ig-url]: https://www.instagram.com/makingdevices/
[MPLAB-C]: https://img.shields.io/badge/MPLAB%20C18-DD0031?style=for-the-badge&logo=C&logoColor=white
[Arduino]: https://img.shields.io/badge/ARDUINO-00878F?style=for-the-badge&logo=arduino&logoColor=white
[wurth-icon]: https://img.shields.io/badge/Wurth%20elektronik-FF0031?style=for-the-badge&logoColor=white
[Arduino-url]: https://www.arduino.cc/
[MPLAB-C-url]: https://www.microchip.com/en-us/development-tool/SW006011
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
