---
layout: section
title: Data Points
hideInToc: false
---

<PresenterTimer :minutes="0" :seconds="30" />

# Data Points

What data are we going to collect?

---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Points: Review

What are data points again?

<v-clicks depth=2>

- At this stage, we decide which [data points]{.highlight} we need to collect
- Based on [goals]{.highlight}, [KPIs]{.highlight}, and [health models]{.highlight}
- Answers the questions
  - What [data point]{.highlight} do we need to collect? (unique key)
  - Which [type of data]{.highlight} is it?
  - Are we [collecting]{.highlight} it directly or [calculating]{.highlight} it from other data points?
  - If collecting, from what [source]{.highlight}?
  - [How often]{.highlight} should we collect it?
  - How long should we [keep]{.highlight} it?
- Lays the foundation for the [data pipeline]{.highlight} phase

</v-clicks>

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Points: Priorities

Before we start collecting data, we need to decide what data to collect

<v-clicks>

1. **KPIs**
   - Data points requried for [methodology]{.highlight}
2. **Health Models**
   - Data points which trigger [problem]{.highlight} events
   - The [threshold]{.highlight} at which they trigger
3. **Operational Data**
   - [Inventory]{.highlight} data (SN, mac address, etc.)
   - [Configuration]{.highlight} data (IP, hostname, config files, etc.)
   - Etc.

</v-clicks>

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Point Requirements

What details do we need per data point

::left::

<v-clicks>

- **Name**
- **Unique Key**
- **Type**
- **Units**
- **Description**

</v-clicks>

::right::

<v-clicks>

- **Source** (device, calculation)
- **Frequency**
- **Retention**
- **Trend Retention**

</v-clicks>

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Data Points: Example

Let's walk through an example

| Name             | Key            | Type   | Units | Description                                    | Source             | Frequency | Retention | Trend Retention |
| ---------------- | -------------- | ------ | ----- | ---------------------------------------------- | ------------------ | --------- | --------- | --------------- |
| Ping Packet Loss | pingPacketLoss | number | %     | Percentage of total packets lost during a ping | Any network device | Every 30s | 30 days   | 365 days        |

---
layout: default
---

<PresenterTimer :minutes="16" :seconds="0" />

# Data Points: Exercise

Let's work on defining data points for our system

- Define the required data points for our system's [components]{.highlight} as defined by our [Goals]{.highlight}, [KPIs]{.highlight}, and [Health Model]{.highlight}
  - Name, Key, Type, Units, Description, Source, Frequency, Retention, Trend Retention
  - Consider both [directly collected]{.highlight} data points as well as [calculated]{.highlight} data points
- For each [KPI]{.highlight}, validate we have the data points needed to satisfy our [methodology]{.highlight}
- For each [problem event]{.highlight} in our health model, think about what [potential trigger logic]{.highlight} would be required to [detect]{.highlight} the event
  - Do you have the data points [required to support]{.highlight} this [trigger]{.highlight}?
  - We'll define the actual trigger logic in a [later]{.highlight} activity

<br>

<Timer :hours="0" :minutes="15" />

<!--
-
-->

---
layout: default
---

<PresenterTimer :minutes="5" :seconds="0" />

# Data Points: Exercise Debrief

Let's discuss the data points we defined

- Share a few [data points]{.highlight} you defined.
  - Directly collected data points
  - Calculated data points
  - Any you're particularly [proud]{.highlight} of?
- What did you find [challenging]{.highlight} or [surprising]{.highlight} about this?
- Were you able to leverage the same data point [multiple times]{.highlight}?

<!--
-
-->

---
layout: default
class: overflow-y-auto
---

<PresenterTimer :minutes="3" :seconds="0" />

# Data Points: Artifact

Locking in our component data points

