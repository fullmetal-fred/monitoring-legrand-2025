---
layout: section
hideInToc: false
title: "Pipelines: Console Scripting"
---

<PresenterTimer :minutes="1" :seconds="0" />

Data Pipelines

# Console Scripting

The bread and butter of AV monitoring

<!--
>
Introduce the topic, explaining that this section will cover the standard types of TCP socket connections and their use in data pipelines.
-->

---

<PresenterTimer :minutes="2" :seconds="0" />

# Consoles

Most AV devices have one

<v-clicks>

- **Purpose**: To provide a user interface for [device control]{.highlight} and troubleshooting.
- **Potential**: Can be used to gather monitoring data and automate issue resolution.
- **Challenges**: Instability, security risks, and limited capabilities.
- **Protocols**: Telnet, SSH, and raw TCP connections.

</v-clicks>

---
layout: center
---

# If we can do it from a CLI / console, we can script it

---
layout: default
---

<PresenterTimer :minutes="2" :seconds="0" />

# Automating Console Sessions

- **Purpose**: To gather data from remote servers or devices.
- **Tools**: Scripting with Bash, Python (using libraries like Paramiko for SSH).
- **Process**: Automating login, command execution, and logout.
- **Benefits**: Reduces manual effort, improves efficiency, and enables monitoring from most systems.

---
layout: default
---

<PresenterTimer :minutes="2" :seconds="0" />

# Types of Consoles

- **Telnet**: Unencrypted text communication, uses port 23.
  - Clear text, no encryption.
  - Security teams hate it (for good reason).
  - Still used in some legacy systems.
- **SSH**: Encrypted session over a secure channel, uses port 22.
  - Secure, encrypted communication.
  - Standard for servers & network gear.
  - Requires authentication.
- **Raw TCP**: Direct socket connections without any standardized commands.
  - Used for custom protocols or proprietary systems.
  - Everywhere in AV
  - Fraught with challenges

<!--
>
Describe each type of TCP socket connection, highlighting differences in security and use cases.
-->

---

# Areas to Consider

- **Security**: Authentication, encryption, and vulnerabilities.
  - Authentication methods like passwords, public keys for SSH.
  - Plain-text (Telnet, raw TCP) vs encrypted communication (SSH)
- **Session Management**: Properly exiting sessions to avoid resource leaks.
- **Supportability**: Ensuring scripts are maintainable and scalable.
- **Error Handling**: Addressing potential issues with network connections.
- **Performance**: Optimizing scripts for efficiency and speed.

---
layout: two-cols-header
---

<PresenterTimer :minutes="2" :seconds="0" />

# Introducing [`netcat`](https://man.openbsd.org/nc.1/)

::left::

<v-clicks depth=2>

- What is `nc` (netcat)?
  - A versatile networking utility maintained by Nmap
  - Often uses the command `nc`
  - Not to be confused with `ncat` by nmap, which also uses `nc`

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - Supports TCP and UDP
  - Simple file transfer & network communications
- Use cases
  - Monitoring port availability
  - Sending and receiving data over network connections (more later)

</v-clicks>

<!--
-
-->

---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Example of [`nc`](https://man.openbsd.org/nc.1)

```shell {1|2}
fred@vivi:~$ nc -zv 192.168.1.1 80
Connection to 192.168.1.1 80 port [tcp/http] succeeded!
```

<!--
TODO show more ncat
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="3" :seconds="0" />

# Exploring [`ncat`](https://nmap.org/ncat/)

Let's try it out!

::left::

<v-clicks depth=2 >

- <LinkToConsole />
- Help menu
  - `nc --help`
- Check if UDP port is open
  - `nc -zuv 1.1.1.1 53`
- Check if TCP port is open
  - `nc -zv zabbix-zabbix-web.zabbix 80`
  - `nc -zv -w 1 zabbix-zabbix-web.zabbix 443`

</v-clicks>

::right::

<v-clicks depth=2 >

- Connect to a server
  - `nc display 1890`
  - `status`
  - `ctrl-c` to exit
- Run a command then exit
  - `echo "status" | nc -w1 display 1890`
- Run multiple commands
  - `for VARIABLE in 'status' 'input' 'status'; do echo $VARIABLE | nc -w1 display 1890; done`

</v-clicks>

<!--
- For each step, ask "How might we..."
-->

---
layout: two-cols-header
---

<PresenterTimer :minutes="2" :seconds="0" />

# Introducing [`expect`](https://man.openbsd.org/nc.1/)

::left::

<v-clicks depth=2>

- What is `expect`?
  - A scripting language for automating interactive applications
  - Often used for automating SSH sessions
  - Technically works with any interactive process

</v-clicks>

::right::

<v-clicks depth=2>

- Key features:
  - Automates interactive processes
  - Supports scripting with `expect` and `spawn`
- Use cases
  - Automating SSH sessions
  - Scripting with interactive CLI applications

</v-clicks>

---

<PresenterTimer :minutes="2" :seconds="0" />

# Example of an `expect` script

```bash
#!/usr/bin/expect -f
spawn nc display 1890
match_max 100000
expect -re {>$}
send -- "input\r"
expect -re {\s([\w\d]*)\n>$}
send -- "power\r"
expect -re {\s([\w\d]*)\n>$}
send -- "brightness\r"
expect -re {\s([\w\d]*)\n>$}
send \x03
expect eof
```

---

<PresenterTimer :minutes="20" :seconds="0" />

# Consoles: Collecting at the Command Line

- Automate console sessions with `nc` and `expect`.
- Make an interactive process run on demand.
- Bonus if we can also convert it to JSON.

---
layout: default
---

<PresenterTimer :minutes="15" :seconds="0" />

# Consoles: Collecting in Node-RED

- Supports consoles via native packages.
- Allows for easy integration of CLI data into Node-RED flows.
- Ideal for creating custom monitoring and automation middleware.

<!--
- Demo steps
  - Use TCP request node to connect to a device
  - Clean up response data
  - Parse with RegEx
-->

---

<PresenterTimer :minutes="15" :seconds="0" />

# Consoles: Collecting in Zabbix

- Supports consoles via native packages (ish)
- Allows for easy collection from Telnet and SSH server without middleware
- Far simpler than hosting custom middleware, but not perfect
- Can be extended with scripts

---

<PresenterTimer :minutes="2" :seconds="0" />

# Key Takeaways

- Consoles are a critical part of AV monitoring.
- Telnet, SSH, and raw TCP connections are the most common types.
- Security, session management, and supportability are key considerations.
- `netcat` & `expect` are versatile tools for automating console sessions.
- Node-RED and Zabbix support console data collection for monitoring and automation.

<!--
-
-->
