# Project 02: Botium Toys Risk & Compliance Assessment

**Status:** Complete  
**Maps to:** Google Cybersecurity Course 2 (Manage Security Risks)  
**Type:** Risk assessment and controls / compliance case study

## Problem

Botium Toys (course scenario) needed a clear audit scope, risk assessment, and controls/compliance checklist so security work could be prioritized instead of handled ad hoc.

## Approach

I completed:

1. Scope, goals, and risk assessment report
2. Control categories and control strategies notes
3. Controls and compliance checklist with recommendations

## Scope and goals

- **Scope:** the full security program at Botium Toys (assets, internal processes, controls, compliance practices).
- **Goals:** assess existing assets and finish the controls/compliance checklist to show what still needs to be implemented.

### Assets I reviewed (IT-managed)

- On-prem equipment and employee end-user devices
- Storefront / warehouse retail inventory systems
- Accounting, telecom, database, security, ecommerce, and inventory systems
- Internet access, internal network, data retention/storage
- Legacy systems that need human monitoring

## Risk assessment summary

| Item | Assessment |
|------|------------|
| Core risk | Inadequate asset management; missing controls; incomplete compliance with U.S. and international expectations |
| NIST CSF focus | Identify: inventory and classify assets, then understand impact of loss on continuity |
| Risk score | **8 / 10** (high), driven by missing controls and weak compliance adherence |
| Impact note | Potential impact of asset loss rated medium because IT did not yet know which assets were most at risk |

## Controls assessment (high level)

| Present | Missing / weak |
|---------|----------------|
| Firewall | Least privilege |
| Antivirus | Disaster recovery plans |
| Locks (offices, storefront, warehouse) | Strong password policies |
| CCTV | Separation of duties |
| Fire detection / prevention | IDS |
| | Backups |
| | Encryption |
| | Password management system |
| | Formal legacy-system monitoring schedule |

## Compliance gaps (summary)

| Framework | Gaps I flagged |
|-----------|----------------|
| **PCI DSS** | Broad internal access to card data; insecure handling/storage/transmission; no encryption procedures; weak password management |
| **GDPR** | EU customer data not adequately secured; data not properly classified/inventoried (72-hour breach notification plan and some privacy documentation were noted as present) |
| **SOC** | Missing user access policies and confidentiality controls for PII/SPII (integrity and availability practices were stronger) |

## Recommendations I prioritized

1. **Least privilege + separation of duties** (critical)
2. **Encrypt cardholder data and PII** (critical)
3. **Disaster recovery + backups** (high)
4. **Deploy IDS** alongside the existing firewall (high)
5. **Stronger password policy + password manager** (high)
6. **Formal legacy system monitoring schedule** (medium)

## Evidence

Original documents are in [`evidence/`](evidence/):

| File | Role |
|------|------|
| `Botium-Toys-Scope-goals-and-risk-assessment-report.docx` | Scope + risk assessment |
| `Botium-Toys-Controls-Compliance-Checklist-COMPLETED.docx` | Completed checklist + recommendations |
| `Control Strategies.docx` | Control strategy notes |
| `Control-categories.docx` | Control category notes |
| `Controls-and-compliance-checklist.docx` | Working checklist copy |

## Skills

Risk assessment · scope definition · security controls · PCI DSS / GDPR / SOC awareness · compliance checklisting · stakeholder recommendations
