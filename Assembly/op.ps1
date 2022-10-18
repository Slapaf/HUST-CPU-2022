$FileName=Read-Host "Enter Your FileName"
$asm=$FileName+".asm"
$hex=$FileName+".hex"
java -jar rars_f0c874c.jar $asm dump .text HexText $hex