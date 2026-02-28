from typing import List


class SagaStep:
    def execute(self):
        raise NotImplementedError

    def compensate(self):
        raise NotImplementedError


class CheckoutSaga:
    def __init__(self, steps: List[SagaStep]):
        self.steps = steps
        self.completed_steps = []

    def execute(self):
        try:
            for step in self.steps:
                step.execute()
                self.completed_steps.append(step)
            return {"status": "SUCCESS"}
        except Exception as e:
            self.rollback()
            return {
                "status": "FAILED",
                "error": str(e)
            }

    def rollback(self):
        for step in reversed(self.completed_steps):
            step.compensate()
