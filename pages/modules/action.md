---
layout: section
hideInToc: false
---

<PresenterTimer :minutes="0" :seconds="10" />

# Action

Actually doing something about it

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Actions

But what do we do about it

<v-clicks>

- Generally triggered by [Events]{.highlight}
- Sometimes [manual]{.highlight}
- [Notifications]{.highlight} are the most common
  - Type, recipient, frequency
- With maturity, we can trigger [Automations]{.highlight}
  - Scripts, incident management, validations, etc
- Can be [conditional and complex]{.highlight}, varies by platform

</v-clicks>

---

# Problem Events

The most common trigger for action

<PresenterTimer :minutes="5" :seconds="0" />

- Most problem events from the health model will trigger an action
- If it's a problem, then it needs a response from someone, so get it to the right team
- Start with notifications, but iterate and automate over time

---
layout: default
---

# Notifications

How Notifications Enhance Monitoring

<PresenterTimer :minutes="5" :seconds="0" />

- Types of notifications: Email, SMS, App alerts
- Configuring notification thresholds
- Best practices for effective notifications
- Reminder: better too have none at all than too many

<!--
>
Discuss the role of notifications in monitoring, types of notifications, and how to set them up effectively.
-->

---
layout: default
---

# Remediation Scripts

Automating Responses with Self-Healing Scripts

<PresenterTimer :minutes="10" :seconds="0" />

- Introduction to remediation scripts
- Examples of self-healing actions: Restarting services, clearing disk space
- Script automation tools: `expect`, `powershell`, `ps / js`, `bash`, etc.

<!--
>
Explain how remediation scripts work, providing examples of common scripts and discussing tools used to automate these scripts.
-->

---
layout: default
---

# Incident Management

A popular form of monitoring automation

<PresenterTimer :minutes="10" :seconds="0" />

- Not only automating the detection of issues, but also the Responses
- Integrate with [ticketing systems]{.highlight}
- [Escalation]{.highlight} paths and workflows

<!--
>
Detail the process of incident management from detection to resolution, including tools commonly used in the enterprise environment.
-->

---
layout: default
---

# Escalation Processes

Effective Escalation to Ensure Issue Resolution

<PresenterTimer :minutes="10" :seconds="0" />

- What is escalation in the context of monitoring?
- Escalation paths and their importance
- Designing escalation workflows

<!--
>
Discuss the importance of escalation, how to set up escalation paths, and best practices for designing effective escalation workflows.
-->

---
layout: default
---

# Example: Configure Notification & Remediation Script

<!--
>
Engage participants in a practical lab session where they configure notifications and write remediation scripts, applying concepts discussed earlier.
-->

---

# Key Takeaways

<PresenterTimer :minutes="0" :seconds="10" />

- Actions are the response to [Events]{.highlight}
- Notifications are the most common form of action
- Automations are the most mature form of action
- Escalation workflows are part of the analysis function, and help us be smarter about our actions
