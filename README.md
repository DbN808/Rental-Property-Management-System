## Rental Property Management System

**This Rental Property Management System is a comprehensive database solution implemented entirely in Oracle SQL. It's designed to efficiently manage rental properties, tenants, property managers, and owners, all supervised by the dba(SU or Super User in our case).**

**Key Features include:**
- Rent and Ownership tracking,
- Tenant tracking,
- Regular updates for available properties,
- Multi-feature Property records,
- Utilizes Stored Procedures for management operations,
- Simplified Display structure for better data understanding.

---

**There are 4 types of users in this system:**
+ Super User - Complete Access to every feature, property, and other users in the system.
+ Manager - Complete access to only the properties they manage(own or rent).
+ Owner - Complete access to only the properties they own(rented out or available in the market).
+ Tenant - Access to only the properties they have rented.

#### Every Property has multiple features like number of floors, total area, carpet area, address, rent hike %, property type, etc that help the managers maintain their property efficiently and let the new Tenants search for the properties best suited for them using the stored procedures.

---

**The Stored procedures are used to:**
- Track the property records for a specific user,
- Get the Tenant details for a rental property,
- Search properties available for rent in a city,
- Get the rent history for a property,
- Insert a Property Record,
Create new Users.