| Source                            | Name                       | Key                             | Type         | Units  | Description                                              | Frequency | Retention | Trend Retention |
| --------------------------------- | -------------------------- | ------------------------------- | ------------ | ------ | -------------------------------------------------------- | --------- | --------- | --------------- |
| Any network device                | Ping Packet Loss           | pingPacketLoss                  | number       | %      | Percentage of total packets lost during a ping           | Every 30s | 30 days   | 365 days        |
| Any network device                | Ping Round Trip Delay      | pingRtt                         | number       | ms     | Total round-trip time for ping packets                   | Every 30s | 30 days   | 365 days        |
| Any network device                | Ping Jitter                | pingJitter                      | number       | ms     | Total jitter for ping packets                            | Every 30s | 30 days   | 365 days        |
| Collector to any internet address | Download speed             | speedtestDownload               | number       | mbps   |                                                          | Every 10m | 30 days   | 365 days        |
| Collector to any internet address | Upload speed               | speedtestUpload                 | number       | mbps   |                                                          | Every 10m | 30 days   | 365 days        |
| Display                           | Current input              | displayInput                    | text         |        | The ID of the currently selected input                   | Every 1m  | 30 days   | 365 days        |
| Display                           | Current volume             | displayVolume                   | number       |        | The current volume                                       | Every 1m  | 30 days   | 365 days        |
| Display                           | Current power state        | displayPowerState               | text         |        | The current power state                                  | Every 1m  | 30 days   | 365 days        |
| Display                           | Current brightness         | displayBrightness               | number       |        | The current brightness level                             | Every 1m  | 30 days   | 365 days        |
| Video Bar                         | Touch panel pairing status | videoBarTouchPairStatus         | text         |        | The current touch panel pairing status                   | Every 1m  | 30 days   | 365 days        |
| Video Bar                         | App mode                   | videoBarAppMode                 | text         |        | The current video bar app mode                           | Every 1m  | 30 days   | 365 days        |
| Video Bar                         | Sign-in Status             | videoBarZoomRoomConnect         | text         |        | The current UCC platform sign-in status                  | Every 1m  | 30 days   | 365 days        |
| Video Bar                         | Device Logs                | videoBarLogs                    | text         |        | The last interval of log lines                           | Every 5m  | 30 days   | 365 days        |
| Video Bar                         | Local Presentation Active  | videoBarLocalPresentationActive | bool         |        | Is the system currently presenting locally               | Every 1m  | 30 days   | 365 days        |
| Touch panel                       |                            |                                 |              |        | None                                                     |           |           |                 |
| People sensor                     | Current people count       | currentPeopleCount              | number       | people | Number of people currently detected in the room          | Push      | 30 days   | 365 days        |
| UCC Service                       | Room errors                | zoomRoomErrors                  | array of obj |        | Array of all current errors in Zoom Room                 | Every 1m  | 30 days   | 365 days        |
| UCC Service                       | Zoom Room current meeting  | zoomRoomCurrentMeeting          | object       |        | Current meeting details                                  | Every 15m | 30 days   | 365 days        |
| Scheduling Service                | Current bookings           | resourceAccountCurrentBookings  | array of obj |        | Current room schedule details                            | Every 1m  | 30 days   | 365 days        |
| Scheduling Service                | Account config             | resourceAccountConfig           | object       |        | Current account configuration                            | Every 1h  | 30 days   | 365 days        |
| Calculated                        | System Booked              | systemBooked                    | bool         |        | if (resourceAccountCurrentBookings > 0)                  | Every 1m  | 30 days   | 365 days        |
| Calculated                        | Room Occupied              | roomOccupied                    | bool         |        | if (currentPeopleCount > 0)                              | Every 1m  | 30 days   | 365 days        |
| Calculated                        | System In Meeting          | systemInMeeting                 | bool         |        | if (zoomRoomCurrentMeeting.status == connected)          | Every 1m  | 30 days   | 365 days        |
| Calculated                        | System Active              | systemActive                    | bool         |        | if(videoBarLocalPresentationActive \|\| systemInMeeting) | Every 1m  | 30 days   | 365 days        |
| Calculated                        | System In Use              | systemInUse                     | bool         |        | if(systemActive \|\| roomOccupied)                       | Every 1m  | 30 days   | 365 days        |

