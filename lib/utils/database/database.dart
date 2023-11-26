import 'package:flutter/material.dart';
import 'package:whatsapp/utils/color_constant/color_constant.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/aacount.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/avatar.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/chats.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/help.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/invite.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/language.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/notifications.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/privacy.dart';
import 'package:whatsapp/view/PopUp_Screen/Popscreens/settings/widgets/storage.dart';

class database {
  static List<Map> forchat = [
    {
      "Name": "Ammus",
      "chat": "Haai da",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/woman9-256.png",
      "time": "4:50",
      "message": "8",
      "timeofstatus": "2:43 pm",
      "MissCaltime": "14 november, 12:34 pm"
    },
    {
      "Name": "Aswin",
      "chat": "dei",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man4-512.png",
      "time": "2:07",
      "message": "6",
      "timeofstatus": "2:23 pm",
      "MissCaltime": "10:25 pm"
    },
    {
      "Name": "Ananthu",
      "chat": "mownu",
      "profile":
          "https://cdn2.iconfinder.com/data/icons/avatars-2-7/128/7-512.png",
      "time": "4:05",
      "message": "1",
      "timeofstatus": "11:23 am",
      "MissCaltime": "03:45 pm"
    },
    {
      "Name": "Yadhu",
      "chat": "mlre",
      "profile":
          "https://cdn0.iconfinder.com/data/icons/standard-characters/100/proper_boy3-512.png",
      "time": "12:00",
      "message": "3",
      "timeofstatus": "2:23 pm",
      "MissCaltime": "03:45 pm"
    },
    {
      "Name": "Sanju",
      "chat": "recharge aakki thaa da",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/professions-1-4/132/30-512.png",
      "time": "9:30",
      "message": "1",
      "MissCaltime": "2:12 am",
      "timeofstatus": "11:14 pm",
    },
    {
      "Name": "Adharsh",
      "chat": "Bakki naale theraa",
      "profile":
          "https://th.bing.com/th/id/OIP.YGiI9uYC5lf5nC8bbL0cSAHaHa?pid=ImgDet&rs=1",
      "time": "2:10",
      "message": "8",
      "MissCaltime": "09:15 pm",
      "timeofstatus": "10:46 am",
    },
    {
      "Name": "Hari",
      "chat": "link ayakk da",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/professions-1-4/132/33-512.png",
      "time": "4:50",
      "message": "2",
      "MissCaltime": "04:55 pm",
      "timeofstatus": "09:46 am",
    },
    {
      "Name": "Abhi",
      "chat": "okk",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man7-512.png",
      "time": "11:15",
      "message": "6",
      "MissCaltime": "09:10 pm",
      "timeofstatus": "06:55 am",
    },
    {
      "Name": "Abhin",
      "chat": "seeri enna",
      "profile":
          "https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-5-512.png",
      "time": "8:40",
      "message": "1",
      "MissCaltime": "05:18 pm",
      "timeofstatus": "09:52 pm",
    },
    {
      "Name": "Midhun",
      "chat": "adaa",
      "profile":
          "https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-1-512.png",
      "time": "5:46",
      "message": "2",
      "MissCaltime": "07:34 am",
      "timeofstatus": "yesterday",
    },
    {
      "Name": "Varun",
      "chat": "ok bei",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/professions-2-4/132/67-512.png",
      "time": "3:28",
      "message": "1",
      "MissCaltime": " 11:34 pm",
      "timeofstatus": "yesterday",
    },
    {
      "Name": "Arya",
      "chat": "illa da",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/avatars-collection/256/21-512.png",
      "time": "7:30",
      "message": "4",
      "MissCaltime": "09:34 am",
      "timeofstatus": "yesterday",
    },
    {
      "Name": "Arun",
      "chat": "aah",
      "profile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man5-512.png",
      "time": "10:00",
      "message": "2",
      "MissCaltime": " 10:34 pm",
      "timeofstatus": "yesterday",
    }
  ];

