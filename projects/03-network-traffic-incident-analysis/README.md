# Project 03: Network Traffic Incident Analysis

**Status:** Complete  
**Maps to:** Google Cybersecurity Course 3 (Networks and Network Security)  
**Type:** Incident-style network traffic analysis

## Problem

Customers could not reach `yummyrecipesforme.com`. I needed to turn packet-level evidence into a clear incident narrative: what failed, why it failed, and what to do next.

## Approach

1. Reviewed DNS and ICMP traffic from a tcpdump-oriented capture
2. Separated client behavior from server/service failure
3. Wrote the findings in incident-report form (timeline, investigation steps, likely cause, next actions)

## Timeline

| Time | Observation |
|------|-------------|
| 13:24:32 | First DNS A-record query for `yummyrecipesforme.com` |
| 13:26:32 | Same query retried (same transaction ID `35084`) |
| 13:28:32 | Third retry |
| 13:28:50 | Last log entry; issue still unresolved |

## What the traffic showed

- **Client:** `192.51.100.15`
- **DNS server:** `203.0.113.2`
- **Protocol path:** UDP DNS query on port **53**, then ICMP **destination unreachable / port unreachable** (type 3, code 3)
- The same query was retried about every two minutes with the same transaction ID, which fits resolver retry behavior after no usable answer.

## Analysis

| Question | Finding |
|----------|---------|
| Client misconfigured? | No. Queries were well-formed A-record lookups to the expected DNS server. |
| Network path broken? | No. The host answered with ICMP, so packets were reaching `203.0.113.2`. |
| Actual failure? | Nothing was listening on UDP/53 (or the port was actively rejected). DNS service unavailable on that host. |
| Transient glitch? | Unlikely. Three identical failures across ~4 minutes. |

## Likely root cause

DNS service on `203.0.113.2` was down (crash, stop, or failed restart), or a firewall / security-group rule started rejecting inbound UDP/53. Either case matches the port-unreachable pattern.

## Recommended next steps

1. Log into the DNS host and check whether the DNS process (for example `named` / BIND) is running
2. Review service logs around 13:24 for a stop or crash
3. Check firewall / security group rules for UDP/53
4. Restart the service if needed and confirm it is listening on port 53
5. Re-test with a follow-up capture or DNS query

## Evidence

Files in [`evidence/`](evidence/):

| File | Role |
|------|------|
| `Module 3 TCPDUMP INCIDENT REPORT.docx` | Detailed tcpdump incident write-up |
| `Cybersecurity-incident-report-network-traffic-analysis.pdf` | Formal incident report |

## Skills

Network fundamentals · DNS/ICMP interpretation · tcpdump workflow · incident timeline writing · root-cause reasoning
