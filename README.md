## Logic table

| BANK | D8 / A12B | D2 / ~CS1 | D3 / ~CS2 | A12  | A13  | ~CS  |
|------|-----------|-----------|-----------|------|------|------|
|`0x00`| HIGH      | LOW       | HIGH      | LOW  | LOW  | LOW  |
|`0x01`| LOW       | LOW       | HIGH      | HIGH | LOW  | LOW  |
|`0x02`| HIGH      | HIGH      | LOW       | LOW  | HIGH | LOW  |
|`0x03`| LOW       | HIGH      | LOW       | HIGH | HIGH | LOW  |
| N/A  | x         | HIGH      | HIGH      | x    | x    | HIGH |