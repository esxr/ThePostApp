import 'package:http/http.dart' as http;
import 'dart:convert';

// return List<Map<String, Object>>
Future<List<dynamic>> noticesApi() async {
  return notices['data'];
}


var notices = {
    "status": "OK",
    "data": [
      {
        "_id": "5da73264edced36fb8401d96",
        "title": "Assignment Week Schedule",
        "content": "The assignment week schedules are attached here. All assignments will be conducted in the specified timeline.",
        "date": "2019-7-30",
        "time": "20:35",
        "imageLink": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/08/assignment_week_schedule.png?zoom=2&fit=679%2C674&ssl=1",
        "pdfLink": ""
      },
      {
        "_id": "5da73315edced36fb8401d97",
        "title": "End Semester Timetable",
        "content": "End Semester timetable for B.Tech, M.Tech and M.C.A",
        "date": "2019-10-1",
        "time": "20:39",
        "imageLink": "",
        "pdfLink": "https://bit.ly/2qiV0gZ"
      },
      {
        "_id": "5da88f51344a684fb89094c1",
        "title": "Sessional II Timetable",
        "content": "Second Sessional timetable for III, V and VII semesters have been attached here.",
        "date": "2019-10-17",
        "time": "21:24",
        "imageLink": "",
        "pdfLink": "https://rb.gy/4ed268"
      },
      {
        "_id": "5db7c171f143874afaf5636a",
        "title": "Preference for Electives for the Even Semester ",
        "content": "This circular contains information regarding minor specialisation and the last day to enter preferences for the Open Electives. ",
        "date": "",
        "time": "",
        "imageLink": "https://i.ibb.co/dbzXLFL/C194-DD35-A511-4426-B450-A411392-BA476.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5db92d53f143874afaf5636b",
        "title": "Mobiles and wallets snatched. ",
        "content": "Students are requested to be careful.",
        "date": "",
        "time": "11:42",
        "imageLink": "https://i.ibb.co/pfPkYJM/CAE83-C8-E-E45-E-4-D9-B-8039-DCAC5-EE9188-F.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5dc0725ff143874afaf5636c",
        "title": "Students are requested to make a note of the following. ",
        "content": "Reports on the testing of water samples of MIT have indicated that the water purity is within the acceptable limit. The administration has hence confirmed that the water is safe for drinking.",
        "date": "",
        "time": "00:17",
        "imageLink": "",
        "pdfLink": ""
      },
      {
        "_id": "5dc8f4c1199c5804a40475b4",
        "title": "Change in end-semester examination timings for 1st and 3rd semester students.",
        "content": "The end-semester examination has been preponed by half an hour for 1st and 3rd semester students. The new timings are 8:30 am to 11:30 am. Here is the revised timetable.",
        "date": "",
        "time": "11:11",
        "imageLink": "",
        "pdfLink": "https://bit.ly/2p4SVEU"
      },
      {
        "_id": "5dcc090f199c5804a40475b5",
        "title": "Access old question papers",
        "content": "Old question papers, from the years 2006 to 2018, are available on the library portal.  The link can be accessed through any internet network.",
        "date": "",
        "time": "19:00",
        "imageLink": "",
        "pdfLink": "https://bit.ly/32Lbuvw"
      },
      {
        "_id": "5dd0e4e2199c5804a40475b6",
        "title": "Udupi-Parkala main road to be closed for construction.",
        "content": "The approach road to MIT from the Udupi-Parkala main road will be closed for a duration of one month with effect from 18/11/19 due to construction work.",
        "date": "",
        "time": "11:42",
        "imageLink": "",
        "pdfLink": "https://bit.ly/2COW7HZ"
      },
      {
        "_id": "5e0dda65c026b207bed22e1c",
        "title": "Even Semester Assignment Week Schedule",
        "content": "Here's the assignment week schedule for the even semester (Jan to May). Assignments of all subjects will be conducted in the time-frame specified in this document.",
        "date": "2020-1-1",
        "time": "12:00",
        "imageLink": "https://i.ibb.co/TH9nxky/Circular-for-Assignment-Week-1.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e14051cc026b207bed22e1d",
        "title": "IIE OE Classrooms and Timings",
        "content": "All Inter-Institute (IIE) Open Electives will be held as shown in the schedule.",
        "date": "2020-1-6",
        "time": "09:00",
        "imageLink": "https://i.ibb.co/bRkxPqD/Class-Room-and-Timings-for-outside-OEs-page-0001.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e18c6d4c026b207bed22e20",
        "title": "Paper Seeing of UG/PG End Semester (non-F) and Makeup (F and Non-F) Exams",
        "content": "All semesters B. Tech paper seeing for \"F\" Grade and \"non-F\" Grade courses is scheduled as mentioned in the attachment.",
        "date": "2020-1-10",
        "time": "23:00",
        "imageLink": "https://i.ibb.co/DV6VQyg/Revaluation-Circular-page-0001.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e3b0973140e0b1c61b7b0f6",
        "title": "College Reopening Dates",
        "content": "Classes for III, V and VII semester B. Tech and III semester MCA for the next academic year will start from July 13, 2020 (Monday).",
        "date": "",
        "time": "16:00",
        "imageLink": "https://i.ibb.co/CJMt09k/Notice-regarding-College-Reopening-date-for-2020-21-page-0001.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e41134a63ee717254ecfc27",
        "title": "IV and VI Semester Sessional I Timetable",
        "content": "Here's the timetable of the upcoming sessional exam for 4th and 6th semester students.",
        "date": "",
        "time": "12:00",
        "imageLink": "",
        "pdfLink": "https://drive.google.com/file/d/1oyjjiU1a7LY4EayqS1BgycHzQO7az1zn/view?usp=drivesdk"
      },
      {
        "_id": "5e41141963ee717254ecfc28",
        "title": "Auction Notice",
        "content": "All unclaimed items which were found on MIT premises by the Security Department will be part of an auction which will be held on 10th February at 6 PM in NLH 103.",
        "date": "",
        "time": "13:00",
        "imageLink": "https://i.ibb.co/SyqQBpk/Auction-Notice-page-0001.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e44393863ee717254ecfc2a",
        "title": "VI Semester Sessional I Timetable for CCE and IT branches",
        "content": "The ICT department's updated Sessional I timetable for the VI semester students can be found here.",
        "date": "2020-2-12",
        "time": "18:00",
        "imageLink": "https://i.ibb.co/R0WRH1g/Whats-App-Image-2020-02-12-at-21-15-14.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e4e0aa171712f265d3e4586",
        "title": "Hostel Allotment Policy for Seniors",
        "content": "Hostel Allotment Process will start for senior students from 20th February, 2020. All details are mentioned in the PDF attached here.",
        "date": "2020-2-19",
        "time": "21:00:00.000",
        "imageLink": "",
        "pdfLink": "https://firebasestorage.googleapis.com/v0/b/mit-post-244d7.appspot.com/o/hostel%20allotment%20policy%20for%20seniors%202020-21-converted.pdf?alt=media&token=6c9b792b-63c3-460b-96cf-b5e93f5d3171"
      },
      {
        "_id": "5e54a99c2bc35c11abe18c40",
        "title": "Revised College Reopening Date",
        "content": "The classes for III, V and VII semester B.Tech and III semester MCA will commence on July 20, 2020 for the coming academic year (2020-2021).",
        "date": "",
        "time": "10:00",
        "imageLink": "https://i.ibb.co/2NWZn8W/IMG-20200225-WA0038.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e671314d5a0e523a4d3ff13",
        "title": "I-ON Wi-Fi Disconnection Issue",
        "content": "Dear User,\r\nI-ON Wi-Fi is enabled through MAC based authentication with ONLY ONE device login allowed on the network simultaneously. Please turn OFF Wi-Fi on first logged-in device before using it in second device. Keeping Wi-Fi \"ON\" in more than one device at the same time will result in disconnection issue. Help us to serve you better! Thank you.",
        "date": "",
        "time": "08:00",
        "imageLink": "",
        "pdfLink": ""
      },
      {
        "_id": "5e69d84084c56d288153b15d",
        "title": "Guidance and FAQ on COVID-19",
        "content": "Everyone is expected to carefully go through this document and adhere strictly to the guidelines specified in the document to prevent the outbreak of COVID-19.",
        "date": "2020-3-11",
        "time": "18:00",
        "imageLink": "",
        "pdfLink": "https://firebasestorage.googleapis.com/v0/b/mit-post-244d7.appspot.com/o/Guidance%20on%20COVID-19%20V.1.0%20March%2010%2C%202020_compressed.pdf?alt=media&token=a7da701f-5aef-4564-91a7-4f2fe4cb8623"
      },
      {
        "_id": "5e6b36aa84c56d288153b15e",
        "title": "Notice for MIT Swimming Pool Members",
        "content": "The MIT Swimming Pool will be closed (with immediate effect) as a precautionary measure against the spread of COVID-19 until any further notice for the authorities.",
        "date": "",
        "time": "12:00",
        "imageLink": "https://i.ibb.co/n1Qh8VP/IMG-20200313-WA0026.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e6b8c8e84c56d288153b15f",
        "title": "Class Cancellation for MIT (till 20th March)",
        "content": "The following has been recieved from MAHE administration and has been confirmed from MIT administration. Examinations will be conducted as planned and if there are any information regarding the same then we would be forwarding them to y'all. ~MIT Student Council",
        "date": "",
        "time": "18:30",
        "imageLink": "https://i.ibb.co/Wyg1wJK/IMG-20200313-WA0048.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e6bc27984c56d288153b160",
        "title": "University Travel Policy for Students (during 13 March to 20 March)",
        "content": "Though university has declared holiday, students are advised not to travel, as a precautionary measure. However, if the students still want to go ahead with the travelling, the wards may have to be quarantined after getting back for 14 days if they are travelling through or coming from affected areas and the system will not be responsible for missing of classes or exams during the period of quarantine.\r\n\r\nNote to the Parents:\r\n\r\nRequest you to kindly coperate for the well being of the society.\r\nSo, please state in your mail that \"we the parents of ..... take full responsibility for the safety of our ward and will not hold the management of MAHE responsible for any illness of our wards contacted during travel' during the holidays declared by MAHE and will abide by the procedures as mentioned on first paragraph.",
        "date": "",
        "time": "22:30",
        "imageLink": "",
        "pdfLink": ""
      },
      {
        "_id": "5e6cd92d84c56d288153b161",
        "title": "Classes will not be held till 28th March",
        "content": "In an attempt to create a safe environment in Manipal for all the students, classes will not be held till 28th March. All details are mentioned in the document attached.",
        "date": "2020-3-14",
        "time": "18:00",
        "imageLink": "",
        "pdfLink": "https://bit.ly/2U5uGlp"
      },
      {
        "_id": "5e6cf9fa84c56d288153b162",
        "title": "MAHE Guidelines summarised by the Student Council",
        "content": "This is a document clarifying all the doubts and queries from The Student Council, MIT.\r\nWe have tried to cover all the points and updates as discussed with the administration today evening. \r\n\r\nA humble request to all the students to take social responsibility in this situation and fill the travel form that is being circulated in case they are travelling.\r\n\r\nhttps://forms.gle/s28NA47VTPPHx8Jb8\r\n\r\nIn case someone is showing symptoms of the Covid-19, they are requested to get themselves screened and take required steps to contain its spread and ensure well being of others. \r\n\r\nPlease take precautionary measures and maintain hygienic practices whether you are staying in Manipal campus or in your hometown and stay safe.\r\n\r\n-Student Council, MIT",
        "date": "2020-3-14",
        "time": "21:00",
        "imageLink": "",
        "pdfLink": "https://bit.ly/2vXueOn"
      },
      {
        "_id": "5e71e6bf84c56d288153b163",
        "title": "Classes will not be held till 31st May",
        "content": "Due to the safety concerns after the COVID-19 spread, MIT has decided to commence classes from June 1, 2020. All guidelines are as mentioned in the document.",
        "date": "2020-3-18",
        "time": "14:30",
        "imageLink": "https://i.ibb.co/7zhjCSp/IMG-20200318-WA0013.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e74edd984c56d288153b164",
        "title": "Revised Academic Calendar",
        "content": "The Revised academic calender is confirmed and dates are final. More information about assignment 4 would be communicated once college reopens, as of now these dates are final.",
        "date": "",
        "time": "20:00",
        "imageLink": "https://i.ibb.co/7zFdkd4/IMG-20200320-WA0017.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5e75dc3484c56d288153b165",
        "title": "Lecture Capture for Students",
        "content": "View the document for more details about the next course of action taken by MIT.",
        "date": "",
        "time": "14:00",
        "imageLink": "https://i.ibb.co/82SnscT/Letter-Lecture-Capture-to-students-mail-page-0001-1.jpg",
        "pdfLink": ""
      },
      {
        "_id": "5ea2fa15fefbb3704b27861e",
        "title": "MIT Library e-resources",
        "content": "You can use the following login credentials to use MIT library e-resources.\r\n\r\nWebsite: https://mitezproxy.manipal.edu/login\r\n\r\nUsername: mitlibuser\r\nPassword: mitlibuser",
        "date": "",
        "time": "18:30",
        "imageLink": "",
        "pdfLink": ""
      }
    ]
  };
