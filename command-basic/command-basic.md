# Các lệnh cơ bản trong Linux

Tìm hiểu: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

## Một số lệnh cơ bản

* Lệnh `find`:

	+ Tìm một tập tin hoặc một thư mục:

			$ sudo find / -name ten_file

	+ Giới hạn phạm vi tìm kiếm: thay đổi `/` thành địa chỉ cụ thể, ví dụ: `/home/username/`

			$ sudo find /home/username/ -name ten_file
		
* Lệnh `tar`:

	+ Giải nén file `*.tar`, `*.tar.xz`, `*.tar.gz`: [[1]](http://askubuntu.com/questions/92328/how-do-i-uncompress-a-tarball-that-uses-xz)
		
			$ tar xf ten_file_tar

## Tài liệu tham khảo

1. [How do I uncompress a tarball that uses .xz?](http://askubuntu.com/questions/92328/how-do-i-uncompress-a-tarball-that-uses-xz)
