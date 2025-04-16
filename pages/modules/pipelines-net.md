---
layout: section
hideInToc: false
title: "Pipelines: Network"
---

<PresenterTimer :minutes="0" :seconds="30" />

Data Pipelines

# Network

Acquiring and transforming network telemetry

<!--
-
-->

---
layout: center
---

<PresenterTimer :minutes="3" :seconds="0" />

# What kind of telemetry do we get from the network?

What can we learn by collecting it? Discuss...

<!--
- Encourage discussion here
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Network Telemetry

Core metrics for network diagnostics

<v-clicks>

- **Reachability**: Ability to connect to a network resource (bool)
- **Packet Loss**: Percentage of packets lost during transmission (%)
- **Latency**: Time taken for data to travel from source to destination (ms)
- **Jitter**: Variation in latency over time (ms)
- **Bandwidth**: Maximum data transfer rate of a network (bps)
- **Throughput**: Amount of data transferred per unit of time (bps)
- ...etc

</v-clicks>

<!--
- Ask them before you show them the list.
- What is the value in each of these metrics? Why do we want them?
- What KPI will these metrics help us measure?
- What unit is used to measure them
-->

---
layout: default
class: overflow-y-auto
---

<PresenterTimer :minutes="1" :seconds="0" />

# Network: Data Points

Our network telemetry data points from yesterday

| Source                            | Name                  | Key               | Type   | Units | Description                                    | Frequency | Retention | Trend Retention |
| --------------------------------- | --------------------- | ----------------- | ------ | ----- | ---------------------------------------------- | --------- | --------- | --------------- |
| Any network device                | Ping Packet Loss      | pingPacketLoss    | number | %     | Percentage of total packets lost during a ping | Every 30s | 30 days   | 365 days        |
| Any network device                | Ping Round Trip Delay | pingRtt           | number | ms    | Total round-trip time for ping packets         | Every 30s | 30 days   | 365 days        |
| Any network device                | Ping Jitter           | pingJitter        | number | ms    | Total jitter for ping packets                  | Every 30s | 30 days   | 365 days        |
| Collector to any internet address | Download speed        | speedtestDownload | number | mbps  |                                                | Every 10m | 30 days   | 365 days        |
| Collector to any internet address | Upload speed          | speedtestUpload   | number | mbps  |                                                | Every 10m | 30 days   | 365 days        |

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# How do we collect network telemetry?

What tools are at our disposal?

<v-clicks>

- `ping` / `fping`
- `traceroute`
- `mtr`
- `nmap`
- `ncat`
- `speedtest`

</v-clicks>

---
layout: two-cols-header
---

# Introducing [`ping`](https://linux.die.net/man/8/ping)

Understanding the basics and applications

<PresenterTimer :minutes="1" :seconds="0" />

::left::

<v-clicks depth=2>

- What is `ping`?
  - A network diagnostic tool
  - OSI Layer 2 (Data Link Layer)
  - Sends ICMP echo requests to measure network reachability and latency

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - On every machine in some way
  - Consistent output
- Use cases:
  - Network reachability testing
  - Performance measurement
  - Integration in scripts and automation

</v-clicks>

