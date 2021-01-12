# Bank Tech Test

### User Stories
```
As a customer,
So that I can keep control of my money,
I want to open a bank account.
```
```
As a customer,
So that I can safely keep my money in a bank,
I want to make deposits into my account.
```
```
As a customer,
So that I can take out my money from my bank,
I want to make withdrawals from my account.
```

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2021  
**And** a deposit of 2000 on 11-01-2021
**And** a withdrawal of 500 on 12-01-2021  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
12/01/2021 || || 500.00 || 2500.00
11/01/2021 || 2000.00 || || 3000.00
10/01/2021 || 1000.00 || || 1000.00
```
