For example we have following statements,<br>
    (1) If it is a pleasant day you will do strawberry picking<br>
    (2) If you are doing strawberry picking you are happy.<br>
<br>
Above statements can be written in propositional logic like this - <br>
  (1) strawberry_picking ← pleasant<br>
  (2) happy ← strawberry_picking<br>
<br>
And again these statements can be written in CNF like this - <br>
  (1) (strawberry_picking ∨~pleasant) ∧<br>
  (2) (happy ∨~strawberry_picking)<br>
<br>
By resolving these two clauses and cancelling out the conflicting terms 'strawberry_picking' and '~strawberry_picking',  we can have one new clause,<br>
  (3) ~pleasant ∨ happy<br>
<br>
How ? See the figure on right.<br>
<br>
When we write above new clause in infer or implies form, we have <br>
'pleasant → happy' or 'happy ← pleasant'<br>
i.e. If it is a pleasant day you are happy.<br>
