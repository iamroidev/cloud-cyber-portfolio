# Paper review: Zero Trust in Sub-Saharan Africa

**Paper:** Mutabazi, P., Ndalama, F. E., Taenaka, Y., & Kadobayashi, Y. (2025). *The Unique Challenges of Zero Trust in Sub-Saharan Africa: Survey Insights and Research Directions.* TechRxiv.  
DOI: [10.36227/techrxiv.176617696.66291663/v1](https://doi.org/10.36227/techrxiv.176617696.66291663/v1)

**Reviewed by:** Richard Kwaku Opoku  
**Focus areas:** cloud security, identity, regional cybersecurity readiness

---

## Why I read this

I am focusing on cloud and cybersecurity. A lot of Zero Trust material assumes mature vendor ecosystems and deep specialist teams. This paper looks at Sub-Saharan Africa specifically, including West African contexts, so it sits closer to the environment I am training and working in.

---

## Problem the authors pose

Perimeter security is a weak fit for cloud, mobile, and IoT. Zero Trust (“never trust, always verify”) is the common answer in mature markets, but SSA faces different constraints: budgets, skills shortages, fragmented infrastructure, and uneven regulation. The authors argue that global ZT playbooks need region-aware evidence, not copy-paste adoption.

---

## Method

Two-stage survey design:

1. Exploratory survey (**n = 33**) across telecom, banking, healthcare, academia, and IT, spanning multiple SSA countries (including Ghana and Nigeria in the West Africa group).
2. Expert validation follow-up (**n = 15**) to rank barriers and dig into skills, vendors, training, and open-source options.

They interpret results with **Institutional Theory** (policy / norms / knowledge gaps) and **Porter’s Diamond** (skills, demand, supporting industries). They also present a **ZT IAM research prototype** (not a production product) built around SIM/KYC identity binding, MFA, and contextual trust scoring.

---

## Three findings that matter to me

### 1. Awareness is ahead of capability

Many respondents had heard of Zero Trust. Far fewer had deep working knowledge or full deployments. Most activity looked like pilots or partial work. That matches what I see in learning paths too: the vocabulary spreads faster than the operating skill.

### 2. The dominant blockers are skills, cost, and weak local vendors

Across both survey stages, the top inhibitors were:

- lack of local ZT expertise
- perceived cost and complexity
- shortage of trusted local providers (so teams lean on expensive international vendors)

For me, this reinforces why hands-on projects matter. Certificates help, but the region’s bottleneck is applied capability.

### 3. SSA also has enablers if ZT is adapted, not imported blindly

The authors highlight telecom SIM registration / KYC, mobile-money operating experience, and the need to design for constrained or intermittent connectivity. Their prototype idea is practical: bind identity more strongly, require MFA enrollment, then invoke stronger checks when contextual risk rises (new device, unusual network, odd time, etc.).

---

## What I agree with

- Treating ZT as socio-technical, not only a product purchase.
- Ranking skills and vendor ecosystems as first-class risks.
- Using adaptive MFA instead of “MFA always” vs “MFA optional” as the only choices.
- Keeping the prototype framed as a research artifact. That honesty matters.

## What I question / would push further

- Sample sizes are modest (**33 / 15**). The authors are careful to call these tendencies, which is right, but I would not treat the percentages as national statistics.
- Ghana appears in the country list, but the write-up does not give Ghana-specific breakdowns I can use for local policy claims.
- Production threats like SIM-swap abuse are acknowledged as future work. That is exactly where regional ZT identity designs will get stress-tested.

---

## How this connects to my work

| Theme in the paper | What I am doing |
|--------------------|-----------------|
| Skills gap | Building case studies in this repo instead of stopping at course videos |
| Identity and continuous verification | Project 01 playbook + auth log analysis (detect unusual login behavior) |
| Controls and compliance pressure | Project 02 Botium Toys risk / PCI-oriented gap analysis |
| Network failure investigation | Project 03 DNS/ICMP incident analysis |
| Cloud + regional infrastructure reality | AWS CCP background + interest in secure cloud operations in Ghana |

Zero Trust is not “buy a tool.” It is inventory, least privilege, monitoring, and response habits. That is the same muscle I am training in projects 01–03.

---

## My LinkedIn summary

I reviewed a TechRxiv paper on Zero Trust adoption in Sub-Saharan Africa. The core point for me: awareness is rising, but skills, cost, and weak local vendor ecosystems still block real deployments.

What I took into my own work:

- treat identity and continuous verification as practical habits, not buzzwords
- keep building applied projects (risk assessment, log analysis, incident write-ups)
- adapt security designs to local constraints instead of copying mature-market playbooks wholesale

Paper: https://doi.org/10.36227/techrxiv.176617696.66291663/v1  
My project notes: this repository

---

## Status

Complete.
