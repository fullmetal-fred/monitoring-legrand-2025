---
layout: section
hideInToc: false
title: "Pipelines: SNMP"
---

<PresenterTimer :minutes="0" :seconds="10" />

Data Pipelines

# SNMP

The defacto standard for network management

<!--
50 minutes
Explain that this section will cover the basics of SNMP, its role in IT, and practical usage examples.
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# What is SNMP?

Simple Network Management Protocol (SNMP) is a protocol designed for managing complex networks.

- **Purpose**: To monitor and manage network devices.
- **Usage**: Used in network management systems to monitor network-attached devices for conditions that warrant administrative attention.

<!--
Discuss how SNMP works on a basic level, emphasizing its importance in network management.
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# History and Adoption of SNMP

Understanding the development and widespread adoption of SNMP in IT environments.

- **Developed in 1988**: Aimed at simplifying network device management.
- **Evolution**: From SNMPv1 to SNMPv3, enhancing security and functionality.
- **Adoption**: Widely adopted due to its simplicity and broad device support.
- **Popularity**: Remains popular due to "its ease of use" and compatibility with network devices.

<!--
Detail the historical context of SNMP, how it has evolved over the years, and why it remains popular.
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# SNMP Components

- **Agents**: Software modules residing on network devices.
- **Management Stations**: Systems that monitor and manage network devices.
- **Network Management Systems (NMS)**: Software that communicates with agents to collect data.
- **OID**: Object Identifier, a unique identifier for managed objects.
- **MIB**: Management Information Base, a database of managed objects.

<!--
Explain the key components of SNMP, including agents, management stations, and network management systems.
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# MIB: Management Information Base

::left::

<v-clicks>

- Translates SNMP OIDs into human-readable data.
- Uses a nested hierarchical structure (on other MIBs too)
- Standardized format based on standardized MIB namespace allocations
- Utterly unreadable, bust be machine parsed
- Cannot decipher OID <> friendly name by reading it

</v-clicks>

::right::

<v-click>

```bash
pdmCtlrFirmwareVersion OBJECT-TYPE
    SYNTAX PdmLocalizedStringTC  -- StringConstant
    MAX-ACCESS read-only
    STATUS current
    DESCRIPTION
      "Firmware version for the sub-controller. It is recommended
      that version numbers follow the DMTF convention (in ABNF):
      version-string = major-version-number '.'
      minor-version-number '.' patch-number *1(edit-letter) for
      example, 1.2.3e is major version 1, minor version 2, patch
      level 3, the fifth edit since publication.
      NEC -- (255 bytes) Always returns null."
    DEFVAL { "" }
    ::= { pdmCtlrEntry 4 }
```

</v-click>

<!--
Explain what a MIB is and how it integrates with SNMP to provide detailed information about network devices.
- pull up actual MIB?
-->

---
layout: default
---

<PresenterTimer :minutes="2" :seconds="0" />

# SNMP Versions

Comparison of SNMPv1, SNMPv2c, and SNMPv3.

- **SNMPv1**: Basic features, no security, no support for 64-bit counters (do not use)
- **SNMPv2c**: Improved performance, still limited security (functionally the same as v1)
- **SNMPv3**: Enhanced security features, including authentication and encryption.

<!--
Compare the three versions of SNMP, focusing on the improvements in security and functionality from one version to the next.
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# SNMP: Collecting at the CLI

## CLI Tools for SNMP

- **snmpwalk**: Retrieve a subtree of management values using SNMP GETNEXT requests.
- **snmpget**: Retrieve a single piece of management information using SNMP GET requests.
- **snmpset**: Set the value of a management information variable using SNMP SET requests.

<!--
Discuss some common command-line tools for SNMP and their practical applications in real-world networking scenarios.
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="5" :seconds="0" />

# Exploring `snmpwalk`

Let's try it out!

::left::

<v-clicks depth=2 >

- <LinkToConsole />
- Help menu
  - `snmpwalk -h`
- Walk a device
  - `snmpwalk -v2c -On -c public demo.pysnmp.com`
- Walk a specific OID
  - `snmpwalk -v2c -On -c public demo.pysnmp.com .1.3.6.1.2.1.1.1.0`

</v-clicks>

::right::

<v-clicks depth=2 >

- Walk a specific OID with symbolic name and subtree
  - `snmpwalk -v2c -c public demo.pysnmp.com system`
- Walk a specific OID with name and subtree, show OID values
  - `snmpwalk -v2c -On -c public demo.pysnmp.com system`

</v-clicks>

<!--
- For each step, ask "How might we..."
-->

---
layout: default
---

<PresenterTimer :minutes="7" :seconds="0" />

# SNMP: Collecting in Node-RED

<v-clicks>

- Middleware for connecting hardware devices, APIs, and online services.
- Supports SNMP via the `node-red-contrib-snmp` package.
- Allows for easy integration of SNMP data into Node-RED flows.
- Ideal for creating custom monitoring and automation solutions.

</v-clicks>

<!--
- Demo steps
  - Install the `node-red-contrib-snmp` package
  - Create a flow to collect SNMP data
  - Filter and process the collected data
  - Show in dashboard
-->

---
layout: default
---

<PresenterTimer :minutes="10" :seconds="0" />

# SNMP: Collecting in Zabbix

- SNMP is natively supported by Zabbix.

<!--
- Demo steps
  - Add a host to Zabbix
  - Configure SNMP on the host
  - On our template, create an item to collect SNMP data
  - Create our trigger based on our events table
  - View the collected data in Zabbix
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Key Takeaways

- SNMP is a protocol for managing network devices.
- SNMP components include agents, management stations, and MIBs.
- SNMP versions offer varying levels of security and functionality.
- SNMP tools and scripts are used for monitoring and managing network devices.
- Often natively supported by standard monitoring tools

<!--
- TODO cleanup key Takeaways
-->

---
layout: center
---

<PresenterTimer :minutes="5" :seconds="0" />

# Questions?

<!--
Conclude with a Q&A session to address any uncertainties or further inquiries from the students.
-->
