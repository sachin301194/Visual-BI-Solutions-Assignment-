# Visual-BI-Solutions-Assignment-
Graduate BI &amp; Analytics Intern (Fall 2020) - Azure DevOps and System Admin - Visual BI Solutions Inc

Question 2 : Soultion 

This looks like an active-active DR strategy. The LB1 & LB2 could be registered on a VIP which redirects traffic based on the strategy set like round-robin. The benefit of this architecture is that even if one of the LB goes down, the traffic will be routed to the other LB. This is mostly taken care of by the VIP.
To rollout update to this architecture without any downtime, we may have to deregister one of the LB from the VIP while the other one is serving traffic, perform the upgrade and register it back again. Similarly, deregister the second one and perform the upgrade and register it back again.

Better approach-

A better approach will be to use Kubernetes in this scenario.
Current architecture has only one instance of the service, instead we can have multiple instances of the service created via deployment object. Expose it as a service, and create a ingress object. Since services too load-balance between the available pods hence the problem of availability will be solved. Also, the ingress can be registered in the VIP. The biggest problem that this approach will solve is the rolling upgrade of the service and a Highly available infrastructure.
