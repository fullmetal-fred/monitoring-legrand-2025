---
layout: section
---

# Designing observable systems

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Observable systems require observable components

Designing observable systems

<v-clicks>

- [Devices]{.highlight}
    - Six-Factor Device
- Applications
    - Local / per-system
    - Cloud / multi-system
- Network Services
- Environments
- System Health

</v-clicks>

<!--
- Difficult to observe a system if the components are not observable
- Most important element is [click] device data as the bulk of system data will come from devices
- [click] Applications are also very important as they capture business logic and user interactions. These can be local or cloud-based, and often serve as critical middleware
- [click] Networks are also important, but can be difficult to observe due to security practices and limitations
- [click] The environment is important as it often impacts the user experience and provides valuabe usage data
- [click] Finally, we bring it all together with system health which is the most important element
-->

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Devices

Designing observable systems - Devices

Fred's "[Six-Factor Device]{.highlight}"

<v-clicks>

1. **Open API**
1. **Standardized**
1. **Hardened**
1. **Observable**
1. **Remote-First**
1. **Declarative**

</v-clicks>

<!--
- Every component in an observable system should follow these principles
- Each componenet has a cooresponding anti-pattern to watch for
-->


---

<PresenterTimer :minutes="2" :seconds="0"/>

# Open API

Designing observable systems - Six-Factor Device

<v-clicks>

- Included with device purchase
- Local to the device, not proxied through a cloud service
- Well-documented and easy to reference
- Comprehensive, covering all device features
    - Monitoring, control, configuration, etc...more on this later
- Stable and versioned

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Standardized

Designing observable systems - Six-Factor Device

<v-clicks>

- Leverages standard technologies
    - API: HTTP, REST/RPC, JSON, GraphQL, MQTT, etc.
    - CLI: SSH
    - Configuration: JSON, YAML
    - Monitoring: SNMP, Syslog, HTTP, WebSockets, MQTT etc.
- Avoids proprietary & bespoke solutions
- Widely supported by standard programming languages and monitoring / management tools

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Hardened

Designing observable systems - Six-Factor Device

<v-clicks>

- Implements security best-practices by default
- Encryption in transit
    - HTTPS for API and web interfaces
    - CLI access via SSH
- Reset admin password on first boot
- Allow disabling of insecure or unused services
    - Web interface, console, etc.
- Regularly updated firmware, managed via API

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Observable

Designing observable systems - Six-Factor Device

<v-clicks>

- Surfaces [all]{.highlight} state, performance, and event data via the API
    - State data: current settings, status, etc.
    - Performance data: CPU, memory, network, etc.
    - Event data: logs, alerts, etc.
- Available via push or poll methods
    - Poll: HTTP, SNMP, SSH, etc.
    - Push: WebSockets, SNMP Traps, MQTT, etc.
- Data is human-readable and machine-readable
    - JSON, XML, etc.
    - Timestamped and tagged with metadata 

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Remote-First

Designing observable systems - Six-Factor Device

<v-clicks>

- All management and control tasks are possible via the API
    - Control: power, volume, input, etc.
    - Management: configuration, firmware updates, etc.
    - Monitoring: status, performance, events, etc.
- No desktop software or local network access required
- No physical access to the device required

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Declarative

Designing observable systems - Six-Factor Device

<v-clicks>

- Uses declarative, human-readable configuration via the API
- Configuration is stored in a human-readable format
    - JSON, YAML, etc.
- Configuration is versioned and can be backed up
- Configuration can be fetched or applied via the API
- Configuration can be checked into source control

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Recap: Manageable and Scalable Systems

Designing observable systems - Devices

Fred's "[Six-Factor Device]{.highlight}"

1. **Open API** - Implements an open, comprehensive, and well-documented API
1. **Standardized** - Leverages standard technologies, avoids proprietary solutions
1. **Hardened** - Implements security best-practices by default
1. **Observable** - Surfaces all state, performance, and event data via the API
1. **Remote-First** - All management and control tasks are possible via the API
1. **Declarative** - Uses declarative, human-readable configuration via the API
<!--
- good time to grab a screenshot 
-->

---
layout: center
---

<PresenterTimer :minutes="0" :seconds="10"/>

## Observable [devices]{.highlight} != observable [systems]{.highlight}
<br/>

### There's more to it than just the devices

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Applications - Local / Per-System

