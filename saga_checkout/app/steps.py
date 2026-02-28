import random
from app.saga import SagaStep


class PaymentStep(SagaStep):

    def execute(self):
        print("Executing Payment Step...")
        # simulate success
        print("Payment successful")

    def compensate(self):
        print("Compensating Payment...")
        print("Refund issued")


class InventoryStep(SagaStep):

    def execute(self):
        print("Executing Inventory Step...")
        print("Inventory reserved")

    def compensate(self):
        print("Compensating Inventory...")
        print("Inventory restored")


class ShippingStep(SagaStep):

    def execute(self):
        print("Executing Shipping Step...")

        # simulate random failure
        if random.choice([True, False]):
            raise Exception("Shipping failed")

        print("Shipping created")

    def compensate(self):
        print("Compensating Shipping...")
        print("Shipping cancelled")
