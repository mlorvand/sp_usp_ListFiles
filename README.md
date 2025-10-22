# 🧩 SQL Server Database File Size Monitor – `usp_ListenFiles`

![SQL Server](https://img.shields.io/badge/SQL%20Server-Database%20Files-blue?logo=microsoftsqlserver)
![Language](https://img.shields.io/badge/Language-TSQL-purple)
![Category](https://img.shields.io/badge/Category-Monitoring-yellow)
![License](https://img.shields.io/badge/License-MIT-green)
![Author](https://img.shields.io/badge/Author-Mahdi%20Lorvand-orange)

A lightweight stored procedure for monitoring **database file sizes (MDF, LDF)** in any SQL Server database.  
It dynamically queries the target database and shows total, used, and max size of each file.

---

## 🌐 Languages
- 🇮🇷 [فارسی](#-نسخه-فارسی)
- 🇬🇧 [English](#-english-version)
- 🇸🇦 [العربية](#-الإصدار-العربي)

---

## 🇮🇷 نسخه فارسی

### 🧠 معرفی  
این پروسیجر با نام `usp_ListenFiles` برای مشاهده سریع سایز فایل‌های دیتابیس طراحی شده است.  
با دریافت نام دیتابیس، به‌صورت **Dynamic SQL** وارد آن می‌شود و اطلاعات زیر را نمایش می‌دهد:

- نام فایل  
- سایز فعلی (MB)  
- میزان فضای استفاده‌شده (Used)  
- حداکثر اندازه مجاز (Max Size)  

---

### 🚀 ویژگی‌ها  
✅ پشتیبانی از هر دیتابیس دلخواه با نام ورودی  
✅ محاسبه فضای استفاده‌شده به مگابایت  
✅ نمایش اندازه حداکثر فایل به گیگابایت  
✅ پشتیبانی از فایل‌های داده و لاگ  
✅ اجرای آسان در محیط‌های Production و Test  

---

### 🧾 نحوه استفاده  
```sql
USE master;
EXEC usp_ListenFiles @DBName = N'Northwind';
📌 خروجی شامل ستون‌های زیر است:

name	MaxSize_GB	Size_MB	Used_MB

⚙️ نکات فنی
از sys.database_files برای اطلاعات فایل‌ها استفاده شده.

اگر max_size = -1 باشد، یعنی فایل بدون محدودیت رشد (Unlimited) است.

مقادیر size و SPACEUSED بر اساس 8KB Page به MB تبدیل شده‌اند.

🧑‍💻 نویسنده
مهدی لوروند (Mahdi Lorvand)
💼 Helpdesk & VoIP Expert | SQL Learner | IT Enthusiast
📧 mehdilorvand92@gmail.com
🔗 LinkedIn

🇬🇧 English Version
🧠 Overview
The stored procedure usp_ListenFiles provides a quick way to check the file sizes of any database.
It dynamically switches to the target database and retrieves detailed file metrics.

Returned columns:

name – File name

Size_MB – Current allocated size

Used_MB – Currently used space

MaxSize_GB – Maximum file size (or “Unlimited”)

🚀 Features
✅ Works for any database (dynamic execution)
✅ Displays both data and log files
✅ Converts page size to MB/GB for readability
✅ Uses sys.database_files and FILEPROPERTY() for accuracy

🧾 Example Usage
sql
Copy code
USE master;
EXEC usp_ListenFiles @DBName = N'Northwind';
⚙️ Technical Notes
Pages are 8KB; all calculations are converted to MB and GB.

If max_size = -1, the file can grow infinitely.

No data modification occurs — read-only diagnostic query.

🧑‍💻 Author
Mahdi Lorvand
💼 Helpdesk & VoIP Expert | SQL Learner | IT Enthusiast
📧 mehdilorvand92@gmail.com
🔗 LinkedIn

🇸🇦 الإصدار العربي
🧠 المقدّمة
البرنامج المخزّن usp_ListenFiles يقدّم طريقة سريعة لمراقبة حجم ملفات قاعدة البيانات في SQL Server.
يستخدم استعلام ديناميكي لعرض حجم الملف الحالي، والمساحة المستخدمة، والحد الأقصى للحجم.

🚀 المميزات
✅ يعمل مع أي قاعدة بيانات من خلال اسمها
✅ يعرض ملفات البيانات والسجلات
✅ التحويل التلقائي إلى الميغابايت/الغيغابايت
✅ يعتمد على sys.database_files و FILEPROPERTY()

🧾 طريقة الاستخدام
sql
Copy code
USE master;
EXEC usp_ListenFiles @DBName = N'Northwind';
الأعمدة الناتجة:
| الاسم | الحد الأقصى (غيغابايت) | الحجم (ميغابايت) | المستخدم (ميغابايت) |

🧑‍💻 المؤلف
مهدي لورفند (Mahdi Lorvand)
💼 خبير دعم فني وVoIP | متعلّم SQL | مهتم بتقنية المعلومات
📧 mehdilorvand92@gmail.com
🔗 LinkedIn

🪪 License
MIT License — Free to use, modify, and share with attribution.

⭐️ Support
If this script helped you, please give it a ⭐️ on GitHub or share it with your DBA friends!

yaml
Copy code
