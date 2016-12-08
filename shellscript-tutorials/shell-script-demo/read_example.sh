#!/bin/bash
#
# Chuong trinh tinh tong, hieu, tich, thuong va so du
# cua 2 so a va b duoc nhap tu ban phim
#

echo -n "Nhap vao so thu nhat a = "
read a

echo -n "Nhap vao so thu hai b = "
read b

# Tinh toan cac ket qua
tong=$((a + b))
hieu=$((a - b))
tich=$((a * b))
thuong=$((a / b))
sodu=$((a % b))


# Xuat ket qua ra man hinh
echo "Tong cua 2 so a va b la: $a+$b=$tong"

echo "Hieu cua 2 so a va b la: $a-$b=$hieu"

echo "Tch cua 2 so a va b la: $a*$b=$tich"

echo "Thuong cua 2 so a va b la: $a/$b=$thuong"

echo "So du cua 2 so a va b la: $a%$b=$sodu"


