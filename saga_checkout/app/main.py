from fastapi import FastAPI
from app.saga import CheckoutSaga
from app.steps import PaymentStep, InventoryStep, ShippingStep

app = FastAPI()


@app.post("/checkout")
def checkout():
    saga = CheckoutSaga([
        PaymentStep(),
        InventoryStep(),
        ShippingStep()
    ])

    result = saga.execute()
    return result
