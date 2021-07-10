#!/bin/bash
echo -e"--------------------system information--------------------------"

echo -e "active user:\t\t"`w | cut -d ' ' -f1 \ grep -v user | xargs -n1`
echo -e "memory usage:\t"`free | awk '/mem/{printf("%.2f%"),$3/$2*100}`
echo -e "swap usage:/t"`free | awk '/swap/{printf{"%.2f%\n"), {$2+$4)*100/($2+$4+$5)}' | awk '{print $0}' | head -1
df -Ph | sed s/%//g |awk '{if($5>80) print $0;}`
echo ""

