# PRIORITY-DINE

<!-- First Section -->
## Team Details
<details>
  <summary>Meet the team</summary>

  - Semester: 3rd Sem B. Tech. CSE

  - Section: S2

  - Member-1: Mithun Patil V N , 231CS234 , mithunpatilvn.231cs234@nitk.edu.in 

  - Member-2: Pranav Venkat Y K , 231CS242 , pranavvenkatyk.231cs242@nitk.edu.in

  - Member-3: Yashwanth R , 231CS265 , yashwanthr.231cs265@nitk.edu.in
</details>

<!-- Second Section -->
## Abstract
<details>
  <summary>Key Takeaways</summary>
  
  1. **Motivation**:
  The inspiration for this project came from observing a gap in our campus food court services. Due to time constraints between classes, students often struggle with long wait timesfor their orders. While the food court was willing to offer a priority service for an additionalfee, there was no effective channel to facilitate this option. This project aims to bridge that gapby providing a platform where students can pay extra to receive their orders faster, enhancing
convenience and efficiency for both customers and the food court.

2. **Problem Statement**:
Priority Dine was created to solve this problem. It lets customers choose the order in
which their food is served—whether they want their drink first, their starter, or the main
course right away. This makes the dining experience more enjoyable for customers because
they can get their meal the way they prefer.
For hotel and restaurant owners, Priority Dine is also useful because it keeps track of all the
orders for the day. This helps owners know how much food is being ordered and can assist in
managing staff and supplies more efficiently. Overall, Priority Dine makes dining more flexible
for customers and more organized for businesses.

3. **Features**:
Priority Dine is a special service that helps people enjoy their food just the way they want.
We have three choices:
    1. **Priority Service**: If you want your food really fast, you can pay a little extra, and
it will come to you sooner.
    2. **Standard Service**: This is the regular way. You pay the normal price, and your food
comes when it usually does.
    3. **Discounted Service**: If your food takes too long, you get some money taken off your bill.

This way, everyone can choose how they want their food. It makes eating out more fun
and helps restaurants serve their customers better. Priority Dine helps make sure everyone is
happy when they eat!
    

</details>

<!--Third Section-->
## Block Diagram
<details>
  <summary>Click To See</summary>
  
  ![S2-T14](https://github.com/Mithun-144/S2-T14/blob/65d086898b42422ce58c8c3a66e49b8f8ace7ffe/Snapshots/S2-T14.drawio.png)
</details>

## Working
<details>
  <summary>Flow chart of working</summary>
  
  ![Flow Chart](https://github.com/Mithun-144/S2-T14/blob/15761d4b806e93c2fe83d70f696f7c4df7943578/Snapshots/working.drawio%20(1).png)
</details>

<details>
  <summary>Description Of Working</summary>

- *Menu Sections (Starters, Main Course, Dessert)*:

The menu is divided into these three categories. The items from these categories can be ordered.


- *Availability Check (Down Counter)*:

For each item ordered from a specific section, a down counter checks its availability.

This is represented by LED:

Light On: Item is available.

Light Off: Item is not available.

- *Order Priority Input*:

The system takes input for order priority, determining which section (Starters, Main Course, or
Dessert) should be served first.
This process involves a comparator, which compares the input priorities to decide the order in which
the items should be prepared and served.

- *Service Type Input (Normal/Priority)*:

The customer can select between two types of services:
- Normal Service
- Priority Service

- *Cost Calculation*:

The cost is calculated based on the items ordered and the type of service selected.

- *Estimated Time Display*:

Once the service type and order details are entered, the system calculates and displays the estimated time required to prepare the order.

An Order Ready Alarm is activated once the order is completed within the estimated time.
Priority Service:

- *For priority service*:

An additional Priority Fee (12.5 percent of the total cost) is applied.
The estimated time for the order is reduced.

- *If the time to serve exceeds the reduced time*:

A portion of the money (50percent of the cost) is returned to the customer.
The Order Ready Alarm is activated to indicate when the order is ready.

- *Timer and Comparator Logic*:

A timer and comparator are used to track the time taken to prepare the order.
If the preparation time exceeds the estimated or reduced time, the system triggers actions like money
return for priority customers.

A Up Counter is used to keep track total orders of the day.
</details>

<details>
  <summary>Truth Table</summary>
</details>

<!--Fourth Section-->
## Logisim Circuit Diagram
<details>
  <summary>Details</summary>
  
</details>


<!--Fifth Section-->
## Verilog
<details>
  <summary>Details</summary>
  
</details>

<!--Sixth Section-->
## References
<details>
 <summary>Click To See</summary> 
  
  1. M. Morris Mano, Digital Logic and Computer Design.
  2. Neso Academy Youtube Channel. <url>https://www.youtube.com/@nesoacademy</url> 
</details>


