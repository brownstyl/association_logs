# Database Design

> No SQL implementation goes into this document until the design is approved.

---

# Database Principles

Every table should follow:

- One purpose
- One primary key
- Atomic values
- Clear relationships

---

# Planned Core Entities

These are not tables yet.

They are concepts.

- Users
- Associations
- Memberships
- Meetings
- Attendance
- Meeting Minutes

---

# Relationship Thinking

Current architecture:

User
↓
Membership
↓
Association

Future additions:

- Contributions
- Payments
- Requests
- Notifications

---

# Design Rules

Before creating any table, answer:

- Who owns this data?
- Can one record have many related records?
- What happens if it's deleted?
- Should another table reference it?

---

# Additional...
# Entity Ownership

> Every entity must have a clear owner before we create its SQL table.

| Entity | Purpose | Owner |
|--------|---------|-------|
| User | Represents a person using MeetingRecord. | The Person |
| Membership | Connects a user to an association. | User + Association |
| Association | Represents an organization using the system. | Creator (Admin) |
| Meeting | Represents a scheduled meeting. | Association |
| Attendance | Records who attended a meeting. | Meeting |
| Minutes | Stores what happened during a meeting. | Meeting |

---

## Why Ownership Matters

Ownership helps us answer important engineering questions later, such as:

- Which table should reference another table?
- What happens if an association is deleted?
- Who has permission to modify a record?
- How do we prevent one association from seeing another association's data?


## Entity Design — User

### Responsibility

Represents the permanent identity of a person using MeetingRecord.

A User can:

- Sign into the application.
- Create associations.
- Join multiple associations.
- Switch between association workspaces.

---

### Attributes

| Attribute | Why does it belong to User? |
|-----------|-----------------------------|
| `user_id` | Uniquely identifies every user permanently. |
| `phone_number` | Primary login identity and must remain unique. |
| `email` | Optional contact and future account recovery. |
| `full_name` | Display identity across associations. |
| `?` | *(You will decide the missing authentication field.)* |

---

### Business Rules

- A phone number can belong to only one account.
- A user can exist without joining an association.
- A user can create multiple associations.
- A user can belong to multiple associations.

---

### Relationships

| Relationship | Cardinality |
|-------------|------------|
| User → Membership | 1:N |




## Entity Design — Association

### Responsibility

(Write this in your own words.)

---

### Attributes

| Attribute | Why does it belong to Association? |
|-----------|------------------------------------|
| association_id| unique identifier of all association |
| association_name | this completely marks out the unique name given to identify the association |
| created_by| this holds info of the creator |
| Public Association ID| viable and a unique code users can use to be connected to an association |

---

### Business Rules

- (Write at least four.)

---

### Relationships

| Relationship | Cardinality |
|-------------|------------|
| Association → Membership | |
| Association → Meeting | |