---
# Presentation settings
titleTemplate: "%s - Monitoring AV"
info: |
  Find me at:  
  - [LinkedIn](https://linkedin.com/u/fred-loucks)
  - [Github](https://github.com/fullmetal-fred)
highlighter: shiki
drawings:
  persist: false
  presenterOnly: true
# transition: fade-out
mdc: true
lineNumbers: true
download: true
# filename of the export file
exportFilename: slides
# export options
# use export CLI options in camelCase format
# Learn more: https://sli.dev/guide/exporting.html
export:
  format: pdf
  timeout: 30000
  dark: true
  withClicks: false
  withToc: false
record: false
editor: false
presenter: true
canvasWidth: 1000
transition: fade-out
defaults:
  layout: default
  hideInToc: true
  preload: true
# remoteAssets: true
image: https://images.unsplash.com/photo-1567536303373-0eb3957ba696?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHRyYWZmaWMlMjBsaWdodHxlbnwwfHwwfHx8MA%3D%3D # https://unsplash.com/collections/94734566/slidev
layout: image-left
title: Intro to Monitoring
hideInToc: false
level: 2
class: flex flex-col justify-center text-center
---

# Intro to Monitoring
### For AV Professionals


---
layout: image-left
image: /fred-headshot-1.jpg
title: Introduction
---

<PresenterTimer :minutes="2":seconds="0"/>

# > whoami <twemoji-sign-of-the-horns-medium-light-skin-tone class="animate-bounce"/>

- Frederick Loucks, CTS-D
- By day: TPM @ [Zoom]{style="color: rgb(37 99 235)"}
- By night: [consultant]{.highlight} & [educator]{.highlight}
- My AV Origin Story
  - Music & [Theatre]{ .highlight } background
  - 2x SCN Top 50 integrators
  - 2x Fortune 500 enterprises
- What do I get excited about?
  - Books: fantasy & sci-fi
  - Music: power & progressive [metal]{ .highlight }
  - Work: Automation, AV @ scale

<!--
- That's who I am, but I'm more interested in learning about you.
-->

---
layout: center
---

## Introductions

<PresenterTimer :minutes="5" :seconds="0"/>

<br>

Please share your [name]{.highlight}, [role]{.highlight}, where you are [joining from]{.highlight}, and [one thing you hope to learn today]{.highlight}.

<!--
- Let's start by going around the room and introducing ourselves
-->

---
layout: center
---

<PresenterTimer :minutes="3" :seconds="0" />

## Monitoring

<!--
**INTERACTIVE**
-->

<!--
- Monitoring:
- That thing people keep telling you to do, but not how to do it.
- There's no doubt that organizations are increasingly coming to rely on their AV systems, and when issues arise, they come with costly and furstrating consequences for everyone involved.
- Now, in the rest of the technology world this problem has long-since been answered. Monitoring is a standard operational practice across virtually all IT fields.
- But in AV, it's still a bit of a mess.
- Naturally AV professionals want to step up monitor their systems as well.
  - For tech managers, this is a path to better uptime, reliability, sanity...and is often demanded by modern IT practices.
  - For integrators, not only does this present a path to recurring revenue, but it also helps to build trust with customers.
- But the mechanics of how to actually make this work, both technically and financially, are less than clear.
- So today... >
-->

---

<PresenterTimer :minutes="0" :seconds="30"/>

# Agenda

Welcome

<v-clicks>

- What is monitoring and why should we care about it?
- Why is monitoring AV systems so hard?
- How do we design systems that are easier to monitor?
- What should we consider when selecting a monitoring platform?
- What are the steps to get started?
- Where does AV/IT convergence fit in?

</v-clicks>

<!--
- [click] [click] [click] [click] [click] [click]
- And we'll try to leave ~20 mins for Q&A at the end
- But let's start with a few questions for the room...
-->



---
src: ./pages/what-is-monitoring.md
time: 17
---


---
src: ./pages/monitoring-av-is-hard.md
time: 17
---


---
src: ./pages/observable-systems.md
time: 32
---



---
src: ./pages/monitoring-platforms.md
time: 45
---


---
src: ./pages/getting-started-manufacturers.md
time: 26
---

---
src: ./pages/av-it-convergence.md
time: 25
---

---

<PresenterTimer :minutes="1" :seconds="0" />

# Recap

What did we learn?

- What is monitoring and why should we care about it?
- Why is monitoring AV systems so hard?
- How do we design systems that are easier to monitor?
- What should we consider when selecting a monitoring platform?
- What are the steps to get started?
- Where does AV/IT convergence fit in?

<!--
- We've covered a lot of ground today.
- We discussed what monitoring is and is not
- We dove into why it's so difficult in AV specifically
- And we laid out some practical steps in how to get started
- Now before I open up the floor for questions, I have one more thing [click]
-->



---
layout: center
---

# Questions & Discussion

---
layout: center
---

# Thank you!

<div class="flex">

<div>
<QRCode height=300 width=300 value="https://www.linkedin.com/in/fred-loucks"/>

<a href="https://www.linkedin.com/in/fred-loucks">Fred's LinkedIn</a>

</div>

<div>
<QRCode height=300 width=300 value="https://monitoring-legrand-2025.pages.dev/slides.pdf"/>

<a href="/slides.pdf">Presentation slides</a>

</div>

</div>
