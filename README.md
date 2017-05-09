# LTL Shipping Calculator

### Link
http://shipping-calculator.herokuapp.com/

### Context
When I was a logistics intern, one of my responsibilities was to track the on-time performance of our various LTL carriers. We did this using Excel, and it was a very manual process. During my analysis, I realized that we naively recommended carriers based on a single variable (estimated transit time). However, there were was more than one variable that could significantly impact on-time delivery. The variables are:
* estimated transit time
* carrier appointment windows at the destination
* holidays

### Solution
1. Identify the pickup location.
2. Identify the delivery location.
3. Identify which carriers can pick up from that origin and deliver to that destination.
4. Add the quoted transit times from those carriers to the pickup date.
5. Calculate the earliest estimated delivery date for each carrier.
6. For each calculated date, check to see if the destination is open (no holidays) AND that the carrier has a standing appointment window on that day.
7. If a carrier is able to deliver on the earliest estimated delivery date, then recommend that carrier. If no carrier can deliver on the earliest estimated delivery date, rerun the analysis on the following day.
8. Repeat until you identify a carrier that satisfies all of the aforementioned constraints.
9. That is the recommended carrier.

### Database Table Structure
* Origin - Information about the manufacturing facility
* Destination - Information about the retailer
* Carrier - Information about the carrier
* Transit Time - The quoted number of days it takes for a specific carrier to pick up from a specific origin and deliver to a specific destination
* Holiday - The holidays when a specific destination will be closed
* Destination Appointment Windows - The carriers that can deliver to a specific destination during a specific window (for example, UPS can only deliver to store #101 on Monday/Wednesday/Friday, but FedEx can only deliver to store #101 on Tuesday/Thursday)

### Technology
Ruby on Rails
