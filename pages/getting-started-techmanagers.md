---
layout: section
hideInToc: false
---

# Getting started

<!--
Section outline:
- Assemble the team
- Set clear goals
- Design observable systems
- Choose a platform
- Start small & iterate
-->

---

<PresenterTimer :minutes="1" :seconds="0" />

# Where do we go from here

Getting started

<v-clicks>

1. Set clear goals
1. Assemble the team 
1. Choose a platform
1. Start small & iterate

</v-clicks>

<!--
- [click] So where do we go from here the first step as always to get the right people to the table. Monitoring is a team sport, and you need to make sure that you have the right people in place to make it work.
- [click] Next, you need to set clear goals. What are you trying to achieve with monitoring? What does success look like? How will you know when you've achieved it?
- [click] Next you need to choose a platform. There are many monitoring platforms out there, and you need to choose the one that's right for you.
- [click] Once you've chosen a platform, you need to start small. Don't try to monitor everything at once. Start with a small, manageable project, and build from there.  Monitoring is an ongoing process, and you need to be constantly refining and improving your monitoring strategy.
-->


---
layout: default
---

<PresenterTimer :minutes="1" :seconds="0" />

# Set clear goals

Getting started

<v-clicks>

- Goals show us the path to [success]{.highlight} in our monitoring journey
- They set the [scope]{.highlight} of our monitoring initiative
- Be [SMART]{.highlight}
  - Specific, Measurable, Achievable, Relevant, Time-bound
- One person should ultimately be [responsible]{.highlight} for each goal
- Keep it [simple]{.highlight}

</v-clicks>

<!--
- Setting clear goals is crucial for the success of your monitoring initiative.
- [click] Goals show us the path to success. They help us understand what we are trying to achieve and how we will measure success.
- [click] Goals set the scope of our monitoring initiative. They help us define what we will monitor and what we will not monitor.
- [click] Be SMART. Goals should be Specific, Measurable, Achievable, Relevant, and Time-bound. This ensures that they are clear and actionable.
- [click] One person should ultimately be responsible for each goal. This ensures accountability and helps to drive progress.
- [click] Keep it simple. Don't overcomplicate your goals. Focus on what is most important and achievable.
-->

---

<PresenterTimer :minutes="3" :seconds="0" />

# Good goal / bad goal

Getting started - Set clear goals

<v-clicks depth="2">

- "Solve user issues faster"
  - "Reduce monthly mean time to resolution (MTTR) on room issues by 10% YoY"
- "Resolve 80% of issues proactively"
  - "Implement a new KPI for "% of self-reported incidents" and establish a baseline during 2024"
- "Reduce cost of vendor support by 20%"
  - "Reduce cost of vendor support by 20% YoY"

</v-clicks>

<!--
- The point here is that if you want to achieve something, you need to be able to measure it. If you can't measure it, you can't manage it. So don't set crappy, vague, unmeasurable goals. Set good, specific, measurable goals that you can track over time.
- And make sure the goals are realistic. Don't set a goal that you can't achieve. You'll just end up demoralizing your team and wasting time.
- So we know what we're trying to achieve, and we know how we're going to measure it. Now let's get the right people on the bus.
-->


---

<PresenterTimer :minutes="3" :seconds="0" />

# Assemble the team

Getting started

<v-clicks>

- AV technology leadership
- AV operations team
- AV engineering (design, programming)
- IT partners
- Facilities management
- End users
- Stakeholders

</v-clicks>

<!--
- Monitoring is a team effort, and you need to ensure that you have the right people in place to make it work.
- You need to secure buy-in from all levels of the organization, from leadership to end users.
- [click] AV technology leadership. If you're implementing a monitoring solution, then your AV technology leadership should own this initiative. Their leadership and ownership will be critical. Any monitoring-related KPIs, implementation status, etc., will all be managed by them or by someone they designate on their team. They have ultimate responsibility for delivering this successfully. If they're not on board, you're going to have a hard time getting this off the ground.
- [click] AV operations team. Your AV operations team will be the ones who are actually using the monitoring tools. They need to be on board with the initiative, have a significant role in defining the requirements, and need to be trained on how to use the tools effectively. They also need to be able to provide feedback on the tools and help to refine and improve them over time.
- [click] Engineering. Your design engineers will be designing systems every day, and their decisions will determine how easy or difficult it is to monitor those systems. They need to be on board with the monitoring initiative and need to be designing systems with monitoring in mind, or the whole thing can fall apart. Your programmers will be responsible for surfacing application-level metrics and events, so they need to be involved in the monitoring initiative as well. They'll also likely have the most insight into how to integrate the monitoring platform with your existing systems.
- [click] IT partners. Your IT partners will likely own the core administrative functions (user management, licensing, hosting) for the monitoring platform, so get their input and keep them involved. Often IT leadership has the final say on software application use, so don't neglect to involve them. You'll need to work out many details, like how to integrate the monitoring platform with your existing systems, how to manage user accounts, how to handle licensing, and how to host the monitoring platform. You'll also need to work out how to handle data privacy and security, and how to ensure that the monitoring platform is compliant with any relevant regulations. Finally, you'll need to ensure an IT support process is in place for the monitoring platform, so that any issues can be resolved quickly and efficiently. Start this early, as it can take a long time to work out all the details.
- [click] Facilities management. Facilities management will be responsible for the physical infrastructure that supports your AV systems. They need to be involved to ensure that the monitoring solution integrates well with the existing infrastructure and that any physical requirements are met.
- [click] End users. Your end users are the ultimate stakeholders in the monitoring solution, so you need to make sure you understand what they need. You need to be able to explain the value proposition of the monitoring solution to them and show them how it will benefit their daily operations. Finally, you need to deliver the monitoring solution in a way that meets their needs and expectations. Involve a few end users as beta testers and incorporate their feedback to improve the solution.
- [click] Stakeholders. Ensure that all relevant stakeholders are kept informed and involved throughout the process. This includes department heads, project managers, and any other key personnel who have a vested interest in the success of the monitoring solution. Their support and input will be crucial for a successful implementation.
-->



