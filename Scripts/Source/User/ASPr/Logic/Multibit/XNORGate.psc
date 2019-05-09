Scriptname ASPr:Logic:Multibit:XNORGate Extends ASPr:Logic:Multibit:LogicGate

import ASPr:lib:Binlib

Function Init()
  Parent.Init()
  ComponentName = "MultibitXNORGate"
EndFunction

int Function LogicFunction(int A1, int A2)
  Return BitwiseXNOR(A1, A2)
EndFunction