---
layout: default
class: overflow-y-auto
---

<PresenterTimer :minutes="1" :seconds="0" />

# KPIs: Artifact Revisited

Taking a second look at our KPIs

| KPI           | Units | Goal                                                  | Methodology                                                       | Target  | Frequency    | Owner |
| ------------- | ----- | ----------------------------------------------------- | ----------------------------------------------------------------- | ------- | ------------ | ----- |
| Uptime        | %     | Establish and track an audiovisual system uptime SLA. | Business minutes operational / total available business minutes   | Unknown | Every Minute | You   |
| Utilization   | %     | Track audiovisual system usage.                       | Business minutes "in use" / total available business minutes      | None    | Every Minute | You   |
| Booking Rate  | %     | Track audiovisual system usage.                       | Business minutes booked / total available business minutes        | None    | Every Minute | You   |
| Occupied Rate | %     | Track audiovisual system usage.                       | Business minutes occupied / total available business minutes      | None    | Every Minute | You   |
| Active Rate   | %     | Track audiovisual system usage.                       | Business minutes system active / total available business minutes | None    | Every Minute | You   |

---

<PresenterTimer :minutes="18" :seconds="0" />

# Data Points: Trigger Logic Activity

Let's work on defining trigger logic for our health model with our new data points

- For each [problem event]{.highlight} in our health model, using the [unique keys of the data points]{.highlight} you've defined, write the [trigger logic]{.highlight} that will cause the event to fire
- Write the expressions in psuedo code or a language of your choice
- If needed, go back and [add missing data points]{.highlight} to support your trigger logic
- Example: For the problem event ["Display powered off while in use"]{.highlight}, the trigger logic might be: `displayPowerState != "on" && systemInUse`

<br>

<Timer :minutes="15" />

---
layout: default
---

<PresenterTimer :minutes="5" :seconds="0" />

# Data Points: Trigger Logic Activity Debrief

Let's discuss the data points we defined

- Share a few [trigger expressions]{.highlight} you defined.
  - Any you're particularly [proud]{.highlight} of?
- Did you need to go back and [add any data points]{.highlight} to support your trigger logic?
- What did you find [challenging]{.highlight} or [surprising]{.highlight} about this?

<!--
-
-->

---
layout: default
class: overflow-y-auto
---

<PresenterTimer :minutes="3" :seconds="0" />

# Health Model: Artifact Revisited

Taking a second look at our Health Model / Problems

