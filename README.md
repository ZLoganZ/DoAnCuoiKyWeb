# Đồ án cuối kỳ Lập trình WEB

Đề tài: Website bán giày Second-hand

Sinh viên thực hiện:
  - Nguyễn Hoàng Hải - 20161051
  - Nguyễn Văn Đạt - 20110455
  - Tăng Phúc Toàn - 20110100
Link Webiste: http://13.214.3.232/WebsiteBanGiay/home

## Cách cài đặt
1. Tải [Eclipse IDE for Enterprise Java and Web Developers](https://www.eclipse.org/downloads/packages/release/2022-09/r/eclipse-ide-enterprise-java-and-web-developers). Sau đó giải nén ra ta được folder `eclipse`.
2. Tải [JDK 16](https://jdk.java.net/java-se-ri/16). Giải nén ra được folder `jdk-16`. Sau đó ta copy vào bất kỳ chỗ nào ta muốn. Thêm Path vào Enviroment và thêm biến JAVA_HOME link đến trực tiếp folder ra vừa giải nén. Ví dụ:`C:\Program Files\Java\jdk-16`<img src="https://i.imgur.com/RlFijj7.png">
3. Tải [Tomcat 9](https://tomcat.apache.org/download-90.cgi). Giải nén ra ta được folder `apache-tomcat-9.0.**` copy vào ổ **C** để dễ quản lý. Vào `apache-tomcat-9.0.**/bin/` ta chỉnh sửa file `startup.bat` thêm dòng `SET "JAVA_HOME=[đường dẫn JAVA_HOME của bạn]"` ví dụ: `SET "JAVA_HOME=C:\Program Files\Java\jdk-16"`
4. Quay lại folder `eclipse` ta giải nén ở bước 1, chỉnh sửa file `eclipse.ini`. Dưới dòng `-vm` ta thay bằng dường dẫn đến *javaw* của `jdk-16`. Ví dụ: `C:\Program Files\Java\jdk-16\bin\javaw.exe`<img src="https://i.imgur.com/BqvoxeD.png">
5. Mở eclipse lên. Đầu tiên thêm tomcat 9 vào eclipse theo thao tác `Eclipse -> Window -> References` <img src="https://i.imgur.com/sQhozLJ.png"> <img src="https://i.imgur.com/YoM77qF.png"> <img src="https://i.imgur.com/YtMnzxZ.png"> <ing src="https://i.imgur.com/Fk11UxS.png">
6. Xong bước thêm server, giờ ta cần import project và chạy nó lên <img src="https://i.imgur.com/6Lw233N.png"> <img src="https://i.imgur.com/veThoPF.png"> <img src="https://i.imgur.com/LEWpbag.png"> <img src="https://i.imgur.com/qnvC34s.png">
7. Tận hưởng Website!!!!
 
### Lưu ý:
 - Chạy file script SQL theo đúng phiên bản (thường hoặc VPS, không dùng file old), sau đó sửa lại thông tin của SQL Server trong `\DoAnCNTT2022\src\main\java\context\DBContext.java`
 - Tài khoản full quyền: `hoanghai` `123456`
