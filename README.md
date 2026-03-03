\# Goldmine 3-Tier AWS Architecture



\## Project Overview

Built a production-style 3-tier web architecture on AWS with:

\- VPC, public/private subnets

\- Launch Template + Auto Scaling Group

\- Application Load Balancer

\- EC2 web servers

\- Private RDS MySQL database



Purpose: Demonstrate high availability, scalability, and secure network design.



---



\## Architecture Diagram

\*(Insert draw.io or Lucidchart diagram here)\*



---



\## Networking Design

\- VPC: 10.0.0.0/16

\- Public Subnets: 10.0.1.0/24, 10.0.2.0/24

\- Private Subnet: 10.0.3.0/24

\- Internet Gateway attached for public subnets

\- Route tables properly assigned



---



\## Security Design

\- ALB security group: allows HTTP from 0.0.0.0/0

\- Web SG: HTTP from ALB SG, SSH from my IP

\- DB SG: MySQL from web SG only



---



\## Deployment Steps

1\. Create VPC, subnets, route tables, Internet Gateway

2\. Create security groups: alb-sg, web-sg, db-sg

3\. Create Launch Template for EC2

4\. Create Target Group (goldmine-tg)

5\. Create ALB and attach to target group

6\. Create Auto Scaling Group

7\. Launch RDS in private subnet



---



\## Testing

\- ALB DNS shows "Hello from EC2 hostname" on refresh

\- Auto Scaling adds/removes instances automatically

\- Web servers can connect to private RDS (tested via MySQL client)



---



\## Lessons Learned

\- Importance of public vs private subnets

\- Security group design for DMZ

\- Auto Scaling + Launch Template for HA

\- How ALB distributes traffic

\- Real-world cloud networking