Designing observable systems

<v-clicks>

- Control systems, DSP, etc.
- Capture business logic and user interactions
- Can have robust APIs
- Often developed by systems integrators
- Frequently use proprietary technology
- Can serve as critical middleware

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Applications - Cloud / Multi-System

Designing observable systems

<v-clicks>

- VC, UCC, CDMP, Calendar, etc.
- Often cloud-based
- Often have robust APIs
- Can be difficult to observe due to security practices
- May require additional licensing or permissions
- Considered middleware for our purposes

</v-clicks>

<!--
Draw a diagram illustrating multiple points of data collection for a single device
-->

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Network Services

Designing observable systems

<v-clicks>

- LAN, WAN, internet, DNS, NTP, etc.
- Important for streaming media
- Can be a source of performance issues
- Owned and monitored by IT, but impact AV systems
- Leverages standard protocols like SNMP, NetFlow, TCP checks etc.

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0"/>

# Environment

Designing observable systems

<v-clicks>

- Sensors, thermostats, etc.
- Impact user experience
- Provide valuable usage data
- Often overlooked
- Privacy concerns

</v-clicks>

<!--
- What are some datapoints we can collect from the environment?
-->

---

<PresenterTimer :minutes="2" :seconds="0"/>

# System Health

Designing observable systems

<v-clicks>

- Sometimes called "health modeling" or "service monitoring"
    - The same "service" that is found in "Service Level Agreement"
- Components all come together to determine the health of the system
    - Each component can trigger alerts based on its own health
    - Each trigger impacts overall system health in well-defined ways
- The "uptime" of the system is a function of the health of its components
    - This metric is called the "Service Level Indicator" (SLI)
    - The target uptime is the "Service Level Objective" (SLO)
    - The contract between the provider and the customer is the "Service Level Agreement" (SLA)
- An uptime SLA is impossible without a health model


</v-clicks>

---
layout: default
class: overflow-y-auto
---

<PresenterTimer :minutes="2" :seconds="0" />

# System Health - Example

Designing observable systems

| Component          | Problem                                 | Severity    |
| ------------------ | --------------------------------------- | ----------- |
| Display            | Device unreachable                      | Average     |
| Display            | Poor network connectivity               | Average     |
| Display            | Display powered off while in use        | Average     |
| Display            | Display on the wrong input while in use | Average     |
| Display            | Brightness outside of target            | Warning     |
| Display            | Display volume outside of target        | Warning     |
| Video Bar          | Device unreachable                      | Average     |
| Video Bar          | Poor network connectivity               | Average     |
| Video Bar          | Touch panel not connected               | Average     |
| Video Bar          | Wrong app mode                          | Average     |
| Video Bar          | Not connected to UCC platform           | Average     |
| Video Bar          | Call failed                             | Warning     |
| Touch Panel        | Device unreachable                      | Average     |
| Touch Panel        | Poor network connectivity               | Average     |
| People Sensor      | Device unreachable                      | Average     |
| People Sensor      | Poor network connectivity               | Average     |
| UCC Service        | Room status unhealthy                   | Average     |
| UCC Service        | Room "Under Construction"               | Information |
| Scheduling Service | Resource account not found              | Average     |
| Scheduling Service | Resource account configuration issue    | Warning     |

<!--
- To be clear, these aren't the only problems that we'll care about in our system, but they are hopefully the only problems that impact system health.
- Iterate on the list as new issues come up.
-->



---

<PresenterTimer :minutes="2" :seconds="0"/>

# Recap: Observable systems require observable components

Designing observable systems


- [Devices (AV Gear)]{.highlight}
    - Six-Factor Device
- Applications
    - Local / per-system (DSP, control systems)
    - Cloud / multi-system (CDMP, UCC, VC, Booking)
- Network Services (LAN, WAN, internet, DNS, NTP)
- Environments (sensors, occupancy, temperature)
- System Health (brings it all together, measures health with SLI/SLO/SLA)

<!--
- Difficult to observe a system if the components are not observable
- Most important element is device data as the bulk of system data will come from devices
- Applications, both local and cloud are also very important as they capture business logic, user interactions, and can serve as critical middleware
- Networks are also important, but can be difficult to observe due to security practices and limitations
- Finally, the environment is important as it often impacts the user experience and provides valuabe usage data
-->