| Component          | Problem                                 | Severity    | Flows Impacted    | [Trigger]{.highlight}                                                                                                                                                                                                                                                                                               |
| ------------------ | --------------------------------------- | ----------- | ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Display            | Device unreachable                      | Average     | Conf, Pres        | pingPacketLoss == 100%                                                                                                                                                                                                                                                                                              |
| Display            | Poor network connectivity               | Average     | Conf, Pres        | pingPacketLoss > 5% \|\| pingRtt > 200ms \|\| pingJitter > 30ms                                                                                                                                                                                                                                                     |
| Display            | Display powered off while in use        | Average     | Conf, Pres        | displayPowerState != \{\$DISPLAY_TARGET_POWER_STATE\} && systemInUse                                                                                                                                                                                                                                                |
| Display            | Display on the wrong input while in use | Average     | Conf, Pres        | displayInput != \{\$DISPLAY_TARGET_INPUT\} && systemInUse                                                                                                                                                                                                                                                           |
| Display            | Brightness outside of target            | Warning     | Conf, Pres        | displayBrightness < \{\$DISPLAY_BRIGHTNESS_MIN\} \|\| displayBrightness > \{\$DISPLAY_BRIGHTNESS_MAX\}                                                                                                                                                                                                              |
| Display            | Display volume outside of target        | Warning     | Conf, Pres        | displayBrightness < \{\$DISPLAY_VOLUME_MIN\} \|\| displayBrightness > \{\$DISPLAY_VOLUME_MAX\}                                                                                                                                                                                                                      |
| Video Bar          | Device unreachable                      | Average     | Conf, Pres        | pingPacketLoss == 100%                                                                                                                                                                                                                                                                                              |
| Video Bar          | Poor network connectivity               | Average     | Conf, Pres        | pingPacketLoss > 5% \|\| pingRtt > 200ms \|\| pingJitter > 30ms                                                                                                                                                                                                                                                     |
| Video Bar          | Touch panel not connected               | Average     | Conf, Pres        | videoBarTouchPairStatus != \{\$VIDBAR_TARGET_TOUCH_PAIR_STATUS\}                                                                                                                                                                                                                                                    |
| Video Bar          | Wrong app mode                          | Average     | Conf, Pres        | videoBarAppMode != \{\$VIDBAR_TARGET_APP_MODE\}                                                                                                                                                                                                                                                                     |
| Video Bar          | Not connected to UCC platform           | Average     | Conf, Pres        | videoBarZoomRoomConnect != \{\$VIDBAR_TARGET_UCC_CONNECT_STATUS\}                                                                                                                                                                                                                                                   |
| Video Bar          | Call failed                             | Warning     | Conf, Pres        | Push, auto-close immediately                                                                                                                                                                                                                                                                                        |
| Touch Panel        | Device unreachable                      | Average     | Conf, Pres        | pingPacketLoss == 100%                                                                                                                                                                                                                                                                                              |
| Touch Panel        | Poor network connectivity               | Average     | Conf, Pres        | pingPacketLoss > 5% \|\| pingRtt > 200ms \|\| pingJitter > 30ms                                                                                                                                                                                                                                                     |
| People Sensor      | Device unreachable                      | Average     | Mon               | pingPacketLoss == 100%                                                                                                                                                                                                                                                                                              |
| People Sensor      | Poor network connectivity               | Average     | Mon               | pingPacketLoss > 5% \|\| pingRtt > 200ms \|\| pingJitter > 30ms                                                                                                                                                                                                                                                     |
| UCC Service        | Room status unhealthy                   | Average     | Conf              | zoomRoomErrors > 0                                                                                                                                                                                                                                                                                                  |
| UCC Service        | Room "Under Construction"               | Information | Conf, Pres, Sched | zoomRoomUnderConstruction                                                                                                                                                                                                                                                                                           |
| Scheduling Service | Resource account not found              | Average     | Sched             | resourceAccountConfig == null \| unsupported                                                                                                                                                                                                                                                                        |
| Scheduling Service | Resource account configuration issue    | Warning     | Sched             | resourceAccountConfig.settings[automateProcessing != 'AutoAccept' \|\| deleteComments \|\| addOrganizerToSubject \|\| deleteSubject \|\| removePrivateProperty \|\| !addAdditionalResponse \|\| additionalResponse != 'This is a Shinra Global meeting room resource account' \|\| !processExternalMeetingMessages] |

---
layout: two-cols-header
---

<PresenterTimer :minutes="2" :seconds="0" />

# Key Takeaways

::left::

- [Data points]{v-click .reveal} are the actual pieces of information we'll collect about system
- Each data point should have:
  - a unique [key]{v-click .reveal} to identify it
  - a known data [type]{v-click .reveal}
  - [units]{v-click .reveal} if numerical data
  - a [description]{v-click .reveal} of what the data point means
  - a [source]{v-click .reveal} from which we might get the data
  - a [frequency]{v-click .reveal} at which we'll collect polled data
  - a [retention]{v-click .reveal} period for the raw data
  - a [trend]{v-click .reveal} [retention]{v-after .reveal} period for the aggregated data

::right::

- Prioritize what data points to collect
  - Start with data points needed for [KPIs]{v-click .reveal}
  - Then [health]{v-click .reveal} [models]{v-after .reveal}
  - Finally [operational]{v-click .reveal} [data]{v-after .reveal}
- Make sure KPIs have the data points they need for their [methodology]{v-click .reveal}
- For health models, define the [trigger]{v-click .reveal} logic for each problem event

---
layout: center
---

<PresenterTimer :minutes="2" :seconds="0" />

# Questions?
