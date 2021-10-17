class Subcriber:
    def __init__(self,name,lastname):
        self.name=name
        self.lastname=lastname
    def __str__(self):
        return f'self.name slef.lastname'
class provider(Subcriber):
    def __init__(self,name,subcriber):
        self.name=name
        self.subscriber=subcriber
        self.payments={self.subscriber:0,}
    def payment(self,sum):
        if sum in self.subscriber:
            self.payment=self.subscriber[sum]
        else:
            print(ValueError)
        
        