<!--
- A bit different between OSes, but generally the same
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Example of [`ping`](https://linux.die.net/man/8/ping)

```shell {1|2|3|4|5|6|8-10}
fred@vivi:~$ ping -c4 1.1.1.1
PING 1.1.1.1 (1.1.1.1) 56(84) bytes of data.
64 bytes from 1.1.1.1: icmp_seq=1 ttl=58 time=11.8 ms
64 bytes from 1.1.1.1: icmp_seq=2 ttl=58 time=11.9 ms
64 bytes from 1.1.1.1: icmp_seq=3 ttl=58 time=11.9 ms
64 bytes from 1.1.1.1: icmp_seq=4 ttl=58 time=11.8 ms

--- 1.1.1.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3006ms
rtt min/avg/max/mdev = 11.840/11.873/11.925/0.033 ms
```

---
layout: two-cols-header
---

<PresenterTimer :minutes="4" :seconds="0" />

# Exploring [`ping`](https://linux.die.net/man/8/ping)

Let's try it out!

::left::

<v-clicks depth=2 >

- <LinkToConsole />
- Help menu
  - `ping --help`
- Ping Cloudflare
  - `ping 1.1.1.1`
  - `ctrl+c` to stop
- Ping 3 times
  - `ping -c 3 1.1.1.1`

</v-clicks>

::right::

<v-clicks depth=2>

- Ping 3 times with 1s timeout
  - `ping -c 3 -W 1 1.1.1.1`
- Ping 3 times with a 1kb packet
  - `ping -c 3 -s 1000 1.1.1.1`
- Ping 3 times, 100ms between pings
  - `ping -c 3 -i 0.1 1.1.1.1`
- Ping 3 times, 100ms between pings by DNS name
  - `nslookup 1.1.1.1`
  - `ping -c 3 -i 0.1 one.one.one.one`

</v-clicks>

<!--
- For each step, ask "How might we..."
-->

---
layout: two-cols-header
---

# Introducing [`fping`](https://fping.org/fping.8.html)

Link `ping` but better...

<PresenterTimer :minutes="1" :seconds="0" />

::left::

<v-clicks depth=2>

- What is `fping`?
  - A ping utility similar to `ping`
  - Sends ICMP echo requests to multiple hosts
  - Can work in parallel for faster results

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - Concurrently ping multiple hosts
  - Customizable output
- Use cases:
  - Network reachability testing
  - Performance measurement
  - Bulk host monitoring
  - Integration in scripts and automation

</v-clicks>

<!--
- Used by Zabbix under the hood for all ping monitoring
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Example of [`fping`](https://fping.org/fping.8.html)

<br />

```shell {1|2}
fred@console:~$ fping 1.1.1.1
1.1.1.1 is alive
```

<br />

<v-click>

```shell {1|2-3|4-5|6-7|9-10}
fred@console:~$ fping -c3 1.1.1.1 8.8.8.8
1.1.1.1 : [0], 64 bytes, 12.6 ms (12.6 avg, 0% loss)
8.8.8.8 : [0], 64 bytes, 11.9 ms (11.9 avg, 0% loss)
1.1.1.1 : [1], 64 bytes, 13.6 ms (13.1 avg, 0% loss)
8.8.8.8 : [1], 64 bytes, 13.4 ms (12.6 avg, 0% loss)
1.1.1.1 : [2], 64 bytes, 12.4 ms (12.9 avg, 0% loss)
8.8.8.8 : [2], 64 bytes, 12.0 ms (12.4 avg, 0% loss)

1.1.1.1 : xmt/rcv/%loss = 3/3/0%, min/avg/max = 12.4/12.9/13.6
8.8.8.8 : xmt/rcv/%loss = 3/3/0%, min/avg/max = 11.9/12.4/13.4
```

</v-click>

---
layout: two-cols-header
---

<PresenterTimer :minutes="4" :seconds="0" />

# Exploring [`fping`](https://fping.org/fping.8.html)

Let's try it out!

::left::

<v-clicks depth=2 >

- <LinkToConsole />
- Help menu
  - `fping --help`
- Ping Cloudflare
  - `fping 1.1.1.1`
- Ping 3 times
  - `fping -c3 1.1.1.1`
- Ping Cloudflare & Google
  - `fping 1.1.1.1 8.8.8.8`

</v-clicks>

::right::

<v-clicks depth=2 >

- Ping CF & Google 3 times
  - `fping -c3 1.1.1.1 8.8.8.8`
- Ping subnet, return successes
  - `fping -aqg 192.168.1.0/24`
- Set interval & timeout
  - `fping -i 10 -t 100 1.1.1.1 8.8.8.8`

</v-clicks>

<!--
- For each step, ask "How might we..."
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# Introducing [`traceroute`](https://linux.die.net/man/8/traceroute)

::left::

<v-clicks depth=2>

- What is `traceroute`?
  - Determines the path packets take to a destination
  - Uses ICMP or UDP packets
  - Identifies each hop and measures transit delays

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - Path of packets (hops)
  - [Latency at each hop]{.highlight}
  - Identifies network bottlenecks
- Use cases:
  - Network troubleshooting
  - Diagnosing network issues
  - Identifying network congestion

</v-clicks>

<!--
-
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Example of [`traceroute`](https://linux.die.net/man/8/traceroute)

```shell {1|2|3|4|5|6|7|8|9}
fred@vivi:~$ traceroute 1.1.1.1
traceroute to 1.1.1.1 (1.1.1.1), 64 hops max
  1   192.168.3.1  0.229ms  0.137ms  0.130ms
  2   184.99.64.16  1.589ms  2.006ms  3.258ms
  3   184.99.65.121  1.755ms  2.004ms  1.991ms
  4   4.68.63.133  28.794ms  17.360ms  12.734ms
  5   *  4.30.140.62  12.335ms  *
  6   172.68.20.3  13.078ms  12.053ms  12.175ms
  7   1.1.1.1  11.515ms  11.926ms  11.471ms
```

---
layout: two-cols-header
---

<PresenterTimer :minutes="4" :seconds="0" />

# Exploring [`traceroute`](https://linux.die.net/man/8/traceroute)

Let's try it out!

::left::

<v-clicks depth=2 >

- <LinkToConsole />
- Help menu
  - `traceroute --help`
- Get path to Cloudflare
  - `traceroute 1.1.1.1`
- Set queries per hop
  - `traceroute -q 1 1.1.1.1`

</v-clicks>

::right::

<v-clicks depth=2 >

- Traceroute with ICMP echo
  - `traceroute -I 1.1.1.1`
- Traceroute with TCP SYN packets
  - `traceroute -T 1.1.1.1`

</v-clicks>

<!--
- For each step, ask "How might we..."
-->

---
layout: center
---

<PresenterTimer :minutes="1" :seconds="0" />

## What is the [issue]{.highlight} with all of these commands so far?

<br>

<v-click>

## They all give us [strings]{.highlight} rather than structured data

</v-click>

<!--
- if they get stumped, hint: the data returned
-->

---
layout: default
---

<PresenterTimer :minutes="6" :seconds="0" />

# Activity: Parsing `ping` output

1. Copy the output of a `ping` command from the toolbox
2. Open [regexr.com](https://regexr.com/)
3. Paste the output into the large text area
4. Write an expression to capture the following:
   - Capture [group 1]{.highlight}: Packet loss percentage without the % sign
   - Capture [group 2]{.highlight}: Average round-trip time without the ms
5. ([Bonus]{.highlight}) Adjust the expression to return a JSON-formatted string with k:v pairs using our unique keys from the data points table (ie [pingPacketLoss]{.highlight} & [pingRtt]{.highlight})

<Timer :minutes="5" />

<!--
- It's hard right??
- We could deal with this every time, or...
-->

---
layout: two-cols-header
---

# Introducing [`mtr`](https://github.com/traviscross/mtr)

<PresenterTimer :minutes="1" :seconds="0" />

::left::

<v-clicks depth=2>

- What is `mtr`?
  - "[m]{.highlight}y [t]{.highlight}race[r]{.highlight}oute"
  - A network diagnostic tool
  - Combines `ping` and `traceroute` functionalities
  - Provides real-time analysis of network performance and route

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - Real-time network diagnostics
  - Combines ping and traceroute results
  - Displays per hop packet loss, jitter, latency
  - Helpful [export options (CSV, JSON, XML)!!!]{.highlight}
- Use cases
  - Monitoring network performance
  - Identifying network issues
  - Troubleshooting network connectivity
  - Sames a `ping` & `traceroute`

</v-clicks >

<!--
-
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Example of `mtr`

```shell {1|2|3-11}
fred@console:~$ mtr 1.1.1.1 -r
Start: 2024-05-18T01:54:58+0000
HOST: console                     Loss%   Snt   Last   Avg  Best  Wrst StDev
  1.|-- 10.244.3.1                 0.0%    10    0.1   0.1   0.1   0.2   0.0
  2.|-- 192.168.10.1               0.0%    10    0.5   0.5   0.4   0.7   0.1
  3.|-- boid-dsl-gw16.boid.qwest.  0.0%    10    2.1   6.0   1.7  33.1   9.7
  4.|-- 184-99-65-121.boid.qwest.  0.0%    10    1.5   2.4   1.5   2.7   0.4
  5.|-- ae27.edge6.Seattle1.Level  0.0%    10   12.3  17.9  11.6  42.8  10.1
  6.|-- 4.30.140.62               70.0%    10   19.7  15.1  12.8  19.7   4.0
  7.|-- 108.162.243.11             0.0%    10   13.3  16.1  12.3  38.5   8.1
  8.|-- one.one.one.one            0.0%    10   12.4  12.6  12.0  12.9   0.3
```

---
layout: two-cols-header
---

<PresenterTimer :minutes="4" :seconds="0" />

# Exploring [`mtr`](https://github.com/traviscross/mtr)

Let's try it out!

::left::

<v-clicks depth=2 >

- <LinkToConsole />
- Help menu
  - `mtr --help`
- Run live
  - `mtr 1.1.1.1`
- Set number of pings
  - `mtr -c 100 1.1.1.1`
- Set interval between pings
  - `mtr -i 0.5 1.1.1.1`

</v-clicks>

::right::

<v-clicks depth=2 >

- Run in report mode
  - `mtr -r 1.1.1.1`
- Run in report mode with JSON output
  - `mtr -r -j`

</v-clicks>

<!--
- For each step, ask "How might we..."
-->

---
layout: two-cols-header
---

# Introducing [`nmap`](https://nmap.org/)

A powerful network scanning tool

<PresenterTimer :minutes="1" :seconds="0" />

::left::

<v-clicks depth=2>

- What is `nmap`?
  - Network exploration tool and security/port scanner
  - Discovers hosts and services on a computer network
  - Uses raw IP packets to determine available hosts, services, OS versions, and more

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - Host discovery
  - Port scanning
  - Service version detection
  - OS detection
- Use cases:
  - Network inventory
  - Security auditing
  - Detecting open ports and services
  - Mapping network attack surface

</v-clicks>

<!--
- Nmap often flagged as a hacking tool, but it's also a powerful network diagnostic tool.
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Example of [`nmap`](https://nmap.org/)

```shell {1|2|3-4|5-6|7-8|9-10|11-12|13-14|15}
fred@console:~$ nmap -sP 10.244.3.63/24
Starting Nmap 7.80 ( https://nmap.org ) at 2024-05-18 03:20 America
Nmap scan report for 10.244.3.0
Host is up (0.0017s latency).
Nmap scan report for 10.244.3.1
Host is up (0.00055s latency).
Nmap scan report for 10-244-3-41.zabbix-zabbix-proxy.zabbix.svc.cluster.local (10.244.3.41)
Host is up (0.00090s latency).
Nmap scan report for 10-244-3-61.kube-prometheus-1713993192-prometheus.kube-system.svc.cluster.local (10.244.3.61)
Host is up (0.00045s latency).
Nmap scan report for 10-244-3-62.console-ssh-service.applied-monitoring.svc.cluster.local (10.244.3.62)
Host is up (0.00014s latency).
Nmap scan report for console (10.244.3.63)
Host is up (0.00034s latency).
Nmap done: 256 IP addresses (6 hosts up) scanned in 2.21 seconds
```

<!--
-
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="4" :seconds="0" />

# Exploring [`nmap`](https://nmap.org/)

Let's try it out!

::left::

<v-clicks depth=2 >

- <LinkToConsole />
- Help menu
  - `nmap --help`
- Ping scan subnet
  - `nmap -sP 10.244.1.0/24`
- TCP SYN scan
  - `nmap -sS 10.244.1.164`
  - sometimes you need elevated permissions

</v-clicks>

::right::

<v-clicks depth=2 >

- Service detection scan
  - `nmap -sV 10.244.1.200`
- Operating system scan
  - `nmap -O 192.168.1.200`
- Vulnerability scan
  - `nmap --script vuln -Pn 192.168.1.200`

</v-clicks>

<!--TODO set different subnet / IP in these examples-->

<!--
- For each step, ask "How might we..."
- Let last one run for a bit, going to take a while
-->

---
layout: two-cols-header
---

# Introducing [`speedtest`](https://www.speedtest.net/apps/cli)

How to measure internet speed using Speedtest CLI

<PresenterTimer :minutes="1" :seconds="0" />

::left::

<v-clicks depth=2>

- What is `speedtest`?
  - A command-line tool from Ookla to measure internet speed
  - Powered by Ookla's Speedtest.net
  - Works on various platforms

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - Measures download and upload speeds
  - Checks ping and latency
  - Supports JSON output for automation
- Use cases:
  - Testing internet speed
  - Diagnosing network performance
  - Monitoring network bandwidth

</v-clicks>

<!--
- Explain that Speedtest CLI is useful for both personal and professional use
- Highlight its reliability and accuracy, matching Speedtest.net results
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Example of [`speedtest`](https://www.speedtest.net/apps/cli)

```shell {1|3-12|13}
fred@console:~$ speedtest
...
Speedtest by Ookla

      Server: Syringa Networks - Boise, ID (id: 1456)
         ISP: CenturyLink
Idle Latency:     2.44 ms   (jitter: 0.30ms, low: 2.27ms, high: 2.81ms)
    Download:   853.18 Mbps (data used: 623.3 MB)
                  2.68 ms   (jitter: 0.65ms, low: 1.71ms, high: 9.89ms)
      Upload:   928.39 Mbps (data used: 820.7 MB)
                  6.50 ms   (jitter: 2.27ms, low: 2.61ms, high: 13.18ms)
 Packet Loss:     0.0%
  Result URL: https://www.speedtest.net/result/c/d3c9bebb-9e5d-4fa2-9b3c-fef8e2d55254
```

<!--
-
-->

---
layout: two-cols-header
---

# Exploring [`speedtest`](https://www.speedtest.net/apps/cli)

<PresenterTimer :minutes="4" :seconds="0" />

::left::

<v-clicks depth=2>

- Help menu
  - `speedtest --help`
- Basic speed test
  - `speedtest`
- Specify a server for testing
  - `speedtest -L`
  - `speedtest --server-id 3126`

</v-clicks>

::right::

<v-clicks depth=2>

- Get results in a machine-readable format
  - `speedtest -f json-pretty`
  - `speedtest -f csv --output-header`

</v-clicks>

<!--
-
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="1" :seconds="0" />

# In our Monitoring Platform

How can we use these tools in our monitoring platform?

::left::

<v-clicks depth=2>

- Often, monitoring tools will have [native]{.highlight} support for
  - Ping packet loss
  - Ping round trip time
  - TCP socket availability checks
  - Basic port scanning & discovery
- Sometimes you'll get support for more customized TCP checks (more on this later)

</v-clicks>

::right::

<v-clicks depth=2>

- [Rarely]{.highlight} do they natively support
  - Traceroute
  - Speedtest
- If needed, any of these CLI tools can be used in a [script-based check]{.highlight} if the platform allows

</v-clicks>

---
layout: center
---

<PresenterTimer :minutes="10" :seconds="0" />

# Zabbix Walkthrough

Ping packet loss, round trip time, and TCP socket availability

<!--
#TODO create data pipleine artifact (activity?...maybe just all together on this one)
-->

---
layout: default
---

<PresenterTimer :minutes="2" :seconds="0" />

# Key Takeaways

- The primary metrics used in network diagnostics are
  - [Reachability]{v-click .reveal} - The ability to connect to a network resource
  - [Packet Loss]{v-click .reveal} - Percentage of packets lost during transmission
  - [Latency]{v-click .reveal} - Time taken for data to travel from source to destination
  - [Jitter]{v-click .reveal} - Variation in latency over time
  - [Bandwidth]{v-click .reveal} - Maximum data transfer rate of a network
  - [Throughput]{v-click .reveal} - Amount of data transferred per unit of time
- Name a network CLI tool and tell me what it does:
  - [`ping`]{v-click .reveal}, [`fping`]{v-click .reveal}, [`traceroute`]{v-click .reveal}, [`mtr`]{v-click .reveal}, [`nmap`]{v-click .reveal}, and [`speedtest`]{v-click .reveal}

---
layout: center
---

<PresenterTimer :minutes="5" :seconds="0" />

# Questions?

<!--
-
-->
