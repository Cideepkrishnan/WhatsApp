import 'package:flutter/material.dart';
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

  static List<Map> settings = [
    {
      "icon": Icon(Icons.key),
      "title": "Account",
      "subtitle": "Security notifications,change number"
    },
    {
      "icon": Icon(Icons.lock),
      "title": "Privacy",
      "subtitle": "Block contacts, disappearing message"
    },
    {
      "icon": Icon(Icons.tag_faces),
      "title": "Avatar",
      "subtitle": "Create, edit, profile photo"
    },
    {
      "icon": Icon(Icons.chat),
      "title": "Chats",
      "subtitle": "Theme, walpapers, chat history"
    },
    {
      "icon": Icon(Icons.notifications),
      "title": "Notifications",
      "subtitle": "Message,group & call tones"
    },
    {
      "icon": Icon(Icons.data_usage),
      "title": "Storage and data",
      "subtitle": "Network usage,auto-download"
    },
    {
      "icon": Icon(Icons.language),
      "title": "App language",
      "subtitle": "English (device's language)"
    },
    {
      "icon": Icon(Icons.help_outline),
      "title": "Help",
      "subtitle": "Help centre,contact us,privacy policy"
    },
    {"icon": Icon(Icons.group), "title": "Invite a friend", "subtitle": ""},
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
      "AccountIcon": Icon(Icons.security),
      "AccountItems": "security notifications"
    },
    {
      "AccountIcon": Icon(Icons.verified),
      "AccountItems": "Two step verification"
    },
    {
      "AccountIcon": Icon(Icons.change_history),
      "AccountItems": "change number"
    },
    {"AccountIcon": Icon(Icons.info), "AccountItems": "Request account info"},
    {
      "AccountIcon": Icon(Icons.person_add_alt_1_rounded),
      "AccountItems": "Add account"
    },
    {"AccountIcon": Icon(Icons.delete), "AccountItems": "Delete account"},
  ];
}