  static List<Map> forstatus = [
    {
      "StatusName": "Ammus",
      "StatusImage":
          "https://i.pinimg.com/564x/a3/e9/14/a3e91477f97c62ae9a6dbf220a704cf1.jpg",
      "timeofstatus": "2:43 pm",
    },
    {
      "StatusName": "Aswin",
      "StatusImage":
          "https://i.pinimg.com/564x/0d/f5/eb/0df5eb8da9d790fe2947bf71fce456c1.jpg",
      "timeofstatus": "2:23 pm",
    },
    {
      "StatusName": "Ananthu",
      "StatusImage":
          "https://i.pinimg.com/564x/40/87/35/4087357bd99712656b3492b60cc9d677.jpg",
      "timeofstatus": "11:23 am",
    },
    {
      "StatusName": "Yadhu",
      "StatusImage":
          "https://i.pinimg.com/564x/6f/e0/bf/6fe0bf505347615619b9f4dbb131671a.jpg",
      "timeofstatus": "2:23 pm",
    },
    {
      "StatusName": "Sanju",
      "StatusImage":
          "https://i.pinimg.com/564x/38/07/f0/3807f089f04f206d2e27c38c22efaa24.jpg",
      "timeofstatus": "11:14 pm",
    },
    {
      "StatusName": "Adharsh",
      "StatusImage":
          "https://i.pinimg.com/736x/a9/93/2e/a9932e5ba59e145003544eab8d21c56f.jpg",
      "timeofstatus": "10:46 am",
    },
    {
      "StatusName": "Hari",
      "StatusImage":
          "https://i.pinimg.com/564x/1c/e1/2c/1ce12c85762d920181382f2f17fb0a38.jpg",
      "timeofstatus": "09:46 am",
    },
    {
      "StatusName": "Abhi",
      "StatusImage":
          "https://i.pinimg.com/564x/72/32/80/7232807f89ae6f980654153cc610168e.jpg",
      "timeofstatus": "06:55 am",
    },
    {
      "StatusName": "Abhin",
      "StatusImage":
          "https://i.pinimg.com/564x/6f/10/f9/6f10f9b1a1aef4173e9f4a5d12c8a4ae.jpg",
      "timeofstatus": "09:52 pm",
    },
    {
      "StatusName": "Midhun",
      "StatusImage":
          "https://i.pinimg.com/564x/5a/31/c4/5a31c46b0d3ecfc910febc816f3fdead.jpg",
      "timeofstatus": "yesterday",
    },
    {
      "StatusName": "Varun",
      "StatusImage":
          "https://i.pinimg.com/564x/49/b8/ac/49b8aca83b062694bfec15041ffbb39a.jpg",
      "timeofstatus": "yesterday",
    },
    {
      "StatusName": "Arya",
      "StatusImage":
          "https://i.pinimg.com/564x/43/4c/62/434c6203fc29f88dfb0305e6c927ea98.jpg",
      "timeofstatus": "yesterday",
    },
    {
      "StatusName": "Arun",
      "StatusImage":
          "https://i.pinimg.com/564x/ca/3d/11/ca3d11216bbb50de4160a3ac11ca863d.jpg",
      "timeofstatus": "yesterday",
    }
  ];

