# learningDBT

# Materialisations
 <span style='color:white;background:green'>USE IT</span>
 <span style='color:white;background:red'>DON'T USE IT</span>
## View
 - <span style='color:white;background:green'>you want a lightweight representation</span>
 - <span style='color:white;background:green'>you don't reuse data too often</span>
 - <span style='color:white;background:red'>you read from the same model several times</span>


## Table
 - <span style='color:white;background:green'>you read from thios model repeatedly</span>
 - <span style='color:white;background:red'>building single-use models</span>
 - <span style='color:white;background:red'>your model is populated incrementally</span>

## Incremental (table appends)
 - <span style='color:white;background:green'>fact tables</span>
 - <span style='color:white;background:green'>Appends to tables</span>
 - <span style='color:white;background:red'>you want to update historical records</span>

## Ephemeral (CTEs)
 - <span style='color:white;background:green'>you merely wnat an allias to your date</span>
 - <span style='color:white;background:red'>you read from the same model several times</span>