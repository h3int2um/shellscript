# Shell Script Tutorials: Đọc giá trị được nhập từ bàn phím

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 08 tháng 12 năm 2016

## Tài liệu tham khảo

* [Writing shell scripts - Lesson 11: Keyboard Input and Arithmetic](http://linuxcommand.org/wss0110.php)

## Đọc giá trị được nhập từ bàn phím

* Lệnh `read` dùng để đọc giá trị được nhập từ bàn phím và gán giá trị này vào biến.

	+ Ví dụ: script [read_demo.sh](https://github.com/h3int2um/shellscript/blob/master/shellscript-tutorials/shell-script-demo/read_demo.sh).

			#!/bin/bash			
		
			echo -n "Enter some text > "
		
			read text
		
			echo "You entered: $text"
			
	+ Kết quả:
	
	![](https://raw.githubusercontent.com/h3int2um/shellscript/master/shellscript-tutorials/images-tutorials/read_demo.png)		
		
* Tham số tùy chọn của lệnh `read`: `-t` và `-s`.

	+ Tham số `-t`:
	
		- Sau tham số `-t` là số giây `seconds` được quy định. Nếu thời gian nhập vào (tính đến thời điểm 
		`Enter`) vượt quá số giây `seconds` thì lệnh `read` không còn tác dụng.
		
		- Với tham số `-t`, chúng ta có thể quy định được thời gian nhập giá trị vào từ bàn phím 
		(thời gian không vượt quá số giây `seconds`).
		
		- Ví dụ: script [read_demo_option_t.sh](https://github.com/h3int2um/shellscript/blob/master/shellscript-tutorials/shell-script-demo/read_demo_option_t.sh).
		
				#!/bin/bash				

				echo -n "Hurry up and type something! > "
				
				if read -t 3 response; then
				
					echo "Great, you made it in time!"
					
				else
				
					echo "Sorry, you are too slow!"
					
				fi
				
		- Thời gian nhập vượt quá `3s`:
		
			![](https://raw.githubusercontent.com/h3int2um/shellscript/master/shellscript-tutorials/images-tutorials/read_demo_option_t-1.png)
				
		- Thời gian nhập không quá `3s`:
		
			![](https://raw.githubusercontent.com/h3int2um/shellscript/master/shellscript-tutorials/images-tutorials/read_demo_option_t-2.png)
	
	+ Tham số `-s`:
	
		- Với tham số `-s` thì giá trị nhập vào từ bàn phím sẽ không được hiển thị lên màn hình.
		
		- Lệnh này thích hợp với các vấn đề liên quan đến bảo mật trên máy tính.
		
		- Ví dụ: script [read_demo_option_s.sh](https://github.com/h3int2um/shellscript/blob/master/shellscript-tutorials/shell-script-demo/read_demo_option_s.sh).
		
				#!/bin/bash				

				echo -n "Enter username: "
				
				read username


				echo -n "Enter password: "

				read -s password

				
				echo -e "\nUsername: $username. Password: $password"
		
		- Kết quả:
		
			![](https://raw.githubusercontent.com/h3int2um/shellscript/master/shellscript-tutorials/images-tutorials/read_demo_option_s.png)

## Ví dụ áp dụng

* Yêu cầu: Viết chương trình thực hiện các phép tính cộng, trừ, nhân, tìm thương, tìm số dư 
của hai số a và b được nhập từ bàn phím.

* Chương trình: script [](https://github.com/h3int2um/shellscript/blob/master/shellscript-tutorials/shell-script-demo/read_example.sh)
		
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

* Kết quả:

	![](https://raw.githubusercontent.com/h3int2um/shellscript/master/shellscript-tutorials/images-tutorials/read_example.png)
