---
layout: section
hideInToc: false
---

<PresenterTimer :minutes="0" :seconds="10" />

# Administration

Managing the tool itself.

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Administration: Refresh

Reality check

<v-clicks>

- Who will [administer]{.highlight} the end-to-end system?
  - Data pipelines, notifications, scripts, visualizations, user access, etc
- Who else will be involved and what [resources]{.highlight} will they need?
  - Access, training, documentation, support, customization, visualizations, notification types, etc
- What [platform/s]{.highlight} are we using?
  - Can it handle our needs? Data pipelines, events, actions, visualizations, integrations, extensability etc
  - Does it fit our budget? At scale?
- What [data storage]{.highlight} considerations do we need to make?
  - Location, compliance, access, retention, backup, restore, archival, etc.

</v-clicks>

---
layout: default
---

<PresenterTimer :minutes="4" :seconds="0" />

# Administration of Monitoring Platforms

- Key areas:
  - User management
  - Template development
  - Device discovery / asset management
  - Platform specification
  - Maintainence
  - Security & compliance
  - Cost management

<!--
> TODO somewhere in here, talk about and suggest some administrative events (FW versions, IP changes,  etc)
Provide a high-level introduction to the range of administrative tasks involved in managing a monitoring platform.
-->

---
layout: default
---

# User & Role Management

Setting Up and Managing Access

<PresenterTimer :minutes="4" :seconds="0" />

- Creating user profiles
- Defining roles and permissions
- Best practices for maintaining secure access

<!--
>
Discuss the processes and best practices for managing user accounts and roles within the monitoring platform to ensure proper access control.
-->

---
layout: default
---

# Template Development

Standardizing Monitoring with Templates

<PresenterTimer :minutes="4" :seconds="0" />

- Templates allow for standardization at scale
- Everything from device configuration to alerting
- Define in one place and apply to many
- Includes writing data points, thresholds, alerting, etc

<!--
>
Explain the role of templates in streamlining monitoring tasks, including how to create and apply them effectively across different monitoring scenarios.
-->

---
layout: default
---

# Driver and Script Development

Enhancing Functionality with Custom Scripts

<PresenterTimer :minutes="4" :seconds="0" />

- Introduction to drivers and scripts in monitoring
- Developing custom scripts for extended functionality
- Use cases of script deployment in real-world monitoring

<!--
>
Cover the development and application of drivers and scripts to extend the monitoring platform's capabilities, with practical examples.
-->

---
layout: default
---

# Host and Device Discovery Rules

Automating Device Management

<PresenterTimer :minutes="4" :seconds="0" />

- Automating host/device discovery
- Setting up discovery rules and conditions
- Optimizing network scans and resource allocation

<!--
>
Discuss how to automate the discovery of hosts and devices using rules and conditions to efficiently manage network resources.
-->

---
layout: default
---

# Security and Compliance

Ensuring the Integrity of the Monitoring System

<PresenterTimer :minutes="4" :seconds="0" />

- Security best practices in monitoring administration
- Compliance with industry standards and regulations
- Regular auditing and updates

<!--
>
Detail the importance of maintaining security and compliance in the monitoring platform, highlighting how to implement regular audits and updates.
-->

---
layout: default
---

# Cost Management

Optimizing Resources and Budget

<PresenterTimer :minutes="4" :seconds="0" />

- Understanding direct and indirect costs of monitoring solutions
- Benefits analysis: Improved uptime, resource optimization
- Cost of data storage, processing, and visualization
- Optimization strategies for cost-effective monitoring

---
layout: default
---

# Key Takeaways

- Administration is a critical aspect of monitoring platforms
- Key areas include user management, template development, device discovery, security, and cost management
- Don't overlook the administrative burden when selecting or implementing a monitoring platform
