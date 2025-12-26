# EKS Ingress, ExternalDNS & cert-manager

## Overview
This project demonstrates how to securely expose a Kubernetes application running on **Amazon EKS** using:

- **NGINX Ingress Controller** for HTTP/HTTPS routing
- **ExternalDNS** for automated Route53 DNS management
- **cert-manager** for automated TLS certificates via Let’s Encrypt

The goal is to simulate a production-style Kubernetes ingress setup with **zero manual DNS or certificate handling**.

---

## Problem Statement
In real-world Kubernetes environments, applications must be:
- Exposed securely over HTTPS
- Reachable via stable domain names
- Managed without manual DNS or certificate updates

This project addresses these challenges by implementing a fully automated ingress, DNS, and TLS workflow on Amazon EKS.

---

## Project Scope
**Included:**
- Kubernetes Deployments, Services, and Ingress
- Automated DNS record creation in Route53
- Automated TLS certificate provisioning and renewal
- Namespace-based workload isolation
- Validation and cleanup workflows

**Excluded:**
- Application-level authentication
- Production autoscaling
- Cost optimization

---

## Architecture (High Level)
Client  
→ DNS (Route53 via ExternalDNS)  
→ NGINX Ingress Controller  
→ Kubernetes Service  
→ Application Pod  

TLS certificates are automatically issued and managed by **cert-manager** using **Let’s Encrypt**.

---

## Project Phases
- **Phase 0:** Project setup & scope definition ✅
- **Phase 1:** EKS access & namespace isolation
- **Phase 2:** Application deployment
- **Phase 3:** Service exposure
- **Phase 4:** Ingress routing (HTTP)
- **Phase 5:** Automated DNS with ExternalDNS
- **Phase 6:** HTTPS & TLS with cert-manager
- **Phase 7:** Validation, cleanup & lessons learned

---

## Prerequisites
- AWS account with access to an existing EKS cluster
- kubectl configured locally
- Basic understanding of Kubernetes concepts

---