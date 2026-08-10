# Network / trust boundaries (lab)

```text
[ Internet / untrusted ]
          |
          v
   host firewall (default deny)
          |
          v
   lab-web-01 (A-001)
     - SSH / login service
     - writes auth events (A-002)
          |
          v
   analyst workstation (A-003)
     - SQL review
     - playbook / reporting
```

## Trust notes

- Anything outside the lab host is untrusted until verified by auth success and expected source IPs.
- Auth logs are the detective control between the login service and my response playbook.
- If I move this to AWS later, the host firewall maps to security groups, and CloudTrail / VPC flow logs become additional evidence sources.