  static List<Map> forcall = [
    {
      "CallName": "Ammus",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/woman9-256.png",
      "MissCaltime": "14 november, 12:34 pm"
    },
    {
      "CallName": "Aswin",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man4-512.png",
      "MissCaltime": "10:25 pm"
    },
    {
      "CallName": "Ananthu",
      "CallProfile":
          "https://cdn2.iconfinder.com/data/icons/avatars-2-7/128/7-512.png",
      "MissCaltime": "03:45 pm"
    },
    {
      "CallName": "Yadhu",
      "CallProfile":
          "https://cdn0.iconfinder.com/data/icons/standard-characters/100/proper_boy3-512.png",
      "MissCaltime": "03:45 pm"
    },
    {
      "CallName": "Sanju",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/professions-1-4/132/30-512.png",
      "MissCaltime": "2:12 am",
    },
    {
      "CallName": "Adharsh",
      "CallProfile":
          "https://th.bing.com/th/id/OIP.YGiI9uYC5lf5nC8bbL0cSAHaHa?pid=ImgDet&rs=1",
      "MissCaltime": "09:15 pm",
    },
    {
      "CallName": "Hari",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/professions-1-4/132/33-512.png",
      "MissCaltime": "04:55 pm",
    },
    {
      "CallName": "Abhi",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man7-512.png",
      "MissCaltime": "09:10 pm",
    },
    {
      "CallName": "Abhin",
      "CallProfile":
          "https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-5-512.png",
      "MissCaltime": "05:18 pm",
    },
    {
      "CallName": "Midhun",
      "CallProfile":
          "https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-1-512.png",
      "MissCaltime": "07:34 am",
    },
    {
      "CallName": "Varun",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/professions-2-4/132/67-512.png",
      "MissCaltime": " 11:34 pm",
    },
    {
      "CallName": "Arya",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/avatars-collection/256/21-512.png",
      "MissCaltime": "09:34 am",
    },
    {
      "CallName": "Arun",
      "CallProfile":
          "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man5-512.png",
      "MissCaltime": " 10:34 pm",
    }
  ];

  static List<Map> settings = [
    {
      "icon": Icon(Icons.key, color: colorconstant.PrimaryGrey,),
      "title": "Account",
      "subtitle": "Security notifications,change number"
    },
    {
      "icon": Icon(Icons.lock, color: colorconstant.PrimaryGrey),
      "title": "Privacy",
      "subtitle": "Block contacts, disappearing message"
    },
    {
      "icon": Icon(Icons.tag_faces, color: colorconstant.PrimaryGrey),
      "title": "Avatar",
      "subtitle": "Create, edit, profile photo"
    },
    {
      "icon": Icon(Icons.chat, color: colorconstant.PrimaryGrey),
      "title": "Chats",
      "subtitle": "Theme, walpapers, chat history"
    },
    {
      "icon": Icon(Icons.notifications, color: colorconstant.PrimaryGrey),
      "title": "Notifications",
      "subtitle": "Message,group & call tones"
    },
    {
      "icon": Icon(Icons.data_usage, color: colorconstant.PrimaryGrey),
      "title": "Storage and data",
      "subtitle": "Network usage,auto-download"
    },
    {
      "icon": Icon(Icons.language, color: colorconstant.PrimaryGrey),
      "title": "App language",
      "subtitle": "English (device's language)"
    },
    {
      "icon": Icon(Icons.help_outline, color: colorconstant.PrimaryGrey),
      "title": "Help",
      "subtitle": "Help centre,contact us,privacy policy"
    },
    {
      "icon": Icon(Icons.group, color: colorconstant.PrimaryGrey),
      "title": "Invite a friend",
      "subtitle": ""
    },
  ];
}

class screns {
  static List screen = [
    account(),
    privacy(),
    AvatarScreen(),
    chats(),
    NotificationScreen(),
    StorageScreen(),
    LanguageScreen(),
    HelpScreen(),
    InviteScreen()
  ];
  static List<Map> accountscreen = [
    {
      "AccountIcon": Icon(
        Icons.security,
        color: colorconstant.PrimaryGrey,
      ),
      "AccountItems": "security notifications"
    },
    {
      "AccountIcon": Icon(Icons.verified, color: colorconstant.PrimaryGrey),
      "AccountItems": "Two step verification"
    },
    {
      "AccountIcon":
          Icon(Icons.change_history, color: colorconstant.PrimaryGrey),
      "AccountItems": "change number"
    },
    {
      "AccountIcon": Icon(Icons.info, color: colorconstant.PrimaryGrey),
      "AccountItems": "Request account info"
    },
    {
      "AccountIcon": Icon(Icons.person_add_alt_1_rounded,
          color: colorconstant.PrimaryGrey),
      "AccountItems": "Add account"
    },
    {
      "AccountIcon": Icon(Icons.delete, color: colorconstant.PrimaryGrey),
      "AccountItems": "Delete account"
    },
  ];
}
