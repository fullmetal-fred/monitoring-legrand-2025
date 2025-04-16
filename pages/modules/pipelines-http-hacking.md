---
layout: section
hideInToc: false
title: "Pipelines: HTTP Hacking"
---

<PresenterTimer :minutes="0" :seconds="10" />

Data Pipelines

# Web Hacking

Sometimes you just have to get creative...

<!--
-
-->

---
layout: center
---

# What is hacking?

Discussion

<!--
- Focus on:
    - What is it? 
    - Is it bad?
    - Why do people do it?
    - When is it ok? When is it not?
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="2" :seconds="0" />

# Hacking -> "Creative data extraction"

Unconventional methods for data extraction

::left::

- Hacking is accessing systems:
  - [In ways not intended by the creator]{v-mark.box.orange="'+1'"}
  - Without proper authorization

<v-click>

- Only do this to devices:
  - You own
  - You have permission to access
  - On your own corporate network
  - At your own risk

</v-click>

::right::

<v-clicks>

- Useful for:
  - Extract data from devices "without APIs"
  - Running scripts / commands on devices
  - Otherwise working with device web pages
- Do not use:
  - Unless it's your last resort
  - On anything on the public internet
  - On anything you don't have permission to access
  - Without sufficient testing and understanding

</v-clicks>

<!--
- Reinforce that this is a last resort
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="2" :seconds="0" />

# Creative Data Extraction Techniques

::left::

- **Private APIs**
  - Undocumented APIs
  - Often used in web interfaces
  - Does not mimic a human
- **Web Scraping**
  - Extracting HTML source from websites
  - Only works with static sites (no JS)
  - Does not mimic a human

::right::

- **Web Driving**
  - Automating the web browser
  - Works with Javascript & client-side code
  - Mimics human interaction (not captcha-proof)

<!--
- Has anyone ever done one of these 3 things in an effort to monitor or extract data from a device?
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="2" :seconds="0" />

# Introducing Private APIs

Exploring the usage of undocumented or private APIs

::left::

- **Definition**:
  - APIs not intended for public use
  - Often used internally by developers
  - May provide additional functionality
- **Characteristics**:
  - Not documented or supported
  - Subject to change / unstable
  - May require reverse engineering
  - Often used in web interfaces

::right::

- **Challenges**:
  - Identifying and reverse engineering private APIs
  - Authentication and authorization
  - Session management and rate limiting
  - Brittle, subject to change
  - TOS and legal implications

<!--
- TODO: setup case studies illustrating the use of private APIs in real-world applications
- Discuss the technical challenges associated with private APIs
- Review common tools and libraries used in accessing these APIs
-->

---
layout: center
---

<PresenterTimer :minutes="10" :seconds="0" />

# Example of Private APIs in Node-RED & Zabbix

<!--
- Check out the browser on video emulator dash, button does API call you can sniff
-->

---
layout: default
---

# Web Scraping

Effective methods and tools for web scraping

<PresenterTimer :minutes="1" :seconds="0" />

- HTML parsing and extraction
- Great for static websites without JavaScript
- Does not handle client-side code

<!--
>
Detail the tools and libraries used for web scraping, like Beautiful Soup and Selenium. Discuss how to handle challenges like bot detection.
-->

---
layout: center
---

<PresenterTimer :minutes="10" :seconds="0" />

# Example of Web Scraping in Node-RED & Zabbix

---
layout: default
---

# Web Driving Basics

Automating web browsers to simulate user actions

<PresenterTimer :minutes="1" :seconds="0" />

- Introduction to Selenium WebDriver
- Scripting interactions with websites
- Activates client-side code and JavaScript

<!--
>
Explain how web driving works, specifically using tools like Selenium WebDriver. Provide examples of practical applications in various sectors.
-->

---
layout: center
---

<PresenterTimer :minutes="10" :seconds="0" />

# Example of Web Driving in Node-RED & Zabbix

---

# Key Takeaways

- Hacking is accessing systems in ways not intended by the creator
- Creative data extraction techniques include private APIs, web scraping, and web driving
- Private APIs are undocumented APIs used internally by developers
- Web scraping is effective for static websites without JavaScript
- Web driving automates web browsers to simulate user actions
- Use at your own risk and ensure you're not violating your T&Cs!!!

---
layout: center
---

# Questions?
