---
layout: section
title: Data Primer
hideInToc: false
---

<PresenterTimer :minutes="0" :seconds="30" />

# Data Primer

> "Without data you're just another person with an opinion."
>
> \- W. Edwards Deming

---
layout: default
---

<PresenterTimer :minutes="0" :seconds="30" />

# Data

<v-clicks>

- Data is the [lifeblood]{.highlight} of monitoring
- Collecting it can be difficult and [complex]{.highlight}, [especially in AV]{.highlight}
- So [before]{.highlight} we start gathering data, let's take some time to learn more about [data itself]{.highlight}

</v-clicks>

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Types

Data comes in a few flavors

::left::

<v-clicks>

- Numbers
  - `1`, `3.14`, `0.0001`, `-42`
- Strings
  - `"Hello, world!"`, `"42"`, `"3.14"`
- Booleans
  - `true`, `false`
- Objects (key-value pairs)
  - ```json
    {
      "key": "value",
      "another": "pair",
      "foo": "bar"
    }
    ```

</v-clicks>

::right::

<v-clicks>

- Arrays (lists)
  - ```json
    ["item1", "item2", "item3"]
    ```
- Null (no value)
  - `null`
- Binary (files, images, etc)
  - ```
    –‰`0vÛú+ÇqÓ\+Ú 9úÀD+µCQ– 7∂4cU‡  	2^
    œ≠€@´¿ —Ä    ~4  »ná#É∑ú·X¸èsèZ∞Ä ≥ô¡\¥@≤ª^nΩ~ {cF5^   ì%‡¨˙–˝¥
    º  ∞˝   „@  ,ÜËr0;yŒè¡8˜<L Œgr— Ìb(» 
    ```
- ...and [more](https://amplitude.com/blog/data-types)!

</v-clicks>

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Structures

Data can be organized in a few ways

::left::

<v-clicks depth=2>

- **Structured**
  - [Predefined format]{.highlight} (schema, columns, etc.)
  - Easy to search, filter, or analyze through built-in database query tools
  - Example: Databases
- **Unstructured**
  - No predefined format
  - Processing is challenging and requires parsing tools (such as [regex]{.highlight})
  - Typically seeking to transform into [semi-structured]{.highlight} data
  - Example: Text, images, audio

</v-clicks>

::right::

<v-clicks depth=2>

- **Semi-structured**
  - Standardized format without rigid schema
  - Easier to search, filter, or analyze than unstructured
  - Our [favorite]{.highlight} format for monitoring data
  - Simple data data extraction from paths uses standard tools (such as [JSONPath]{.highlight}), while sophisticated filtering is possible with tools like [JSONata]{.highlight}
  - Example: JSON, XML, YAML, CSV

</v-clicks>

<!--
-
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Collection

Getting data from wherever it lives

::left::

<v-clicks>

- **Agent-based**
  - Software installed on the source
  - What IT uses for endpoints monitoring
  - Impossible on firmware-based devices
  - Example: OS agents
- **Agentless**
  - No software on source, uses a network collector which interrogates the source from the outside
  - What we use in AV 99% of the time
  - Requires device to support data access
  - Example: SNMP, HTTP, SSH, MQTT, etc.

</v-clicks>

::right::

<v-clicks>

- **Push**
  - Can be agentless or agent-based
  - Enables real-time monitoring / events
  - No API programming required
  - Example: SNMP traps, webhooks, MQTT, etc.
- **Poll**
  - Collector interrogates the source
  - Requires APIs or other data access methods
  - Not real-time due to polling interval
  - Example: SNMP, HTTP, TCP consoles, etc.

</v-clicks>

<!--
- **Push**
  - Can be agentless (enabled in source code) or agent-based (installed)
  - Often uses standard implementations
  - Enables realt-time monitoring / events
  - No API programming required (unless you made the box)
  - Example: SNMP traps, webhooks, MQTT, CLI subscriptions, etc.
- **Poll**
  - Always agentless
  - Collector requests data from the source
  - Requires famaliarity with the source's API
  - Lack of API standards can make this difficult
  - No "real-time" monitoring due to polling interval
  - Example: SNMP, HTTP, CLIs, etc.
-->

---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Calculation

Not all data needs to be requested from a source

<v-clicks>

- **Derived Data**
  - Data that can be calculated from other data
  - Example: Room occupancy boolean based on current people count
- **Aggregated Data**
  - Data that is summarized from other data
  - Can be aggregated from a single source or many sources
  - Example: Average CPU usage over the last hour
- **Transformed Data**
  - Data that is changed from its original form
  - Could be done before or after loading into the monitoring system
  - Example: Converting a date from `MM-DD-YYYY` to `YYYY-MM-DD`

</v-clicks>

---

<PresenterTimer :minutes="1" :seconds="0" />

# Telemetry

A fancy word for monitoring data

<v-clicks>

- Data used for monitoring is called [telemetry]{.highlight}
- Telemetry data can be [structured]{.highlight} or [unstructured]{.highlight} and comes in many [formats]{.highlight}
- Often in the tech industry, telemetry data is [pushed]{.highlight} to a central system either by an agent, or by the source itself
- In AV, because our devices are often [firmware-based]{.highlight}, we rely on [agentless]{.highlight} collection methods
- Further, because monitoring [isn't common]{.highlight} in AV, we often have to [poll]{.highlight} devices, rather than have telemetry pushed to us
- There are [four main types]{.highlight} of telemetry data, which we'll cover next

</v-clicks>

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# Telemetry: MELT

Four main types of telemetry data

::left::

<v-clicks depth=2>

- **Metrics**:
  - Single [timeseries datapoints]{.highlight}
  - Often [numerical]{.highlight}, but can also be boolean, string, etc.
  - Examples: CPU usage, power state, temperature, volume level
- **Events**:
  - [Something that happened]{.highlight} at a specific time
  - Helps provide [context]{.highlight} to metrics
  - Examples: Call started, occupancy +1, new source selected

</v-clicks>

::right::

<v-clicks depth=2>

- **Logs**:
  - [Technical record]{.highlight} of everything that happens in a system
  - Often human-readable, sometimes JSON
  - Often used for [debugging]{.highlight}
  - Examples: Application logs, device logs
- **Traces**:
  - A record of a [transaction]{.highlight} through a [distributed system]{.highlight}
  - Composed of spans (individual steps)
  - Examples: End-to-end record of a meeting

</v-clicks depth=2>

<!--
- For traces, discuss the distributed nature of a meeting event...the call is in the cloud, the booking is too, the gear is in the room, and participants are all over the world potentially....internet, network, and device health all play a role in the success of the meeting
-->

---

<PresenterTimer :minutes="1" :seconds="0" />

# Other Data Types

<v-clicks>

- **Inventory data**
  - Devices in the system
  - Details about the devices (SN, etc)
  - Often used for asset management
- **Configuration data**
  - How devices are configured
  - Often used for change management
- ...and more!
  - Depends on use case
  - Discuss more in the Administration section

</v-clicks>

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Pipelines

How data gets from the source to the monitoring system

<v-clicks depth=2>

- Agentless monitoring means we have to [poll]{.highlight} devices for data, or configure them to [push]{.highlight} data to us
  - First, we acquire raw data during the [Input]{.highlight} stage
  - Then we [Parse]{.highlight} it into something useful
  - Next we [Filter]{.highlight} out the noise
  - All the while we [Buffer]{.highlight} the data while processing it
  - The data is tagged which instructs where the data should be [Routed]{.highlight}
  - Finally, we [Output]{.highlight} the data to the target system
- Most monitoring platforms [abstract]{.highlight} much of this away
- We'll spend [all day tomorrow]{.highlight} building data pipelines

</v-clicks>

---

<PresenterTimer :minutes="1" :seconds="0" />

# Key Takeaways

- Data can be either [collected]{v-click .reveal} from a source or [calculated]{v-click .reveal} from other data
- The most ubiquitous format for semi-structured data is [JSON]{v-click .reveal}
- We can use [regex]{v-click .reveal} to parse text data and [JSONPath]{v-click .reveal} to manipulate JSON data
- Since we work with firmware-based appliances, we usually leverage [agentless]{v-click .reveal} collection methods
- The four main types of telemetry data are [Metrics]{v-click .reveal}, [Events]{v-click .reveal}, [Logs]{v-click .reveal}, and [Traces]{v-click .reveal}
- [Data pipelines]{v-click .reveal} are how we get data from its source to the monitoring system

<!--
-
-->

---
layout: center
---

<PresenterTimer :minutes="5" :seconds="0" />

# Questions?
