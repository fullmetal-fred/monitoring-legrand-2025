---
layout: section
title: Data Pipelines
hideInToc: false
---

<PresenterTimer :minutes="0" :seconds="30" />

# Data Pipelines

Getting data from source to sink

---
layout: default
---

<PresenterTimer :minutes="3" :seconds="0" />

# Data Pipelines

The hard part

<v-clicks depth=2>

- End-to-end [data flow]{.highlight} from source to sink
- First, we acquire raw data during the [Input]{.highlight} stage
- Then we [Parse]{.highlight} it into something useful
- Next we [Filter]{.highlight} out the noise
- All the while we [Buffer]{.highlight} the data while processing it
- The data is tagged which instructs where the data should be [Routed]{.highlight}
- Finally, we [Output]{.highlight} the data to the target system
- Most monitoring platforms [abstract]{.highlight} this away

</v-clicks>

<!--
- Data pipelines are the lifeblood of monitoring. 
- They are the "how" to our "what" and "why" of monitoring.
- How the sasuage is made
- The hardest part of monitoring AV
- Data pipelines are the hardest part of monitoring AV
   - Input: Acquire! where does the data come from? Push or poll? What protocol does it use?
   - Parse: how to we interpret the data and turn it into something normalized, structured, and useful?
   - Filter: what data do we care about, and what data do we ignore? How do we filter out the noise?
   - Buffer: where do we hold the data while we're processing it or preparing to send it out? How do we prevent data loss when we lose network connectivity?
   - Route: where is a given datapoint supposed to go? How do we get it to the right place at the right time?
   - Output: what target system will consume the data? What format does it need to be in? How often do we send it? Is it polled?
-->

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Input

- This is the main reason monitoring AV is hard
- Acquire raw data
- Push or poll?
- What protocol?
- What source?

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Input Cont.

The standard interfaces for AV monitoring

- Ping and friends
- SNMP
- Console scripting
- HTTP APIs
- Webscraping
- Events and logs
- MQTT
- etc.

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Parse

- Transform into something useful
- Convert to a common format, like JSON
- Much easier to just start in a common format

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Parse Cont.

The defacto tools for processing data

- Regular Expressions
- JSONPath
- JSONata
- XPath

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Filter

- Determine if some data should be passed along or not
- Ignore noise
- Only pass along what is important

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Buffer

- Hold data while processing
- Prevent data loss
- Handle network connectivity issues

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Route

- Determine where data should go
- Get it to the right place at the right time

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Output

- Send data to target system
- Format data as needed

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Abstraction

- Most monitoring platforms abstract this away
- Allows you to focus on the data

---

<PresenterTimer :minutes="2" :seconds="0" />

# Data Pipelines: Today

- We will be focusing on the Input and Parse stages
- Look at each piece of data in our data points list and answer:
  - What is the source component(s) of this data?
  - What source port and protocol is the data coming from?
  - What method will we use to collect it? (script, native, etc)
  - What format is the data in and what format do we need it in?
  - What method will we use to parse the data? (regex, jsonpath, etc)
- Will be a bit more freeform today as we work through the data points

---
layout: center
---

<PresenterTimer :minutes="5" :seconds="0" />

# Questions?