---
layout: two-cols-header
---

<PresenterTimer :minutes="2" :seconds="0" />

# Skills needed on staff

Getting started - Assemble the team

::left::

<v-clicks>

- **System administration**
  - User mgmt, IDP, servers, Linux, databases, backups, updates, cloud, containerization, monitoring, tuning
- **Network engineering**
  - Routing, firewalls
- **Security**
  - Encryption, authz/authn, RBAC, compliance
- **AV engineering**
  - AV device APIs, control systems, signal flow, AV-over-IP, DSP, video conferencing

</v-clicks>

::right::

<v-clicks>

- **Software development & scripting**
  - AV device APIs, JavaScript, Python, Linux, Bash, PowerShell, RESTful APIs, GraphQL, Web automation
- **Data analysis**
  - Data transformation, visualization, insights
- **Project management**
  - Coordination, communication, issue resolution, planning, budgeting

</v-clicks>

<!--
- To successfully run a monitoring implementation, you'll need a variety of skills on your team.
- [click] System administration. User management, IDP, servers, Linux, databases, backups, updates, cloud, containerization, monitoring, tuning.
- [click] Network engineering. Routing, firewalls.
- [click] Security. Encryption, authz/authn, RBAC, compliance.
- [click] AV engineering. AV device APIs, control systems, signal flow, AV-over-IP, DSP, video conferencing.
- [click] Software development & scripting. AV device APIs, JavaScript, Python, Linux, Bash, PowerShell, RESTful APIs, GraphQL, Web automation.
- [click] Data analysis. Data transformation, visualization, insights.
- [click] Project management. Coordination, communication, issue resolution, planning, budgeting.
-->


---

<PresenterTimer :minutes="2" :seconds="0" />

# Assess skills on staff

Getting started - Assemble the team

<v-clicks>

- Evaluate if your team has the necessary [skills]{.highlight} to solve the problems you're likely to face
- Consider [hiring]{.highlight} dedicated talent with the required expertise
- Leverage an implementation [partner]{.highlight} for specialized knowledge
- Invest in growing the skills of existing team members through education and training ([upskilling]{.highlight})

</v-clicks>

<!--
- [click] Assess the skills of your current team. Do they have the necessary expertise to solve the problems you're likely to face? If not, you may need to bring in additional resources.
- [click] Hiring dedicated talent. If your team lacks certain skills, consider hiring dedicated talent with the required expertise. This can help ensure that you have the right people in place to make your monitoring initiative successful.
- [click] Leveraging an implementation partner. An implementation partner can provide specialized knowledge and experience that your team may lack. They can help you get up and running quickly and ensure that your monitoring solution is implemented correctly.
- [click] Growing skills of existing team members. Invest in the education and training of your existing team members. This can help them develop the skills they need to support your monitoring initiative and ensure its long-term success.
-->


---

<PresenterTimer :minutes="3" :seconds="0" />

# Choose a platform

Getting started

<v-clicks>

- Align monitoring requirements with your goals
- Balance sophistication vs simplicity of tools
- Consider total cost of ownership
- Research IT monitoring solutions
- Self-hosted vs SaaS platforms
- Security and compliance requirements
- Run a proof of value / pilot
- Be ready to pivot if needed

</v-clicks>

