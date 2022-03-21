// Packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter_localizations/flutter_localizations.dart';
// Screens
import '../main.dart';

//================================================
class EbTranslate {
  //================================================
  // current locale
  static Locale? current;
  // all locales
  static List<Locale> locales = [];
  // all Translations
  static const Map<String, Map<String, String>> _translations = {
    "en": {
      "language_iso": "en",
      "language_name": "English",
      "language_dir": "ltr",
      "dashboard-page-title": "dashboard",
      "login-page-title": "login",
      "reset-password-page-title": "reset password",
      "set-password-page-title": "set password",
      "organization-page-title": "organization",
      "users-page-title": "users",
      "projects-page-title": "projects",
      "branches-page-title": "branches",
      "clients-page-title": "clients",
      "employees-page-title": "employees",
      "contributors-page-title": "contributors",
      "e-ticket-page-title": "e-ticket",
      "system-page-title": "system",
      "profile-page-title": "profile",
      "coa-page-title": "chart of accounts",
      "account-years-page-title": "accounting years",
      "sales-invoices-page-title": "sales invoices",
      "purchase-invoices-page-title": "purchase invoices",
      "quotation-page-title": "quotation",
      "transactions-page-title": "transactions",
      "vendors-page-title": "vendors",
      "stores-page-title": "stores",
      "products-page-title": "products",
      "discount-and-add-page-title": "discount and add",
      "shares-page-title": "shares",
      "depreciation-page-title": "depreciation",
      "categories-page-title": "categories",
      "brands-page-title": "brands",
      "taxes-page-title": "taxes",
      "return-policy-page-title": "return policy",
      "custody-page-title": "custody",
      "unit-measure": "unit measure",
      "send": "send",
      "phone": "phone",
      "phone-number": "phone number",
      "first-name": "first name",
      "middle-name": "middle name",
      "last-name": "last name",
      "social-id": "social id",
      "employee-code": "employee code",
      "contributory-code": "contributory code",
      "email": "email",
      "name": "name",
      "message": "message",
      "cancel": "cancel",
      "enter": "enter",
      "password": "password",
      "login": "login",
      "forgot-password?": "forgot your password?",
      "reset": "reset",
      "reset-password": "reset password",
      "set-password": "set password",
      "set": "set",
      "profile": "profile",
      "logout": "logout",
      "delete": "delete",
      "edit": "edit",
      "create": "create",
      "update": "update",
      "view": "view",
      "search": "search",
      "title": "title",
      "status": "status",
      "severity": "severity",
      "description": "description",
      "closed": "closed",
      "start": "start",
      "esclate": "escalate",
      "solved": "solved",
      "invalid_email": "invalid email",
      "device_not_whitelisted":
          "your device isn't whitelisted, contact your admin if you wish to whitelist this device.",
      "user_doesnt_exist": "user doesn't exist",
      "device_whitelisted": "devices whitelisted",
      "dashboard": "dashboard",
      "organizations": "organizations",
      "organization": "organization",
      "branches": "branches",
      "employees": "employees",
      "contributors": "contributors",
      "client": "client",
      "clients": "clients",
      "user": "user",
      "users": "users",
      "system": "system",
      "tickets": "tickets",
      "projects": "projects",
      "e-ticket": "e-ticket",
      "privilages": "privilages",
      "add-page": "add page",
      "add-new": "add new",
      "add-project": "add project",
      "add-organization": "add organization",
      "add-branch": "add branch",
      "add-users": "add users",
      "add-clients": "add clients",
      "add-employee": "add employee",
      "add-contributory": "add contributory",
      "project-name": "project name",
      "branch-type": "branches type",
      "branches-name": "branche name",
      "system-name": "system name",
      "client-name": "client name",
      "employee-name": "employee name",
      "contributory-name": "contributory name",
      "project-name-in-english": "project name in english",
      "project-name-in-arabic": "project name in arabic",
      "desc-in-english": "description in english",
      "desc-in-arabic": "description in arabic",
      "name-in-english": "name in english",
      "name-in-arabic": "name in arabic",
      "type": "type",
      "active": "active",
      "you-have-unsaved-changes-your-sure-you-want-leave-page":
          "you have unsaved changes your sure you want leave page?",
      "confirme": "confirme",
      "add": "add",
      "new": "new",
      "choose": "choose",
      "value": "value",
      "contacts": "contacts",
      "social": "social",
      "attachments": "attachments",
      "file": "file",
      "e-ticket-type": "e-ticket types",
      "organizations-type": "organizations type",
      "request-change-severity": "change severity request",
      "edit-system": "edit system",
      "create-new-ticket": "create new ticket",
      "you_do_not_have_privilages": "you do not have privileges to access",
      "you_have_privilages": "You have access",
      "change-severity": "change severity",
      "request-severity": "request severity",
      "client-type": "client type",
      "commercial-register": "commercial register",
      "tax": "tax",
      "chart-of-accounts": "chart of accounts",
      "start-date": "start date",
      "end-date": "end date",
      "start-transaction": "start transaction",
      "end-transaction": "transactions",
      "start-invoice": "start invoice",
      "end-invoice": "end invoice",
      "start-procurement": "start procurement",
      "end-procurement": "end procurement",
      "accounting-years": "accounting years",
      "accounting-year": "accounting year",
      "add-accounting-year": "add accountinging year",
      "accounting-system": "accounting system",
      "add-coa": "add chart of accounts",
      "credit": "credit",
      "debit": "debit",
      "amount": "amount due",
      "add-journal": "add journal",
      "transaction": "transaction",
      "transactions": "transactions",
      "balance": "balance",
      "print": "print",
      "add-transaction": "add transaction",
      "invoices": "invoices",
      "invoice": "invoice",
      "date": "date",
      "time": "time",
      "address": "address",
      "clear": "clear",
      "filter": "filter",
      "add-invocie": "add invocie",
      "transaction-type": "transaction type",
      "supply-chain": "supply chain",
      "vendors": "vendors",
      "stores": "stores",
      "add-vendor": "add vendor",
      "vendor-type": "vendor type",
      "vendor-name": "vendor name",
      "add-store": "add store",
      "store-type": "store type",
      "products": "products",
      "add-product": "add product",
      "product-name": "product name",
      "sku": "sku",
      "product-specs": "product specs",
      "buy-price": "buy price",
      "sell-price": "sell price",
      "discount": "discount",
      "min-limit-quantity": "minimum limit quantity",
      "quantity": "quantity",
      "store": "store",
      "day": "day",
      "month": "month",
      "year": "year",
      "buyer-name": "buyer name",
      "buyer-address": "buyer address",
      "buyer-tax-id": "buyer tax id",
      "payment-method": "payment method",
      "supply-id": "supply order id",
      "delivery-id": "delivery permission id",
      "sale-representative": "sale representative",
      "tax-percentage": "tax percentage",
      "subtotal": "subtotal",
      "payment-due": "payment due",
      "profits": "profits",
      "business-profits-tax": "business profits tax",
      "due_amount": "due amount",
      "review": "review",
      "unit": "unit",
      "total": "total",
      "price": "price",
      "sales-invoices": "sales invoices",
      "purchase-invoices": "purchase invoices",
      "sales-invoice": "sales invoice",
      "add-purchase-invoice": "add purchase invoice",
      "add-sales-invoice": "add sales invoice",
      "unit-price": "unit price",
      "client-tax-id": "client tax id",
      "client-address": "client address",
      "accounting": "accounting",
      "home": "home",
      "organization-name-en": "organization english name",
      "tax-id": "tax card",
      "reg-id": "commercial regester",
      "organization-name-ar": "organization arabic name",
      "comment": "comment",
      "barcode": "barcode",
      "min-sell-price": "minimum sell price",
      "add-account-year": "add account year",
      "account-years": "account years",
      "receivables": "receivables",
      "payable": "payable",
      "total-assets": "total assets",
      "in-english": "in english",
      "in-arabic": "in arabic",
      "reserved-quantity": "reserved quantity",
      "coming-soon": "coming soon!",
      "discount-and-addition": "discount and addition",
      "addition": "addition",
      "purchase-invoice-number": "purchase invoice number",
      "sales-invoice-number": "sales invoice number",
      "shares": "shares",
      "add-shares": "add shares",
      "contributory-type": "contributory type",
      "depreciation": "depreciation",
      "scrap-price": "scrap price",
      "duration": "duration",
      "custody": "custody",
      "add-custody": "add custody",
      "view-custody": "view custody",
      "code-id": "code id",
      "product": "product",
      "vendor-tax-id": "vendor tax id",
      "view-depreciation": "view depreciations",
      "receipt-custody": "receipt of custody",
      "extradition-custody": "extradition custody",
      "edit-custody": "edit custody",
      "delete-custody": "delete custody",
      "assets": "assets",
      "add-depreciation": "add depreciation",
      "organization-type": "organization type",
      "please-upload-your-own-logo": "please upload your own logo",
      "main": "main",
      "main-users": "main users",
      "supply-chain-method": "supply chain method",
      "user-type": "user type",
      "modules": "modules",
      "privilage-name-en": "privilage name in english",
      "privilage-name-ar": "privilage name in arabic",
      "mandatory": "mandatory",
      "employees-title": "employees",
      "date-issued": "date issued",
      "quotation": "quotation",
      "add-quotation": "add quotation",
      "quotation-invoice-number": "quotation invoice number",
      "terms-and-conditions": "terms and conditions",
      "tax-card": "tax card",
      "purchase-quotation": "purchase quotation",
      "details": "details",
      "main-code": "main code",
      "invoice-purchase-date": "invoice purchase date",
      "login-title": "Login -",
      "login-description": "",
      "reset-password-title": "Reset password -",
      "reset-password-description":
          "Enter your email address and an email will be sent to you with the instructions.",
      "set-password-title": "Set password -",
      "set-password-description": "Set your new password.",
      "dashboard-title": "Dashboard -",
      "dashboard-description": "",
      "vendor": "Vendors",
      "vendors-title": "Vendors -",
      "vendors-description": "",
      "profile-title": "Profile -",
      "profile-description": "",
      "data": "Data",
      "brief-in-english": "brief in english",
      "brief-in-arabic": "brief in arabic",
      "currencies": "Currencies",
      "currency": "Currency",
      "currencies-title": "Currencies -",
      "currencies-description": "",
      "currency-rates": "Currency Rates",
      "currency-rate": "Currency Rate",
      "currency-rates-title": "Currency Rates -",
      "currency-rates-description": "",
      "rates": "Rates",
      "rate": "Rate",
      "iso": "ISO",
      "regions": "Regions",
      "region": "Region",
      "regions-title": "Regions -",
      "regions-description": "",
      "countries": "Countries",
      "country": "Country",
      "countries-title": "Countries -",
      "countries-description": "",
      "cities": "Cities",
      "city": "City",
      "cities-title": "Cities -",
      "cities-description": "",
      "areas": "Areas",
      "area": "Area",
      "areas-title": "Areas -",
      "areas-description": "",
      "taxes": "Taxes",
      "taxes-title": "Taxes -",
      "taxes-description": "",
      "tax-values": "Tax Values",
      "tax-value": "Tax Value",
      "tax-values-title": "Tax Values -",
      "tax-values-description": "",
      "persons": "Persons",
      "person": "Person",
      "persons-title": "Person -",
      "persons-description": "",
      "organization-title": "Organization -",
      "organization-description": "",
      "branch": "Branch",
      "branches-title": "Branches -",
      "branches-description": "",
      "users-title": "Users -",
      "users-description": "",
      "corporates": "Corporates",
      "corporate": "Corporate",
      "corporates-title": "Corporates -",
      "corporates-description": "",
      "clients-title": "Clients -",
      "clients-description": "",
      "tax_id": "Tax NO",
      "reg_id": "Regestration NO",
      "types": "Types",
      "forgot-password": "Forgot Password?",
      "proceed": "Proceed",
      "skip": "Skip",
      "extract": "Extract",
      "download": "Download",
      "create-report": "Create Report",
      "all": "All",
      "none": "None",
      "reports": "Reports",
      "actual": "Actual",
      "close": "Close",
      "curruncy-code": "Curruncy Code",
      "added-date": "Added Date",
      "last-modified": "Last-modified",
      "save": "Save",
      "privileges": "Privileges",
      "privilege": "Privilege",
      "progress": "Progress",
      "percentage": "Percentage",
      "in-active": "in active",
      "model": "model number",
      "expiration": "Quotation Expiration",
      "quotation-start": "Quotation Start",
      "client-code": "client code",
      "payment": "Payment",
      "production-time": "production time",
      "production-quantity": "production quantity",
      "reserved": "reserved",
      "cost": "cost",
      "stock-quantity": "stock quantity",
      "stock-location": "stock location",
      "raw": "raw",
      "processed": "processed",
      "production-item": "production item",
      "production-line": "production line",
      "add-production-request": "add production request",
      "production-request": "production request",
      "item": "item",
      "production-page-title": "production",
      "fixed-assets-page-title": "fixed assets",
      "fixed-assets": "fixed assets",
      "name-hint": "Enter Name",
      "email-hint": "example@domain.com",
      "password-hint": "",
      "new-password": "New Password",
      "new-password-hint": "",
      "confirm-password": "Confirm Password",
      "confirm-password-hint": "Re-Enter Password",
      "months": "Months",
      "weekdays": "Weekdays",
      "telephone": "Telephone",
      "telephone-hint": "Enter a contact number",
      "logo": "Logo",
      "crm-page-title": "Customer relationship management",
      "crm": "crm",
      "payments": "payments",
      "ongoing": "ongoing",
      "inventory": "inventory",
      "goods": "goods",
      "production": "production",
      "goods-page-title": "goods",
      "tags-page-title": "tags",
      "add-goods": "add goods",
      "code": "Code",
      "code-hint": "Enter Code",
      "first-name-hint": "Enter first name",
      "last-name-hint": "Enter last name",
      "stocks": "stocks",
      "production-items": "production items",
      "onhold": "on hold",
      "completed": "completed",
      "canceled": "canceled",
      "ecommerce": "ecommerce",
      "tags": "tags",
      "add-tags": "add tags",
      "return-policy": "return policy",
      "add-return-policy": "add return policy",
      "return-days": "return days",
      "categories": "categories",
      "add-categories": "add categories",
      "brands": "brands",
      "add-brands": "add brands",
      "add-taxes": "add taxes",
      "tax-start-date": "tax start date",
      "tax-end-date": "tax end date",
      "tax-perecentage": "tax perecentage",
      "orders": "orders",
      "client-phone": "client phone",
      "building-number": "building number",
      "building-floor": "building floor",
      "apartment-number": "apartment number",
      "postcode": "postcode",
      "order-date": "order date",
      "cancel-date": "cancel date",
      "shipping-note": "shipping note",
      "thumbnails": "thumbnails",
      "shipping-price": "shipping price",
      "discount-percentage": "discount percentage",
      "minimum-order-quantity": "minimum order quantity",
      "maximum-order-quantity": "maximum order quantity",
      "lead-time-days": "lead time days",
      "discount-price": "discount price",
      "minimum-stock": "minimum stock",
      "pre-order": "pre order",
      "unpre-order": "unpre order",
      "show-stock": "show stock",
      "hide-stock": "hide stock",
      "favorite": "favorite",
      "unfavorite": "unfavorite",
      "media": "media",
      "point-of-sales": "point of sales",
      "point-of-sale": "point of sale",
      "receipt": "receipt",
      "add-client": "add client",
      "import-product": "import product",
      "import": "import",
      "credit-card": "credit card",
      "cash-on-delivery": "cash on delivery",
      "vodafone-cash": "vodafone cash",
      "filler": "text <filler> text2 <filler> end"
    },
    "ar": {
      "language_iso": "ar",
      "language_name": "عربي",
      "language_dir": "rtl",
      "dashboard-page-title": "صفحة التحكم",
      "login-page-title": "تسجيل الدخول",
      "reset-password-page-title": "إعادة تعيين كلمة المرور",
      "set-password-page-title": "تعيين كلمة المرور",
      "organization-page-title": "المنظمات",
      "users-page-title": "المستخدمين",
      "projects-page-title": "المشاريع",
      "branches-page-title": "الفروع",
      "clients-page-title": "العملاء",
      "employees-page-title": "الموظفين",
      "contributors-page-title": "المساهمين",
      "e-ticket-page-title": "الدعم الألكترونى",
      "system-page-title": "النظام",
      "profile-page-title": "الملف الشخصى",
      "coa-page-title": "جدول الحسابات",
      "account-years-page-title": "السنة المحاسبية",
      "sales-invoices-page-title": "فواتير البيع",
      "purchase-invoices-page-title": "فواتير الشراء",
      "quotation-page-title": "الاسعار",
      "transactions-page-title": "القيود المحاسبية",
      "vendors-page-title": "الموزعين",
      "stores-page-title": "المخازن",
      "products-page-title": "المنتجات",
      "discount-and-add-page-title": "خصم و اضافة",
      "shares-page-title": "الاسهم",
      "depreciation-page-title": "الاهلاك",
      "categories-page-title": "الفئات",
      "brands-page-title": "العلامات التجارية",
      "taxes-page-title": "الضرائب",
      "return-policy-page-title": "سياسة الاسترجاع",
      "custody-page-title": "العهدة",
      "unit-measure": "وحدة قياس",
      "send": "إرسال",
      "phone": "الهاتف",
      "phone-number": "رقم الهاتف",
      "first-name": "الاسم الاول",
      "middle-name": "الاسم الثانى",
      "last-name": "الاسم الاخير",
      "social-id": "الرقم القومى",
      "employee-code": "رمز الموظف",
      "contributory-code": "رمز المساهم",
      "email": "البريد الإلكتروني",
      "name": "الاسم",
      "message": "الرسالة",
      "cancel": "إلغاء",
      "enter": "أدخل",
      "password": "كلمه السر",
      "login": "تسجيل الدخول",
      "forgot-password?": "نسيت كلمه السر؟",
      "reset": "إعادة تعيين",
      "reset-password": "إعادة تعيين كلمة المرور",
      "set-password": "تعيين كلمة المرور",
      "set": "تعيين",
      "profile": "الملف الشخصى",
      "logout": "تسجيل الخروج",
      "delete": "أحذف",
      "edit": "تعديل",
      "create": "أنشاء",
      "update": "تحديث",
      "view": "عرض",
      "search": "بحث",
      "title": "عنوان",
      "status": "الحالة",
      "severity": "خطورة",
      "description": "الوصف",
      "closed": "مغلق",
      "start": "بدء",
      "esclate": "تصعيد",
      "solved": "تم حلها",
      "invalid_email": "بريد الكترونى خاطئ",
      "device_not_whitelisted":
          "جهازك غير مدرج في القائمة المسموح بها ، اتصل بمسؤولي النظام إذا كنت ترغب في استخدام هذا الجهاز في النظام.",
      "user_doesnt_exist": "المستخدم غير موجود",
      "device_whitelisted": "الاجهزة المدعومة",
      "dashboard": "صفحة التحكم",
      "organizations": "منظمات",
      "organization": "منظمة",
      "branches": "الفروع",
      "employees": "الموظفين",
      "contributors": "المساهمين",
      "client": "العميل",
      "clients": "العملاء",
      "user": "المستخدم",
      "users": "المستخدمين",
      "system": "النظام",
      "tickets": "الدعم الألكترونى",
      "projects": "المشاريع",
      "e-ticket": "الدعم الألكترونى",
      "privilages": "الامتيازات",
      "add-page": "اضف صفحة",
      "add-new": "اضف جديد",
      "add-project": "اضف مشروع",
      "add-organization": "اضف منظمة",
      "add-branch": "اضف فرع",
      "add-users": "اضف مستخدمين",
      "add-clients": "اضف عملاء",
      "add-employee": "اضف موظف",
      "add-contributory": "اضم مساهم",
      "project-name": "اسم المشروع",
      "branch-type": "نوع الفرع",
      "branches-name": "اسم الفرع",
      "system-name": "اسم النظام",
      "client-name": "اسم العميل",
      "employee-name": "اسم الموظف",
      "contributory-name": "اسم المساهم",
      "project-name-in-english": "اسم المشروع بالانجليزية",
      "project-name-in-arabic": "اسم المشروع بالعربية",
      "desc-in-english": "الوصف بالانجليزية",
      "desc-in-arabic": "الوصف بالعربية",
      "name-in-english": "الاسم بالانجليزية",
      "name-in-arabic": "الاسم بالعربية",
      "type": "النوع",
      "active": "فعال",
      "you-have-unsaved-changes-your-sure-you-want-leave-page":
          "لديك تغييرات غير محفوظة تأكد من أنك تريد مغادرة الصفحة؟",
      "confirme": "تأكيد",
      "add": "اضف",
      "new": "جديد",
      "choose": "اختر",
      "value": "القيمة",
      "contacts": "جهات الأتصال",
      "social": "التواصل الاجتماعى",
      "attachments": "المرفقات",
      "file": "الملف",
      "e-ticket-type": "انواع الدعم الألكترونى",
      "organizations-type": "نوع المنظمات",
      "request-change-severity": "طلب تغيير الخطورة",
      "edit-system": "تعديل النظام",
      "create-new-ticket": "انشاء دعم جديد",
      "you_do_not_have_privilages": "ليس لديك امتيازات الوصول",
      "you_have_privilages": "لديك امكانية الوصول",
      "change-severity": "تغيير الخطورة",
      "request-severity": "طلب الخطورة",
      "client-type": "نوع العميل",
      "commercial-register": "السجل التجارى",
      "tax": "الضريبة",
      "chart-of-accounts": "جدول الحسابات",
      "start-date": "تاريخ البدء",
      "end-date": "تاريخ الانتهاء",
      "start-transaction": "اول قيد",
      "end-transaction": "اخر قيد",
      "start-invoice": "بداية الفاتورة",
      "end-invoice": "نهاية الفاتورة",
      "start-procurement": "اول التحصيل",
      "end-procurement": "اخر التحصيل",
      "accounting-years": "السنوات المحاسبية",
      "accounting-year": "السنة المحاسبية",
      "add-accounting-year": "اضف السنة المحاسبية",
      "accounting-system": "النظام المحاسبى",
      "add-coa": "اضف جدول الحسابات",
      "credit": "ائتمان",
      "debit": "مدين",
      "amount": "المبلغ المستحق",
      "add-journal": "اضف دفتر اليومية",
      "transaction": "معاملة محاسبية",
      "transactions": "المعاملات المحاسبية",
      "balance": "رصيد الحساب",
      "print": "طباعة",
      "add-transaction": "اضف قيد محاسبى",
      "invoices": "الفواتير",
      "invoice": "الفاتورة",
      "date": "التاريخ",
      "time": "الوقت",
      "address": "العنوان",
      "clear": "مسح",
      "filter": "بحث",
      "add-invocie": "اضف فاتورة",
      "transaction-type": "نوع القيد",
      "supply-chain": "سلسلة الامداد",
      "vendors": "الموردين",
      "stores": "المخازن",
      "add-vendor": "اضف مورد",
      "vendor-type": "نوع المورد",
      "vendor-name": "اسم المورد",
      "add-store": "اضف مخزن",
      "store-type": "نوع المخزن",
      "products": "المنتجات",
      "add-product": "اضف منتج",
      "product-name": "اسم المنتج",
      "sku": "sku",
      "product-specs": "مواصفات المنتج",
      "buy-price": "سعر الشراء",
      "sell-price": "سعر البيع",
      "discount": "الخصم",
      "min-limit-quantity": "الحد الادنى للكمية",
      "quantity": "الكمية",
      "store": "المخزن",
      "day": "يوم",
      "month": "شهر",
      "year": "عام",
      "buyer-name": "اسم العميل",
      "buyer-address": "عنوان العميل",
      "buyer-tax-id": "الرقم الضريبى",
      "payment-method": "طريقة الدفع",
      "supply-id": "امر توريد رقم",
      "delivery-id": "اذن تسليم رقم",
      "sale-representative": "ممثل المبيعات",
      "tax-percentage": "النسبة الضريبية",
      "subtotal": "المجموع الفرعي",
      "payment-due": "التاريخ المحدد للدفع",
      "profits": "ارباح تجارية",
      "business-profits-tax": "ضريبة أرباح التجارية",
      "due_amount": "مبلغ مستحق",
      "review": "مراجعة",
      "unit": "وحدة",
      "total": "الاجمالى",
      "price": "السعر",
      "sales-invoices": "فواتير البيع",
      "purchase-invoices": "فواتير الشراء",
      "sales-invoice": "فواتير البيع",
      "add-purchase-invoice": "اضافة فاتورة شراء",
      "add-sales-invoice": "اضافة فاتورة بيع",
      "unit-price": "سعر الوحدة",
      "client-tax-id": "الرقم الضريبى للعميل",
      "client-address": "عنوان العميل",
      "accounting": "محاسبة",
      "home": "الصفحة الرئيسية",
      "organization-name-en": "اسم المنظمة باللغة الإنجليزية",
      "tax-id": "البطاقة الضريبية",
      "reg-id": "السجل التجاري",
      "organization-name-ar": "اسم المنظمة بالعربية",
      "comment": "تعليق",
      "barcode": "الرمز الشريطي",
      "min-sell-price": "أدنى سعر بيع",
      "add-account-year": "اضف سنة مالية",
      "account-years": "السنوات المالية",
      "receivables": "مستحقات",
      "payable": "مديونيات",
      "total-assets": "اجمالى الاصول",
      "in-english": "باللغة الانجليزية",
      "in-arabic": "باللغة العربية",
      "reserved-quantity": "الكمية المحجوزة",
      "coming-soon": "قريبا!",
      "discount-and-addition": "خصم و اضافة",
      "addition": "اضافة",
      "purchase-invoice-number": "رقم فاتورة الشراء",
      "sales-invoice-number": "رثم فاتورة البيع",
      "shares": "الاسهم",
      "add-shares": "اضف اسهم",
      "contributory-type": "نوع المساهم",
      "depreciation": "الاهلاك",
      "scrap-price": "سعر الخردة",
      "duration": "المدة",
      "custody": "العهدة",
      "add-custody": "اضف عهدة",
      "view-custody": "عرض العهدة",
      "code-id": "معرف الرمز",
      "product": "المنتج",
      "vendor-tax-id": "الرقم الضريبى",
      "view-depreciation": "عرض الاستهلاكات",
      "receipt-custody": "استلام العهدة",
      "extradition-custody": "تسليم العهدة",
      "edit-custody": "تعديل العهدة",
      "delete-custody": "حذف العهدة",
      "assets": "الاصول",
      "add-depreciation": "اضف اهلاك",
      "organization-type": "نوع المنظمة",
      "please-upload-your-own-logo": "الرجاء تحميل الشعار الخاص بك",
      "main": "رئيسية",
      "main-users": "المستخدمين الرئيسين",
      "supply-chain-method": "طريقة سلسلة التوريد",
      "user-type": "نوع المستخدم",
      "modules": "الوحدات",
      "privilage-name-en": "اسم الامتياز باللغة الانجليزية",
      "privilage-name-ar": "اسم الامتياز باللغة العربية",
      "mandatory": "الزامى",
      "employees-title": "الموظفين",
      "date-issued": "تاريخ الاصدار",
      "quotation": "الاسعار",
      "add-quotation": "اضافة اسعار",
      "quotation-invoice-number": "رقم فاتورة الاسعار",
      "terms-and-conditions": "الاحكام و الشروط",
      "tax-card": "البطاقة الضريبية",
      "purchase-quotation": "اسعار الشراء",
      "details": "التفاصيل",
      "main-code": "الكود الرئيسى",
      "invoice-purchase-date": "تاريخ فاتورة الشراء",
      "login-title": "عنوان تسجيل الدخول",
      "login-description": "وصف تسجيل الدخول",
      "reset-password-title": "إعادة تعيين كلمة المرور -",
      "reset-password-description": "إعادة تعيين وصف كلمة المرور",
      "set-password-title": "ضبط كلمة السر -",
      "set-password-description": "قم بتعيين كلمة المرور الجديدة الخاصة بك.",
      "dashboard-title": "لوحة القيادة -",
      "dashboard-description": "",
      "vendor": "الباعة",
      "vendors-title": "الباعة",
      "vendors-description": "",
      "profile-title": "الملف الشخصي",
      "profile-description": "",
      "data": "البيانات",
      "brief-in-english": "نبذة باللغة الانجليزية",
      "brief-in-arabic": "نبذة باللغة العربية",
      "currencies": "العملات",
      "currency": "عملة",
      "currencies-title": "العملات",
      "currencies-description": "",
      "currency-rates": "أسعار العملات",
      "currency-rate": "أسعار العملات",
      "currency-rates-title": "أسعار العملات",
      "currency-rates-description": "",
      "rates": "معدلات",
      "rate": "معدل",
      "iso": "ISO",
      "regions": "المناطق",
      "region": "منطقة",
      "regions-title": "المناطق -",
      "regions-description": "",
      "countries": "بلدان",
      "country": "دولة",
      "countries-title": "بلدان -",
      "countries-description": "",
      "cities": "مدن",
      "city": "مدينة",
      "cities-title": "مدن -",
      "cities-description": "",
      "areas": "المناطق",
      "area": "منطقة",
      "areas-title": "المناطق -",
      "areas-description": "",
      "taxes": "الضرائب",
      "taxes-title": "الضرائب -",
      "taxes-description": "",
      "tax-values": "القيم الضريبية",
      "tax-value": "قيمة الضريبة",
      "tax-values-title": "القيم الضريبية -",
      "tax-values-description": "",
      "persons": "الأشخاص",
      "person": "شخص",
      "persons-title": "شخص -",
      "persons-description": "",
      "organization-title": "منظمة -",
      "organization-description": "",
      "branch": "فرع",
      "branches-title": "الفروع -",
      "branches-description": "",
      "users-title": "المستخدمون -",
      "users-description": "",
      "corporates": "الشركات",
      "corporate": "شركة كبرى",
      "corporates-title": "الشركات -",
      "corporates-description": "",
      "clients-title": "العملاء -",
      "clients-description": "",
      "tax_id": "الرقم الضريبي",
      "reg_id": "السجل تجاري",
      "types": "أنواع",
      "forgot-password": "هل نسيت كلمة السر؟",
      "proceed": "تقدم",
      "skip": "يتخطى",
      "extract": "استخراج",
      "download": "تحميل",
      "create-report": "إنشاء تقرير",
      "all": "الجميع",
      "none": "لا أحد",
      "reports": "التقارير",
      "actual": "فعلي",
      "close": "قريب",
      "curruncy-code": "كود العملة",
      "added-date": "تاريخ الإضافة",
      "last-modified": "آخر تعديل",
      "save": "يحفظ",
      "privileges": "الامتيازات",
      "privilege": "شرف",
      "progress": "تقدم",
      "percentage": "النسبة المئوية",
      "in-active": "غير نشط",
      "model": "رقم الموديل",
      "expiration": "تاريخ انتهاء العرض",
      "quotation-start": "تاريخ بدء العرض",
      "client-code": "كود العميل",
      "payment": "طريقة الدفع",
      "production-time": "وقت الانتاج",
      "production-quantity": "كمية الانتاج",
      "reserved": "محجوز",
      "cost": "التكلفة",
      "stock-quantity": "كمية المخزون",
      "stock-location": "موقع المخزون",
      "raw": "خام",
      "processed": "مواد مجهزة",
      "production-item": "عنصر الإنتاج",
      "production-line": "خط الإنتاج",
      "add-production-request": "إضف طلب انتاج",
      "production-request": "طلب انتاج",
      "item": "عنصر",
      "production-page-title": "الانتاج",
      "fixed-assets-page-title": "اصول ثابتة",
      "fixed-assets": "اصول ثابتة",
      "name-hint": "أدخل الاسم",
      "email-hint": "example@domain.com",
      "password-hint": "",
      "new-password": "كلمة مرور جديدة",
      "new-password-hint": "",
      "confirm-password": "تأكيد كلمة المرور",
      "confirm-password-hint": "اعادة ادخال كلمة السر",
      "months": "الاشهر",
      "weekdays": "أيام الأسبوع",
      "telephone": "هاتف",
      "telephone-hint": "أدخل رقم الاتصال",
      "logo": "شعار",
      "crm-page-title": "إدارة علاقات العملاء",
      "crm": "إدارة علاقات العملاء",
      "payments": "طريقة الدفع",
      "ongoing": "جاري التنفيذ",
      "inventory": "المخزون",
      "goods": "البضائع",
      "production": "الانتاج",
      "goods-page-title": "البضائع",
      "tags-page-title": "العلامات",
      "add-goods": "اضف بضائع",
      "code": "الكود",
      "code-hint": "ادخل الكود",
      "first-name-hint": "ادخل الاسم الاول",
      "last-name-hint": "ادخل الاسم الاخير",
      "stocks": "المخازن",
      "production-items": "عناصر الإنتاج",
      "onhold": "فى الانتظار",
      "completed": "منتهى",
      "canceled": "ألغيت",
      "ecommerce": "التجارة الإلكترونية",
      "tags": "العلامات",
      "add-tags": "اضف علامات",
      "return-policy": "سياسة الإسترجاع",
      "add-return-policy": "إضف سياسة الإرجاع",
      "return-days": "ايام الإسترجاع",
      "categories": "الفئات",
      "add-categories": "اضف فئات",
      "brands": "العلامات التجارية",
      "add-brands": "اضف العلامات التجارية",
      "add-taxes": "اضف الضرائب",
      "tax-start-date": "تاريخ بدء الضريبة",
      "tax-end-date": "تاريخ أنتهاء الضريبة",
      "tax-perecentage": "نسبة الضريبة",
      "orders": "الطلبات",
      "client-phone": "رقم هاتف العميل",
      "building-number": "رقم المبنى",
      "building-floor": "رقم طابق المبنى",
      "apartment-number": "رقم الشقة",
      "postcode": "الرمز البريدي",
      "order-date": "تاريخ الطلب",
      "cancel-date": "تاريخ الإلغاء",
      "shipping-note": "ملاحظة الشحن",
      "thumbnails": "الصورة المصغرة",
      "shipping-price": "سعر الشحن",
      "discount-percentage": "نسبة الخصم",
      "minimum-order-quantity": "أقل كمية ممكن طلبها",
      "maximum-order-quantity": "كمية الطلب القصوى",
      "lead-time-days": "وقت تجهيز المنتج",
      "discount-price": "سعر الخصم",
      "minimum-stock": "الحد الأدنى من المخزون",
      "pre-order": "طلب مسبق",
      "unpre-order": "طلب غير مسبق",
      "show-stock": "عرض المخزون",
      "hide-stock": "اخفاء المخزون",
      "favorite": "المفضل",
      "unfavorite": "غير مفضل",
      "media": "الوسائط",
      "point-of-sales": "نقطة المبيعات",
      "point-of-sale": "نقطة البيع",
      "receipt": "فاتورة",
      "add-client": "اضف عميل",
      "import-product": "ادخال منتج",
      "import": "ادخال",
      "credit-card": "بطاقة إئتمان",
      "cash-on-delivery": "الدفع عند الاستلام",
      "vodafone-cash": "فودافون كاش",
      "filler": "text <filler> text2 <filler> end"
    }
  };
  //================================================
  // init translations
  static init() {
    //check if init
    // loop and get locales
    locales = [];
    _translations.forEach((key, value) {
      locales.add(Locale(key));
    });
    // set current locale
    Locale deviceLocale = Locale(
        (kIsWeb ? ui.window.locale.languageCode : Platform.localeName)
            .split("_")[0]);

    if (locales.contains(deviceLocale)) {
      current = deviceLocale;
    } else {
      current = locales[0];
    }
  }

  //================================================
  // change current locale
  static set(BuildContext context, Locale locale) {
    // set current if exists
    if (locales.contains(locale)) {
      current = locale;
      // rerun main for directionality
      main();
    }
  }

  //================================================
  // get a translation
  static String get(String? key, {List<String>? filler, Locale? locale}) {
    // return res
    String? r;
    // set locale
    if (locale == null || !locales.contains(locale)) locale = current;
    // get key
    if (_translations[locale.toString()]!.isNotEmpty &&
        _translations[locale.toString()]![key]!.isNotEmpty) {
      // put translation
      r = _translations[locale.toString()]![key]!;
      // apply filler
      if (filler != null) {
        for (String value in filler) {
          r = r!.replaceFirst("<filler>", value);
        }
      }
    }
    // return translation
    if (r == null) return "N/A";
    return r;
  }
}
