Overview

This project implements the Saga Pattern using orchestration within a single microservice.
The checkout workflow consists of three steps:
Payment, Inventory, Shipping

Each step implements:
execute() — performs the business action
compensate() — performs rollback action
If any step fails, previously completed steps are compensated in reverse order.

Architecture:
Orchestration-based Saga
Central CheckoutSaga orchestrator
Independent step classes
Reverse compensation logic
No distributed transactions (no 2PC)

Why Saga?
Traditional ACID transactions do not work across distributed services.
Saga provides eventual consistency through compensating transactions.

Design Characteristics:
Open for extension (new steps can be added easily)
Failure-safe rollback
Clear separation of concerns
Deterministic compensation order

How to Run:
pip install -r requirements.txt
uvicorn app.main:app --reload