<!--
- Now that you have clearly defined objectives, it's time to choose a platform. There are many monitoring platforms out there, and you need to choose the one that's right for you.
- [click] First, align your requirements with your goals. If your goal is to reduce MTTR on room issues, then you need a platform that enables faster problem resolution. If you want to reduce vendor support costs, choose a platform that empowers remote troubleshooting.
- [click] Consider the balance between sophisticated features and simplicity. Some platforms offer advanced capabilities while others focus on core functionality. You may need to hire or upskill staff to use more sophisticated tools, or outsource to a managed service provider. A lower cost solution, while easier to get started with, could limit your ability to scale & mature. 
- [click] Evaluate the total cost of ownership, including implementation, training, maintenance, and scaling costs.
- [click] Look beyond AV-specific solutions. The IT world has mature monitoring platforms that might suit your needs.
- [click] Decide between self-hosted and SaaS options. Self-hosted platforms offer more control but require internal expertise. SaaS solutions provide easier management but may offer less customization.
- [click] Ensure the platform meets your security and compliance requirements, including certifications like SOC2 Type 2 and ISO 27001.
- [click] Start with a proof of value pilot to validate the platform's capabilities.
- [click] Be prepared to change platforms if your initial choice doesn't meet your needs. It's better to pivot early than stick with an unsuitable solution.
-->

---

<PresenterTimer :minutes="2" :seconds="0" />

# Pointing in the right direction

Getting started - Choose a platform

## [Not an endorsement of any specific platform]{color=red}

<v-clicks>

- General purpose/network monitoring platforms
  - Nagios, Zabbix, SolarWinds, PRTG, LogicMonitor, Domotz, Auvik, ScienceLogic
- AV-specific monitoring platforms
  - Innomate, Uteology, RoomSense, etc.
  - Blurry line between AV monitoring & CDMP, do your homework
- Application performance monitoring
  - New Relic, Datadog, AppDynamics, Dynatrace, Splunk, Elastic, Prometheus

</v-clicks>

<!--
- Note this is not an endorsement of any specific platform. You need to evaluate each platform based on your specific requirements. During Q&A I'm happy to discuss what I use, and if we have time I may walk through a short demo, but this is not a sales pitch.
- [click] Here are some general purpose monitoring platforms that you might consider. These platforms are designed to monitor a wide range of systems and applications, and can be customized to meet your specific needs. Some of the most popular general purpose monitoring platforms include Nagios, Zabbix, SolarWinds, PRTG, LogicMonitor, Auvik, ScienceLogic, and Domotz.
- [click] There are also AV-specific monitoring platforms that you might consider. These platforms are designed specifically for monitoring AV systems and can provide detailed insights into the performance of your AV infrastructure. Some of the most popular AV-specific monitoring platforms include Uteology, Innomate, OvrC, RoomSense, and Symphony. Beware of anything with a hardware manufacturer's name on it (CDMP).
- [click] Finally, there are application performance monitoring platforms that you might consider. These platforms are designed to monitor the performance of applications and can provide detailed insights into how your applications are performing. Some of the most popular application performance monitoring platforms include New Relic, Datadog, AppDynamics, Dynatrace, Splunk, Elastic, and Prometheus.
-->


---

<PresenterTimer :minutes="1" :seconds="0" />

# Start small & iterate

Getting started

<v-clicks>

- Pilot your platform with a small handful of [standard]{.highlight} systems
- Gather structured [feedback]{.highlight}, review regularly
- Recognize that you will need to [iterate]{.highlight}
- Set a date to proceed to production and [stick]{.highlight} to it
- Be realistic about the [timeline]{.highlight}
- Don't be afraid to fail along the way, it's a [guarantee]{.highlight}


</v-clicks>

<!--
- The key is to start small and not try to boil the ocean.
- [click] Pilot with standard systems. Don't try to monitor everything at once. Start with a small, manageable project, and build from there. Monitor a handful of standard systems, and see how the platform performs. Make sure that it's going to meet your needs before you
- [click] Get structured feedback. Try Keep Start Stop session. What's working, what's not, what's missing, what's confusing, what's frustrating. Make sure these sessions happen and the service offer manager is present and incorporating feedback. 
- [click] Recognize that you will need to iterate. Your first version of the offer will not be perfect. You will need to refine and improve it over time. Make sure that you have a process in place for collecting feedback, and that you are constantly refining and improving your offer.
- [click] Set a date to proceed to production and stick to it. Don't let the project drag on indefinitely. Set a deadline, and make sure that you meet it. This will help you to stay focused and ensure that you are making progress.
- [click] Don't be afraid to fail. You will fail. It's a guarantee. But that's ok. Failure is a part of the process. Learn from your failures, and use them to improve your offer.
-->

---

<PresenterTimer :minutes="1" :seconds="0" />

# Review: Getting Started

Getting started

1. Assemble the team (assess skills, upskill, hire, partner)
1. Set clear goals (SMART, simple, responsible)
1. Choose a platform (align requirements, TCO, research, PoV)
1. Start small & iterate (pilot, feedback, iterate, timeline)

<!--
- So that's how you get started with monitoring.
- Bring the right people together, set clear goals, define your offer, choose a platform, and start small and iterate.
- Following these steps will give you a good foundation for success, and help you to build a monitoring offer that delights your customers and grows your business.
- [click]
-->
