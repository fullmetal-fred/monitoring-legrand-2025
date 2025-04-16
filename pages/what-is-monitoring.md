---
layout: section
hideInToc: false
---

# Monitoring: What & Why

---
layout: center
---

<PresenterTimer :minutes="3" :seconds="0" />

## What [is]{.highlight} monitoring?

<!--
**INTERACTIVE**
-->


---
layout: default
---

<PresenterTimer :minutes="2" :seconds="0" />

# Mainstream definitions

Monitoring: What & Why

### Splunk:

> Any processes and tools you use to determine if your organization’s IT equipment and digital services are working properly. Monitoring helps to detect and help resolve problems — all sorts of problems.[^1]

<br/>

### Google:

> Collecting, processing, aggregating, and displaying real-time quantitative data about a system, such as query counts and types, error counts and types, processing times, and server lifetimes. [^2]


[^1]: [Splunk](https://www.splunk.com/en_us/resources/it-monitoring.html)

[^2]: [Google SRE Handbook](https://landing.google.com/sre/sre-book/chapters/monitoring-distributed-systems/)

---

<PresenterTimer :minutes="1" :seconds="0" />

# Fred's monitoring razor

Monitoring: What & Why

<Center>

  ## Monitoring is...
  <br />
  <br />

  <v-click> 
  
  ## Knowing the [health of your systems]{.highlight} at any given [point-in-time]{.highlight}.

  <br />

  </v-click>


  <br />
  <br />
  
</Center>

<!--
- [click]
- There are lots of other operational and data-related things that we may be able to do with monitoring technology, but at its core, monitoring AV is about system health over time. It's our one "must have".
- If a we can't answer the question "how are my systems doing right now or 3 hours ago", we don't meet the standard.
- ...but monitoring doesn't stand on its own. It's one piece of the puzzle 
- So let's put it into context with a few other key terms [click]
-->

---
layout: default
---

<PresenterTimer :minutes="2" :seconds="0" />

# Going deeper: 4 key terms

Monitoring: What & Why

<v-clicks depth="2">

- **Telemetry** (_noun_):
  - The data we collect from our systems.
- **Monitor** (_verb_):
  - The act of collecting & processing realtime telemetry for some business purpose.
- **Observable** (_adjective_):
  - The degree to which we can understand the state of a system by monitoring its telemetry.
- **Operator** (_noun_):
  - The person who is responsible for monitoring & managing the system.
- The more complete the [telemetry]{.highlight} is and the more effective the [monitoring]{.highlight} is, the more [observable]{.highlight} the system is, and the better supported the [operator]{.highlight} is.

</v-clicks>

<!--
[click] Telemetry: [click]
- Logs, metrics, and traces are all forms of telemetry data.
- It is the supporting pillar of observability and monitoring.
- The "WHAT"

[click] Monitoring: [click]
- Processing telemetry data to detect anomalies or predefined conditions.
- It's the "doing" part. The "HOW". 

[click] Observability: [click]
- A quality of your system that describes how well you understand its state from the outside. (ie "How well can we observe this?")
- The more complete the telemetry is, the more effective the monitoring is, the more "observable" the system is.
- Observability is the goal, telemetry and monitoring are the means.
- More a mindset than a toolset, empowering teams to answer any question through the collection and analysis of data
- The "WHY"

[click] Operator: [click]
- The person responsible for the function of the system and service.


- But enough on definitions. Let's talk about why we should monitor [click]
-->

---
layout: center
---

<PresenterTimer :minutes="3" :seconds="0" />

## Why [should]{.highlight} we monitor?

<!--
**INTERACTIVE**
-->


---

<PresenterTimer :minutes="1" :seconds="0" />

# Reasons to monitor

Monitoring: What & Why

<v-clicks>

- Know the health of your systems at any given point-in-time
- Improve system reliability and uptime
- Shift from reactive to proactive
- Improve user & operator experience
- Decrease costs through efficiency
- Provide a wealth of data for analysis and improvement
- Build job security and growth opportunities
- Satisfy your own technical curiosity and desire to learn

</v-clicks>

<!--
- [click] [click] [click] [click] [click] [click] [click]
- Any others that I forgot?
- But ultimately, for me...[click]
-->

---
layout: center
title: This is fine
---

<img src="/thisisfine.gif" width="700" >

<PresenterTimer :minutes="0" :seconds="30"/>

<!--
- This is what the typical day in the life of an AV operator tends to look like
- This sucks. It's not fun. It's not sustainable. It's not scalable. It's not good for your health or your career. 
- My #1 reason to help you implement monitoring is to turn this, into this [click]
-->

---
layout: center
title: Sleeping
---

<img src="/puppy-sleep.gif" width="700" >

<PresenterTimer :minutes="0" :seconds="30"/>

<!--
- Ultimately The biggest reason why YOU should care about this is because it makes your life easier
- It's the difference between a good night's sleep and a 3am wake-up call
- It's the difference between a calm day at work and a fire drill
- Sometimes, it's the difference between keeping your job, and losing it
- Now, clearly there are dozens of really good reasons to monitor, so let's take that as a given. 
- Perhaps "why should we" isn't the right question [click]
-->

---
layout: center
title: The question isn't
---

<PresenterTimer :minutes="0" :seconds="10" />

## Maybe the question isn't [why should we monitor]{.highlight}...

<br />

<v-click>

## ...but [why don't we monitor?]{.highlight}

</v-click>

<!--
-
-->

---
layout: center
---

<PresenterTimer :minutes="3" :seconds="0" />

## Why [don't]{.highlight} we monitor?

<!--
- **INTERACTIVE**: Ask why they aren't monitoring before revealing the answers
-->

---

<PresenterTimer :minutes="1" :seconds="0" />

# Common reasons for not monitoring

Monitoring: What & Why

<v-clicks>

- Don't know where to start
- Lack of tools / platforms
- No budget / resources / time
- Can't make financial sense of it
- It's just too difficult / doesn't seem worth it
- Nobody has asked for it / no perceived need

</v-clicks>

<!--
- [click] [click] [click] [click] [click] [click]
- See if anyone has any suggestions
- Don't feel bad for any of these
- They are all common reasons I hear every day
- The fact is...[click]
-->
