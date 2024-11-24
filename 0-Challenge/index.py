#Simple Class For Items
class Item:
    def __init__(self,cost):
        self.cost = cost;
#Random Items
purse = Item(45)
couch = Item(345)
pen = Item(3)
syringe = Item(85)
unknownSpecimen = Item(1000)
#Main Challenge Function
def Buy2Get3(item,quantity):
    cost = 0;
    for i in range(1,quantity+1):
        if i%3==0:
            continue
        cost+=item.cost
    return cost;
#Test Cases
print(Buy2Get3(pen,3))
print(Buy2Get3(unknownSpecimen,30))
print(Buy2Get3(couch,3))
print(Buy2Get3(purse,4))