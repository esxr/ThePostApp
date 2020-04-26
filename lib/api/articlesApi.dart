import 'package:http/http.dart' as http;
import 'dart:convert';

// return List<Map<String, Object>>
Future<List<dynamic>> articlesApi() async {
  return articles;
}

var articles = [
    {
      "_id": 29659,
      "category": "General",
      "timestamp": "2020-04-20T19:30:57",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "20"
      },
      "title": "A Helping Hand—MAHE Students Assist the Community During COVID-19",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/04/14.jpeg?fit=1135%2C851&ssl=1",
      "link": "https://themitpost.com/helping-hand-mahe-students-assist-community-covid-19/",
      "author": {
        "name": "Adithya Nayak",
        "url": "https://themitpost.com/author/adithya/"
      },
      "message": "As most of the world is facing a lockdown, some people do not have access to most basic necessities.\nWe take a look at some initiatives taken by MAHE students and alumni, who are fighting against this consequence of the pandemic by organising fundraisers, providing food and sanitation to the needy, and much more.\n"
    },
    {
      "_id": 29254,
      "category": "Fine Print",
      "timestamp": "2020-04-17T21:00:42",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "17"
      },
      "title": "Dealing with Disasters—An Insight into Kerala&#8217;s Management",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/04/testing.jpg?fit=500%2C280&ssl=1",
      "link": "https://themitpost.com/dealing-with-disasters-the-kerala-model/",
      "author": {
        "name": "Parthiv Menon",
        "url": "https://themitpost.com/author/parthiv/"
      },
      "message": "Following three consecutive disasters that put Kerala&#8217;s disaster management model to the test, the coastal state now stands firm in its battle against the ongoing pandemic. The fine tuning of the model, coupled with a united front by the people of the state, continues to stand as an excellent example for the rest of the country to follow.\n"
    },
    {
      "_id": 29366,
      "category": "General",
      "timestamp": "2020-04-13T13:45:57",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "13"
      },
      "title": "COVID-19 Quarantine—Locking Down New Skills",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/04/feature-01.jpg?fit=1920%2C1011&ssl=1",
      "link": "https://themitpost.com/covid-19-quarantine-locking-new-skills/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "During this quarantine period, it can be difficult to come up with activities to keep ourselves busy and motivated throughout the day. Here we have compiled a list of skills, with resources and quotes from professionals, that beginners in the field can take up at home, while staying safe and healthy.\n"
    },
    {
      "_id": 29422,
      "category": "Fests",
      "timestamp": "2020-04-12T20:35:59",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "12"
      },
      "title": "Psychus — Revels &#8217;20",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/04/Psychus-logo-01.jpg?fit=1920%2C1011&ssl=1",
      "link": "https://themitpost.com/psychus-revels-20/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Psychus encouraged participants to think outside the box and tease their brains with unique, challenging and fun events. Contestants were put through multiple rounds that tested their IQ and only the wittiest of them could prevail and emerge as winners.\n"
    },
    {
      "_id": 29450,
      "category": "News",
      "timestamp": "2020-04-09T18:56:29",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "9"
      },
      "title": "Manipal Students Win Big at MIT COVID-19 Challenge",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/04/Screenshot-2020-04-09-at-6.21.59-PM.png?fit=450%2C201&ssl=1",
      "link": "https://themitpost.com/manipal-students-win-big-mit-covid-19-challenge/",
      "author": {
        "name": "Vinayak Srivastava",
        "url": "https://themitpost.com/author/vinayak/"
      },
      "message": "Massachusetts Institute of Technology recently organised an international virtual Hackathon to tackle the major problems related to the ongoing COVID-19 pandemic. Two teams with students hailing from Manipal Institute of Technology placed first in their respective tracks by building innovative solutions and tackling real-world problems effectively. \n"
    },
    {
      "_id": 29005,
      "category": "Sitting Down With",
      "timestamp": "2020-04-05T19:00:24",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "5"
      },
      "title": "The Rising Stars of Comedy—Sitting Down With Rahul Dua and Nishant Suri",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/04/WhatsApp-Image-2020-04-04-at-10.15.08-e1585975656146.jpeg?fit=506%2C544&ssl=1",
      "link": "https://themitpost.com/rising-stars-comedy-sitting-rahul-dua-nishant-suri/",
      "author": {
        "name": "Vedant Seigell",
        "url": "https://themitpost.com/author/vedant/"
      },
      "message": "Comedians Rahul Dua and Nishant Suri, of Comicstaan fame, featured on the Proshow lineup for Revels&#8217;20. We, at The MIT Post, had the opportunity to interview them. Read on to find out what transpired. \n"
    },
    {
      "_id": 29083,
      "category": "Event Reports",
      "timestamp": "2020-04-03T17:30:53",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "3"
      },
      "title": "Of Analytics and Finances—Case on Point",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/04/0-2.jpg?fit=1080%2C1080&ssl=1",
      "link": "https://themitpost.com/analytics-finances-case-point/",
      "author": {
        "name": "Praharsh Snehi",
        "url": "https://themitpost.com/author/praharsh/"
      },
      "message": "The Consulting Club at Manipal conducted its first event, Case on Point, on 12th March. The event uniquely catered to students interested in the financial and business sector by teaching the art of case studying, required to pursue this field. \n"
    },
    {
      "_id": 29533,
      "category": "Revels",
      "timestamp": "2020-04-02T19:30:00",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "2"
      },
      "title": "The MIT Debate Tournament—Revels&#8217;20",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/04/MitDT-01.png?fit=1920%2C1011&ssl=1",
      "link": "https://themitpost.com/mit-debate-tournament-revels20/",
      "author": {
        "name": "Sarath Yelisetty",
        "url": "https://themitpost.com/author/sarath/"
      },
      "message": "A flagship event, The MIT DT was a national level debate competition conducted that garnered widespread participation. With participants divided into adjudicators and speakers, the contest culminated in a battle of wit and savvy.\n"
    },
    {
      "_id": 29262,
      "category": "National &amp; World",
      "timestamp": "2020-04-01T20:30:47",
      "date": {
        "year": "2020",
        "month": "Apr",
        "day": "1"
      },
      "title": "The Nation Stands Still—COVID-19 Lockdown in India",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/03/WhatsApp-Image-2020-03-29-at-12.00.44-PM.jpg?fit=1920%2C1080&ssl=1",
      "link": "https://themitpost.com/nation-stands-still-covid-19-lockdown-india/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "In December 2019, when news arrived from Wuhan about a deathly new strain of coronavirus, hardly anyone could have predicted the worldwide pandemic that was on the horizon. As the nation comes to a halt and health care workers battle this disease from the front lines, the migrant workers and farmers have their own struggle underway.\n"
    },
    {
      "_id": 29039,
      "category": "Event Reports",
      "timestamp": "2020-03-31T20:39:56",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "31"
      },
      "title": "Peeking Through the Window–A Tech Talk by Miri Rodriguez",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/03/ftimage.jpg?fit=626%2C417&ssl=1",
      "link": "https://themitpost.com/tech-talk-miri-rodriguez/",
      "author": {
        "name": "Parthiv Menon",
        "url": "https://themitpost.com/author/parthiv/"
      },
      "message": "IOSD organised an interactive tech-talk session between the students and Miri Rodriguez, the global head of Internship at Microsoft. The students were briefed on the nuances of working in the corporate world and the various opportunities available to them at Microsoft. The importance of empathy in a workspace was also stressed upon by the speaker as she interacted with the audience. \n"
    },
    {
      "_id": 29092,
      "category": "Sitting Down With",
      "timestamp": "2020-03-30T20:30:07",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "30"
      },
      "title": "MAHE Professors Participate in 39th Indian Expedition to Antarctica",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/03/548c5f1e-c3a4-4c17-9bbe-0c2650b821f1.jpg?fit=1280%2C673&ssl=1",
      "link": "https://themitpost.com/mahe-professors-participate-39th-indian-expedition-antarctica/",
      "author": {
        "name": "Adithya Nayak",
        "url": "https://themitpost.com/author/adithya/"
      },
      "message": "Two professors from MAHE, Dr Krishnamurthy Bhat and Dr Anish Warrier, recently participated in a research expedition to the continent of Antarctica. The MIT Post got a chance to speak to the pair and learn about their journey, their research, and life at the South Pole.\n"
    },
    {
      "_id": 29189,
      "category": "Revels",
      "timestamp": "2020-03-30T17:00:31",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "30"
      },
      "title": "Lensation—Revels&#8217;20",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/03/3ec91f6d-0d36-4029-a990-958e1071a1aa.jpg?fit=1168%2C615&ssl=1",
      "link": "https://themitpost.com/lensation-revels20/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Lensation, organised by the Photography Club Manipal, offered photography enthusiasts a chance to showcase their talents through varying platforms. With attempts to challenge participants, the three events held under the category saw photographers take different angles all while portraying their best works. \n"
    },
    {
      "_id": 29148,
      "category": "Revels",
      "timestamp": "2020-03-27T20:30:38",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "27"
      },
      "title": "Crescendo—Revels &#8217;20",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/03/crescendo-01.png?fit=1920%2C1011&ssl=1",
      "link": "https://themitpost.com/crescendo-revels-20/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Crescendo allowed the music aficionados of Manipal to show their rhythmic caliber on stage. As the audiences were engulfed in vibrant yet soulful music, the participants held nothing back to win the competitions. From Acapellas to Rap Battles, Crescendo allured to every member of the music community.\n"
    },
    {
      "_id": 29110,
      "category": "Revels",
      "timestamp": "2020-03-24T20:30:09",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "24"
      },
      "title": "Revels’20—Human Library",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/03/humanLibFinal.png?fit=1900%2C1000&ssl=1",
      "link": "https://themitpost.com/revels20-human-library/",
      "author": {
        "name": "Ramya Nadig",
        "url": "https://themitpost.com/author/ramya/"
      },
      "message": "The Human Library showcased a plethora of people from various walks of life akin to books, sharing their stories. As the speakers covered topics ranging from mental health and loss to discovering oneself, it helped attendees expand their own worldview and gain novel perspectives. \n"
    },
    {
      "_id": 29031,
      "category": "General",
      "timestamp": "2020-03-21T20:45:46",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "21"
      },
      "title": "Connecting With the Past—A Tech Talk by Tanay Pratap",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/03/images.jpeg?fit=633%2C484&ssl=1",
      "link": "https://themitpost.com/connecting-past-tech-talk-tanay-pratap/",
      "author": {
        "name": "Arnaav Anand",
        "url": "https://themitpost.com/author/arnaav/"
      },
      "message": "Returning to his own college from a successful career in Microsoft, Tanay Pratap sought to impart his knowledge and experience into the future entrepreneurs and tech enthusiasts of Manipal. The event was a huge success as each member of the audience grasped something from the talk.  \n"
    },
    {
      "_id": 28792,
      "category": "Revels",
      "timestamp": "2020-03-15T10:00:00",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "15"
      },
      "title": "Donating For A Cause, One Drop At A Time—RedX Blood Donation Drive",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/03/Blood-Donation-Camp.jpg?fit=488%2C1040&ssl=1",
      "link": "https://themitpost.com/redx-blood-donation-camp/",
      "author": {
        "name": "Parthiv Menon",
        "url": "https://themitpost.com/author/parthiv/"
      },
      "message": "On the late Sunday afternoon of 1 March, 2020, RedX in collaboration with the KMC Blood Bank organised their first blood donation drive. With the hopes of garnering people for a social cause, the club held their event prior to the college&#8217;s much awaited cultural festival—Revels. \n"
    },
    {
      "_id": 28821,
      "category": "General",
      "timestamp": "2020-03-02T19:11:59",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "2"
      },
      "title": "Sailing Towards a Global Epidemic",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/03/coronavirus-fi.jpg?fit=800%2C450&ssl=1",
      "link": "https://themitpost.com/sailing-towards-global-epidemic/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "In a haunting parallel to the barges that brought the Black Death to Europe, an isolated cruise ship quarantined off the coast of Japan has become the symbol of the COVID-19—the disease caused by a novel coronavirus strain that has already taken more than 3,000 lives. Read on to learn more about the origins of this virus, and how it is gradually bringing the whole world to its knees. \n"
    },
    {
      "_id": 28518,
      "category": "Science and Technology",
      "timestamp": "2020-03-02T19:11:50",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "2"
      },
      "title": "The Indian Ocean Dipole",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/01/WhatsApp-Image-2020-03-02-at-7.21.50-PM.jpeg?fit=735%2C413&ssl=1",
      "link": "https://themitpost.com/indian-ocean-dipole/",
      "author": {
        "name": "Ashwin Suresh",
        "url": "https://themitpost.com/author/ashwinm/"
      },
      "message": "With major environmental calamities around the world increasing in recent times, we take a look at a few of the most devastating events that can be traced back to a common cause—The Indian Ocean Dipole. Read on to learn how this phenomenon resulted in the Australian wildfires, Indian floods, and African locusts all on its own.\n"
    },
    {
      "_id": 28756,
      "category": "Revels",
      "timestamp": "2020-03-02T19:11:47",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "2"
      },
      "title": "Backstage at Revels—Unsung Heroes of the Fest",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/01/stage11-01.png?fit=1985%2C1389&ssl=1",
      "link": "https://themitpost.com/backstage-revels-unsung-heroes-fest/",
      "author": {
        "name": "Vinayak Srivastava",
        "url": "https://themitpost.com/author/vinayak/"
      },
      "message": "Revels is a culmination of the work put in by people ranging from the Security to the Cafeteria staff, who strive towards providing the students with an unparalleled experience during the fest each year. In this article, The MIT Post takes a look at the colossal efforts put in by these people behind the scenes of the fest. \n"
    },
    {
      "_id": 28645,
      "category": "Between the Lines",
      "timestamp": "2020-03-02T19:11:32",
      "date": {
        "year": "2020",
        "month": "Mar",
        "day": "2"
      },
      "title": "Terms and Conditions May Apply—The Personal Data Protection Bill, 2019",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/01/WhatsApp-Image-2020-03-02-at-7.21.52-PM.jpeg?fit=1280%2C673&ssl=1",
      "link": "https://themitpost.com/personal-data-protection-bill-2019/",
      "author": {
        "name": "Prajyoth Kadamba",
        "url": "https://themitpost.com/author/prajyoth-kadamba/"
      },
      "message": "With people active on the internet, now more than ever, it becomes crucial for one to know their rights and freedom on the cyberspace. The MIT Post dissects the Data Protection Bill and its effect on various sectors of society.\n"
    },
    {
      "_id": 27923,
      "category": "Sitting Down With",
      "timestamp": "2020-02-26T20:00:39",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "26"
      },
      "title": "The Student Council (2019-2020)",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/02/sc20-featured-img.png?fit=820%2C312&ssl=1",
      "link": "https://themitpost.com/student-council-2019-2020/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "One of the most important student bodies in MIT, the Student Council, is an example of indirect democracy in action. These elected individuals form the link between the student populace and the authorities. In this article, the members of the Council share their motivations for running for office and their goals for the coming year. \n"
    },
    {
      "_id": 28621,
      "category": "Event Reports",
      "timestamp": "2020-02-24T20:27:08",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "24"
      },
      "title": "Revealing Secrets of the Trade—ESoM&#8217;s Industry and Market Analysis Workshop",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/02/ESoM2.jpg?fit=1024%2C673&ssl=1",
      "link": "https://themitpost.com/revealing-secrets-trade-esoms-industry-market-analysis-workshop/",
      "author": {
        "name": "Aditya Narayan",
        "url": "https://themitpost.com/author/adityanarayan/"
      },
      "message": "ESoM held a workshop in collaboration with Samnidhy on February 7, 2020 with the intention of educating the audience on Industry and Market Analysis. The event touched upon all the basics and while the topics were quite dry, the end of the workshop saw participants wanting more. \n"
    },
    {
      "_id": 28508,
      "category": "Event Reports",
      "timestamp": "2020-02-21T11:00:38",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "21"
      },
      "title": "When Engineering Meets Creativity — Innovation Fest 2020",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/02/securipal.jpg?fit=960%2C640&ssl=1",
      "link": "https://themitpost.com/innovation-fest-2020/",
      "author": {
        "name": "Arnaav Anand",
        "url": "https://themitpost.com/author/arnaav/"
      },
      "message": "The need of the hour in today&#8217;s younger generation is innovation. Utilizing their engineering prowess to application, several teams came up with thrifty and prolific ideas to help society.\n"
    },
    {
      "_id": 27832,
      "category": "Arts &amp; Culture",
      "timestamp": "2020-02-12T20:05:56",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "12"
      },
      "title": "Rabindra Sangeet—The Echoes of Tagore&#8217;s Words",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/02/tagore1-621x414-1.jpg?fit=1024%2C672&ssl=1",
      "link": "https://themitpost.com/rabindra-sangeet-echoes-tagores-words/",
      "author": {
        "name": "Shrijani Manna",
        "url": "https://themitpost.com/author/shrijani/"
      },
      "message": "Tagore—the man responsible for bringing home the first Nobel prize, was a visionary who penned down his wide-ranging intellect and ideals in the form of poems and songs. In this article, we regard the various cultural, historical, and socio-economic contributions of his works that impact the nation, and the world of literature to this very day.\n"
    },
    {
      "_id": 28263,
      "category": "Event Reports",
      "timestamp": "2020-02-11T20:00:56",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "11"
      },
      "title": "All Ears—A Public Speaking Workshop by Blank 101",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/02/What-is-public-speaking-1-1-e1581263462483.jpg?fit=850%2C539&ssl=1",
      "link": "https://themitpost.com/ears-public-speaking-workshop-blank-101/",
      "author": {
        "name": "Abhishek Kumar Sinha",
        "url": "https://themitpost.com/author/abhisheksinha/"
      },
      "message": "Blank 101 organised a well-structured workshop on public speaking where they untangled the intricacies that are involved in delivering a speech.\n"
    },
    {
      "_id": 28425,
      "category": "Event Reports",
      "timestamp": "2020-02-10T15:07:33",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "10"
      },
      "title": "Pulling the Strings—DevSprint by PyData Manipal",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/02/DSC_0022-01.jpeg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/pulling-strings-devsprint-pydata-manipal/",
      "author": {
        "name": "Tejas Ramesh Sanji",
        "url": "https://themitpost.com/author/tejasramesh/"
      },
      "message": "On 2nd February, PyData Manipal held a Developer Sprint to help people learn the basics of code development and maintainence. With informative talks from two robust personalities, followed by a session of working on open source projects of reputed organisations, this event proved fruitful for everyone involved. \n"
    },
    {
      "_id": 28359,
      "category": "Event Reports",
      "timestamp": "2020-02-09T17:00:41",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "9"
      },
      "title": "Life on a Paper—A Workshop on How to Write a CV and SOP",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/02/written-word-featured.png?fit=820%2C312&ssl=1",
      "link": "https://themitpost.com/life-paper-workshop-write-cv-sop/",
      "author": {
        "name": "Enakshi Sarkar",
        "url": "https://themitpost.com/author/enakshi/"
      },
      "message": "The Career Development Centre recently organised &#8216;Written Word&#8217;, an engaging workshop by Ms Vidya Suresh on CV and SOP writing. The workshop tackled the daunting task of preparing a CV and SOP with refreshing humour and candour. Students left with renewed confidence, no longer afraid of facing a blank white screen. \n"
    },
    {
      "_id": 28088,
      "category": "Event Reports",
      "timestamp": "2020-02-08T19:30:16",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "8"
      },
      "title": "A Bird&#8217;s Eye View–Drone Workshop by DRONAID",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/01/Clipboard01.jpg?fit=458%2C423&ssl=1",
      "link": "https://themitpost.com/a-birds-eye-view-of-bots-drone-workshop-by-dronaid/",
      "author": {
        "name": "Ramya Nadig",
        "url": "https://themitpost.com/author/ramya/"
      },
      "message": "The use of drones has evolved quickly over the past few years, and now, anyone can own and legally operate their very own vehicle. In this workshop, DRONAID helped students build their skill set to design and manoeuvre a drone.\n"
    },
    {
      "_id": 28339,
      "category": "Event Reports",
      "timestamp": "2020-02-08T10:00:05",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "8"
      },
      "title": "The Ultimate Trident of Fitness—Triathlon 2020",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/02/WhatsApp-Image-2020-02-04-at-19.35.11.jpeg?fit=878%2C1080&ssl=1",
      "link": "https://themitpost.com/ultimate-trident-fitness-triathlon-2020/",
      "author": {
        "name": "Shashank TR",
        "url": "https://themitpost.com/author/shashanktr/"
      },
      "message": "RedX Manipal organised the Triathlon 2020 on 2nd February—an event that gave the fitness enthusiasts of Manipal an unparalleled adrenaline rush as they swam, cycled, and ran across the campus.\n"
    },
    {
      "_id": 28307,
      "category": "News",
      "timestamp": "2020-02-06T19:00:39",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "6"
      },
      "title": "Paws for a Cause—Babita Madhwaraj Raises Awareness on the Plight of Strays",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/02/pup-cafe1.jpeg?fit=1280%2C960&ssl=1",
      "link": "https://themitpost.com/paws-cause-babita-madhwaraj-raises-awareness-plight-strays/",
      "author": {
        "name": "Devangshi Debraj",
        "url": "https://themitpost.com/author/devangshi/"
      },
      "message": "Humans are the most intelligent species on the planet, yet, they inflict pain on other living beings. Mrs. Babita Madhwaraj&#8217;s passionate speech moved her audience as she spoke on the plight of stray dogs in our country and what we can do to make their world a better place.\n"
    },
    {
      "_id": 28276,
      "category": "Event Reports",
      "timestamp": "2020-02-04T11:40:35",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "4"
      },
      "title": "A Race to the Finish Line—The MIT Open Swimming Tournament",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/02/Swim_1.jpg?fit=1152%2C864&ssl=1",
      "link": "https://themitpost.com/race-to-the-finish-the-mit-open-swimming-tournament/",
      "author": {
        "name": "Parthiv Menon",
        "url": "https://themitpost.com/author/parthiv/"
      },
      "message": "The MIT Sports Club conducted an Open Swimming Tournament for students of all years on 28th January. It saw participants putting on a tough fight, with almost all races concluding with close finishes. \n"
    },
    {
      "_id": 28157,
      "category": "Event Reports",
      "timestamp": "2020-02-01T20:00:08",
      "date": {
        "year": "2020",
        "month": "Feb",
        "day": "1"
      },
      "title": "Crucible—ISTE &#038; IE-E&#038;C&#8217;s Tech Week ",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/02/Codeburst2.jpg?fit=1280%2C960&ssl=1",
      "link": "https://themitpost.com/crucible-iste-ie-ecs-tech-week/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Crucible, held by ISTE and IE-E&#038;C, was a four-day long Tech-Week held with the aim of challenging and satisfying technology enthusiasts and the like. With events ranging from treasure hunts, games, quizzes and technology events, Crucible made sure to include people with varying levels of interest. \n"
    },
    {
      "_id": 28187,
      "category": "Event Reports",
      "timestamp": "2020-01-31T21:00:42",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "31"
      },
      "title": "Navigating The Path To Opportunity—A Guide to Summer Research Internships by ACM-W Manipal",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/01/Featured-image.jpg?fit=450%2C318&ssl=1",
      "link": "https://themitpost.com/navigating-path-opportunity-guide-summer-research-internships-acm-w-manipal/",
      "author": {
        "name": "Devangshi Debraj",
        "url": "https://themitpost.com/author/devangshi/"
      },
      "message": "Summer research internships provide students with invaluable exposure to their area of study. With the ACM-W Manipal&#8217;s guide to applying for such programmes abroad and in India, participants were made aware of the do&#8217;s and don&#8217;ts of writing emails to professors, various programme specific tips, and the best ways to approach the application process.\n"
    },
    {
      "_id": 28256,
      "category": "Event Reports",
      "timestamp": "2020-01-29T20:30:13",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "29"
      },
      "title": "Honouring Seventy-One Years of a Republic",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/02/20200126_092710.jpg?fit=606%2C1080&ssl=1",
      "link": "https://themitpost.com/honouring-seventy-one-years-republic/",
      "author": {
        "name": "Jahnvi Singh",
        "url": "https://themitpost.com/author/jahnvisingh/"
      },
      "message": "On the occasion of India&#8217;s 71st Republic Day, Manipal had witnessed celebrations throughout the day. Starting early with a flag hoisting ceremony and march, and ending with an evening filled with music and dance, it was a lovely way to commemorate this landmark event. \n"
    },
    {
      "_id": 27747,
      "category": "National &amp; World",
      "timestamp": "2020-01-28T20:00:46",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "28"
      },
      "title": "India Debates The Surrogacy Law",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/12/8a_11_ip.jpg?fit=800%2C800&ssl=1",
      "link": "https://themitpost.com/india-debates-the-surrogacy-law/",
      "author": {
        "name": "Ramya Nadig",
        "url": "https://themitpost.com/author/ramya/"
      },
      "message": "India, infamously known for its &#8216;baby-making&#8217; industry, is now trying to sweep that name under the rug. The Government of India has recently agreed upon the Surrogacy (Regulation) Bill, which will affect the lives of Indian citizens, especially women, in the role of surrogate mothers, both present and future.\n"
    },
    {
      "_id": 28028,
      "category": "News",
      "timestamp": "2020-01-27T21:00:58",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "27"
      },
      "title": "An Electrifying Change—Campus Patrol Switches to Electric Cars",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/01/Campus-Patrol-AbhiV.jpg?fit=1920%2C1010&ssl=1",
      "link": "https://themitpost.com/electrifying-change-campus-patrol-switches-electric-cars/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "MAHE recently undertook the task of upgrading its Campus Patrol jeeps to electric cars. One of them is ever-present at MIT and can often be seen taking rounds around campus or parked near the Student Plaza. These vehicles are a step towards being a more environmentally conscious campus by adopting a cleaner source of energy. \n"
    },
    {
      "_id": 28182,
      "category": "Event Reports",
      "timestamp": "2020-01-25T22:31:41",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "25"
      },
      "title": "An Evening Of Debate—iOS vs Android by Blank 101",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/01/android-vs-ios-which-platform-better-for-app-development.png?fit=720%2C405&ssl=1",
      "link": "https://themitpost.com/evening-debate-ios-vs-android-blank-101/",
      "author": {
        "name": "Shrijani Manna",
        "url": "https://themitpost.com/author/shrijani/"
      },
      "message": "Taking cue from one of the most widely talked-about topics in the world, Blank 101 hosted a debate on iOS vs Android which attracted tech enthusiasts from all over the institute. With long-time users discussing every aspect of both OS, the fruitful debate managed to educate as well as keep everyone engaged.\n"
    },
    {
      "_id": 28077,
      "category": "Event Reports",
      "timestamp": "2020-01-24T20:30:21",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "24"
      },
      "title": "An Evening of Fitness and Fitting Tributes—Soldierathon 2020",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/01/WhatsApp-Image-2020-01-18-at-21.53.07.jpeg?fit=1152%2C544&ssl=1",
      "link": "https://themitpost.com/evening-fitness-fitting-tributes-soldierathon-2020/",
      "author": {
        "name": "Shashank TR",
        "url": "https://themitpost.com/author/shashanktr/"
      },
      "message": "The students of Manipal, led by the NCC Cadets, paid a fitting tribute to the brave souls fighting for our country on the occasion of Army Day at a military demonstration and five-kilometre run organised by the Manipal Runners&#8217; Club.\n"
    },
    {
      "_id": 28372,
      "category": "Event Reports",
      "timestamp": "2020-01-22T10:53:13",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "22"
      },
      "title": "The Cream of the Crop—MIT Cricket League Auction",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/02/IPL_Indian_Premier_League_Auction_cricket.jpg?fit=600%2C446&ssl=1",
      "link": "https://themitpost.com/cream-crop-mit-cricket-league-auction/",
      "author": {
        "name": "Kushal Gupta",
        "url": "https://themitpost.com/author/kushalgupta/"
      },
      "message": "With a new change in format, the MITCL Auction held on 14th January kept the stakes and the excitement running high as managers battled it out in a bid to pick the best players. \n"
    },
    {
      "_id": 27638,
      "category": "National &amp; World",
      "timestamp": "2020-01-21T20:00:35",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "21"
      },
      "title": "Immigration to Infuriation—The Citizenship (Amendment) Act",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/01/Citizenship-Amendment-Bill-Parliament-Representational.jpg?fit=760%2C443&ssl=1",
      "link": "https://themitpost.com/immigration-infuriation-citizenship-amendment-act/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "Deemed unconstitutional, discriminatory, and anti-Islam by those opposing it, the Citizenship Amendment Act ignited large-scale protests across the country. This article takes a broad look at the context surrounding the passing of the bill, and the explosive chain of events that it provoked. \n"
    },
    {
      "_id": 27645,
      "category": "General",
      "timestamp": "2020-01-20T20:32:29",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "20"
      },
      "title": "Women and Indian Cinema—A Tale of Representation",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/01/Screenshot-2020-01-19-at-1.33.28-PM.png?fit=517%2C257&ssl=1",
      "link": "https://themitpost.com/women-indian-cinema-tale-representation/",
      "author": {
        "name": "Snigdha Deshmukh",
        "url": "https://themitpost.com/author/snigdha/"
      },
      "message": "Indian cinema, right from its inception in the thirties, has become the most popular mode of entertainment in India. However, the representation of women both onscreen and offscreen, leaves much to be desired. In this article, we delve deeper into the reasons behind this gender stereotyping and how times are changing for the better as a reflection of the evolving mindset of the audience.\n"
    },
    {
      "_id": 27576,
      "category": "Arts &amp; Culture",
      "timestamp": "2020-01-14T17:00:55",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "14"
      },
      "title": "Uncharted by Ganesh Nayak—A Review",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/01/91onZESHML.jpg?fit=1080%2C1080&ssl=1",
      "link": "https://themitpost.com/uncharted-ganesh-nayak-review/",
      "author": {
        "name": "Trisha Anil",
        "url": "https://themitpost.com/author/trisha/"
      },
      "message": "&#8216;Uncharted&#8217; is a vivid account of the challenges faced by the author, Ganesh Nayak, as he struggles to quit an addiction that spanned his twenties, as well as a tale of his exhilarating cycling expedition to three different locations in the country.\n"
    },
    {
      "_id": 24232,
      "category": "Science and Technology",
      "timestamp": "2020-01-12T13:00:48",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "12"
      },
      "title": "Electric Vehicles—Charging Into the Future",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/Feature.jpg?fit=1360%2C1020&ssl=1",
      "link": "https://themitpost.com/electric-vehicles-charging-future/",
      "author": {
        "name": "Adithya Nayak",
        "url": "https://themitpost.com/author/adithya/"
      },
      "message": "With electric vehicles becoming an increasingly popular means to control carbon dioxide emissions, India needs to be well-equipped to handle the EV market. This article looks back on cases of both successful and disastrous implementations of EVs as well as the prospects of the electric vehicle industry in India. \n"
    },
    {
      "_id": 27528,
      "category": "Arts &amp; Culture",
      "timestamp": "2020-01-06T19:14:45",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "6"
      },
      "title": "Satyajit Ray&#8217;s Bengali Holmes",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/12/Feluda-and-Topshe.jpg?fit=800%2C600&ssl=1",
      "link": "https://themitpost.com/satyajit-rays-bengali-holmes/",
      "author": {
        "name": "Devangshi Debraj",
        "url": "https://themitpost.com/author/devangshi/"
      },
      "message": "In the year 1965, Satyajit Ray introduced young readers to a hero they could look up to, relate to, and emulate. Inspired by Sir Arthur Conan Doyle’s Sherlock Holmes series, Ray&#8217;s writing gives the Indian audience an indigenous version of the popular western hero through the protagonist Prodosh C. Mitter, popularly known as Feluda.\n"
    },
    {
      "_id": 27860,
      "category": "FAQ",
      "timestamp": "2020-01-04T20:00:51",
      "date": {
        "year": "2020",
        "month": "Jan",
        "day": "4"
      },
      "title": "Coursera Program Electives—FAQs",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2020/01/cm.jpg?fit=1280%2C720&ssl=1",
      "link": "https://themitpost.com/coursera-program-electives-faqs/",
      "author": {
        "name": "Ramathmika",
        "url": "https://themitpost.com/author/ramathmika/"
      },
      "message": "Students opting for Coursera courses as a minor specialisation are often faced with a multitude of questions regarding the process. This article aims to simplify and answer some of these frequently asked questions. \n"
    },
    {
      "_id": 27607,
      "category": "Arts &amp; Culture",
      "timestamp": "2019-12-26T19:46:24",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "26"
      },
      "title": "Netflix—Are You Still Watching?",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/12/netflix.jpg?fit=800%2C450&ssl=1",
      "link": "https://themitpost.com/netflix-are-you-still-watching/",
      "author": {
        "name": "Arnaav Anand",
        "url": "https://themitpost.com/author/arnaav/"
      },
      "message": "From DVDs to big data, Netflix has conquered the entertainment industry and its audience&#8217;s television screens. With its boundlessly growing repertoire of content and viewers, here&#8217;s a look at what sets this streaming giant apart from the rest.\n"
    },
    {
      "_id": 27586,
      "category": "News",
      "timestamp": "2019-12-22T21:00:44",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "22"
      },
      "title": "Manipal Protests against CAA",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/12/WhatsApp-Image-2019-12-17-at-4.40.52-PM-1.jpeg?fit=1080%2C528&ssl=1",
      "link": "https://themitpost.com/manipal-protests-caa/",
      "author": {
        "name": "Adithya Nayak",
        "url": "https://themitpost.com/author/adithya/"
      },
      "message": "Manipal joined the country&#8217;s protest against the CAA and NRC bills on 17th December 2019. The protest took place near the Manipal DC office and witnessed a large gathering of people. Residents of Mangaluru also continue to fight against the rulings with major protests across the city. Read to find out more on these incidents.\n"
    },
    {
      "_id": 27539,
      "category": "Sitting Down With",
      "timestamp": "2019-12-16T18:11:21",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "16"
      },
      "title": "MIT Students Shine at Stanford Hackathon—Sitting Down with Akshatha Kamath and Jithin Sunny",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/12/14aec1fc-3cf5-445b-9897-c27ba09d0245.jpg?fit=870%2C652&ssl=1",
      "link": "https://themitpost.com/mit-students-shine-stanford-hackathon-sitting-akshatha-kamath-jithin-sunny/",
      "author": {
        "name": "Vinayak Srivastava",
        "url": "https://themitpost.com/author/vinayak/"
      },
      "message": "Recently, The MIT Post had the privilege of interviewing two of the brightest minds on campus; Jithin Sunny and Akshatha Kamath. Victors at Stanford&#8217;s Health ++ Hackathon, they share their experience and advice for prospective participants in this interview. \n"
    },
    {
      "_id": 27440,
      "category": "Sitting Down With",
      "timestamp": "2019-12-15T15:00:54",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "15"
      },
      "title": "The Art of Eating Healthy—Sitting Down With Anushruti RK",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/12/anushruti-serving.jpg?fit=1704%2C1080&ssl=1",
      "link": "https://themitpost.com/art-eating-healthy-sitting-anushruti-rk/",
      "author": {
        "name": "Adithya Nayak",
        "url": "https://themitpost.com/author/adithya/"
      },
      "message": "The MIT Post recently got the opportunity to speak with Anushruti RK, a Mumbai based food blogger at m.i.l.a.p 2019. In this interview, she shares her thought on the principles behind ayurvedic and sattvic food cooking, and the world of food blogging. \n"
    },
    {
      "_id": 27373,
      "category": "Sitting Down With",
      "timestamp": "2019-12-09T19:00:47",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "9"
      },
      "title": "A One-Woman Show―Sitting Down With Aarti Tiwari",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/12/IMG-20191109-WA00012.jpg?fit=381%2C266&ssl=1",
      "link": "https://themitpost.com/sitting-down-with-aarti-tiwari/",
      "author": {
        "name": "Abhijit Rajanish",
        "url": "https://themitpost.com/author/abhijit/"
      },
      "message": "The MIT Post got an opportunity to speak to Aarti Tiwari, an extremely talented Pune based theatre artiste. She performed her solo play Mansha ki Shaadi as a part of the Cultural Evenings of m.i.l.a.p. 2019. She spoke about the relevance of theatre today and her desire to use theatre as a medium to raise questions about societal problems. \n"
    },
    {
      "_id": 12337,
      "category": "FAQ",
      "timestamp": "2019-12-08T21:45:19",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "8"
      },
      "title": "A Concise Guide to Makeups and Re-eval",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2017/12/final-1.jpg?fit=1280%2C812&ssl=1",
      "link": "https://themitpost.com/concise-guide-make-ups-re-eval/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "The whole process of applying for re-evaluation and makeup can be tedious and confusing. From logging into SLcM from time and again to bugging your CR about the procedures, this can suck the blood out of your life. However, do not worry chaps, for we have a solution. Read on to find out more.\n"
    },
    {
      "_id": 26714,
      "category": "TechTatva",
      "timestamp": "2019-12-08T20:12:14",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "8"
      },
      "title": "TechTatva &#8217;19⁠—Mechanize",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/mechanize.png?fit=1900%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva-19%e2%81%a0-mechanize/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "From constructing rocket models with the help of lathes to building complex structures on CAD software, Mechanize tested its participants on an array of topics related to Automobile and Mechanical Engineering. \n"
    },
    {
      "_id": 27391,
      "category": "Sitting Down With",
      "timestamp": "2019-12-07T20:00:14",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "7"
      },
      "title": "From Script to Stage—Sitting Down With Mahesh Dattani",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/12/writer-director-dattani-veteran-theatre-personality-mahesh_69b57652-2993-11e6-8f5f-7ac8be343499.jpg?fit=640%2C479&ssl=1",
      "link": "https://themitpost.com/script-stage-sitting-mahesh-dattani/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "In the world of theatre, turning thoughts into words and staging them for everyone to see is no easy feat. Mahesh Dattani, an award-winning playwright and director, has established an immensely successful career doing this. The MIT Post had the chance to converse him during m.i.l.ap. 2019 and perceive his ideas on theatre and drama. \n"
    },
    {
      "_id": 27380,
      "category": "News",
      "timestamp": "2019-12-06T08:00:08",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "6"
      },
      "title": "Manipal Birds Relocated After Felling of Trees",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/12/WhatsApp-Image-2019-12-01-at-1.03.46-PM.jpeg?fit=1152%2C544&ssl=1",
      "link": "https://themitpost.com/relocation-of-birds-after-felling-of-trees/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "A number of trees in Manipal are being cut down to widen the roads on National Highway 169, due to which many resident birds have been dislocated. Manipal Birders&#8217; Club, as well as the forest officials, undertook the initiative to provide a new home for these birds.\n"
    },
    {
      "_id": 27224,
      "category": "Sitting Down With",
      "timestamp": "2019-12-03T20:00:36",
      "date": {
        "year": "2019",
        "month": "Dec",
        "day": "3"
      },
      "title": "In Other Words—Sitting Down with Maithreyi Karnoor",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/12/WhatsApp-Image-2019-12-02-at-6.57.08-PM.jpeg?fit=1280%2C719&ssl=1",
      "link": "https://themitpost.com/words-sitting-maithreyi-karnoor/",
      "author": {
        "name": "Tezraj Kayshap",
        "url": "https://themitpost.com/author/tezraj/"
      },
      "message": "The MIT Post had a chance to sit down with Maithreyi Karnoor at m.i.l.a.p 2019 for a candid conversation about translation, fiction, and her passion for language.  \n"
    },
    {
      "_id": 27210,
      "category": "Event Reports",
      "timestamp": "2019-11-24T09:00:52",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "24"
      },
      "title": "Cosmic Splash — Virtual Reality Art With Vinay Hegde",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/cosmicsplash.jpeg?fit=1280%2C720&ssl=1",
      "link": "https://themitpost.com/cosmic-splash-virtual-reality-art-vinay-hegde/",
      "author": {
        "name": "Ashwin Suresh",
        "url": "https://themitpost.com/author/ashwinm/"
      },
      "message": "Spectators were made privy to a unique blend of art and technology on the first evening of m.i.l.a.p 2019. Read on to learn more about artist Vinay Hegde&#8217;s VR-infused performance, Cosmic Splash. \n"
    },
    {
      "_id": 27156,
      "category": "Event Reports",
      "timestamp": "2019-11-17T10:00:01",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "17"
      },
      "title": "Avenues of Notoriety—In The Name of Blood by AAINA",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/aainaplay.jpg?fit=1152%2C528&ssl=1",
      "link": "https://themitpost.com/avenues-notoriety-name-blood-aaina/",
      "author": {
        "name": "Atharv Negi",
        "url": "https://themitpost.com/author/atharv/"
      },
      "message": "Concluding their share of theatre for the year, AAINA recently hosted two plays in the short span of a week—&#8217;Chacha Chaubey Ke Chashme Se&#8217;, a street play depicting the social evils that plague our country, and &#8216;In The Name Of Blood&#8217; a crime drama inspired by the Capones. The enthralling performances of the actors and brilliant scripts of both the plays thoroughly delighted the audience.\n"
    },
    {
      "_id": 26812,
      "category": "TechTatva",
      "timestamp": "2019-11-16T20:00:10",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "16"
      },
      "title": "TechTatva&#8217;19⁠—Fuel RC",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/fuel-rc.png?fit=1901%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-fuel-rc/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "With events that featured RC&#8217;s, an excited crowd and enthusiastic participants,  Fuel RC supplied TechTatva&#8217;19 with a high dose of entertainment.\n"
    },
    {
      "_id": 27009,
      "category": "TechTatva",
      "timestamp": "2019-11-16T10:00:57",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "16"
      },
      "title": "TechTatva&#8217;19—Turing",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/12/turing.png?fit=1901%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-turing/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "With an assortment of online scavenger hunts, cyphers and app development, TechTatva 19&#8217;s Turing was the category to watch out for as it exceeded every coder&#8217;s expectations. \n"
    },
    {
      "_id": 26749,
      "category": "TechTatva",
      "timestamp": "2019-11-15T20:00:41",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "15"
      },
      "title": "TechTatva&#8217;19—Cosmic Con",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/cosmicon.png?fit=1900%2C1000&ssl=1",
      "link": "https://themitpost.com/techtatva19-cosmic-con/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Cosmic Con got the astronomically curious participant ruminating over space and its quirkier details. From creating malevolent aliens to choosing the perfect travel itinerary, this category&#8217;s events had contestants compete with each other using equal parts knowledge and creativity. \n"
    },
    {
      "_id": 26954,
      "category": "TechTatva",
      "timestamp": "2019-11-15T10:00:54",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "15"
      },
      "title": "TechTatva&#8217;19—Alacrity",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/alacrity.png?fit=1901%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-alacrity/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Through events that do with all things electric and electronic, Alacrity got students recalling their engineering classes in creative and slightly less traumatic ways\n"
    },
    {
      "_id": 26729,
      "category": "TechTatva",
      "timestamp": "2019-11-14T20:00:03",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "14"
      },
      "title": "TechTatva&#8217;19—Acumen",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/12/acumen.png?fit=1900%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-acumen/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Acumen&#8217;s event catered to every geek&#8217;s delight with brains being put to the test in their treasure hunt, online game and tech-themed quizzes. \n"
    },
    {
      "_id": 27048,
      "category": "National &amp; World",
      "timestamp": "2019-11-13T19:46:18",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "13"
      },
      "title": "Delhi Gasps for Breath Once Again",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/delhi_pollution_660x450_101819125253.jpg?fit=660%2C450&ssl=1",
      "link": "https://themitpost.com/delhi-gasps-for-breath-once-again/",
      "author": {
        "name": "Devyani Mehta",
        "url": "https://themitpost.com/author/devyani/"
      },
      "message": "Over the past few years, along with the cold winds of winter, a haze of pollution settles over the city of Delhi. In November this year, the city faced a public health emergency as air quality dropped to abysmal levels. Read on to learn more about the crisis and the measures being taken to alleviate the current conditions.\n"
    },
    {
      "_id": 26880,
      "category": "TechTatva",
      "timestamp": "2019-11-13T10:00:16",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "13"
      },
      "title": "TechTatva&#8217;19—Cryptoss",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/cryptoss.png?fit=1901%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-cryptoss/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "A coding oriented category, cultural and gaming aspects were incorporated into the technical events. This category saw great success amongst the participants and its events Cyber Hawk, Battleship, Online Coding, and Age of Coders were well received.\n"
    },
    {
      "_id": 27134,
      "category": "TechTatva",
      "timestamp": "2019-11-12T19:07:31",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "12"
      },
      "title": "TechTatva&#8217;19—Robowars",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/robowars.png?fit=1901%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-robowars/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "One of the most awaited featured events each year, Robowars &#8217;19 certainly did not disappoint. Packed with action, and hosting impressive performances all around, the event was one of the highlights of the fest. \n"
    },
    {
      "_id": 27186,
      "category": "Event Reports",
      "timestamp": "2019-11-11T20:30:06",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "11"
      },
      "title": "A Labyrinth of Crime—A Play by ADA Dramatics",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/3.jpg?fit=960%2C639&ssl=1",
      "link": "https://themitpost.com/labyrinth-crime-play-ada-dramatics/",
      "author": {
        "name": "Parthiv Menon",
        "url": "https://themitpost.com/author/parthiv/"
      },
      "message": "ADA Dramatics did not fail to impress as they stunned the audience with their spin on the famous story &#8216;The Hound of The Baskervilles&#8217;. Through a creative promotional mime and excellent acting, the play kept the audience wanting more. \n"
    },
    {
      "_id": 27094,
      "category": "Event Reports",
      "timestamp": "2019-11-11T12:49:31",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "11"
      },
      "title": "Parting Ways—Farewell for the Batch of 2020",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/farewell1-1.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/parting-ways-farewell-batch-2020/",
      "author": {
        "name": "Tejas Ramesh Sanji",
        "url": "https://themitpost.com/author/tejasramesh/"
      },
      "message": "MIT hosted a farewell for its final year students on November 1st, giving them a last chance to revisit their memories before they go their separate ways. With stellar performances from MAFIA and Chords &#038; Co., complemented by a lavish dinner, the batch of 2020 ended their journey in the college on a high note. \n"
    },
    {
      "_id": 26991,
      "category": "Event Reports",
      "timestamp": "2019-11-11T10:02:54",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "11"
      },
      "title": "Deep Learning and Its Application in Astronomy—A Webinar by the Astronomy Club",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/astro.jpg?fit=678%2C806&ssl=1",
      "link": "https://themitpost.com/deep-learning-application-astronomy-webinar-astronomy-club/",
      "author": {
        "name": "Xavier Thomas",
        "url": "https://themitpost.com/author/xavier/"
      },
      "message": "The Astronomy Club of Manipal conducted a webinar by Dr Kaustubh Waghmare, a data scientist from IUCAA, on 31st October. The speaker shared valuable insights about his work and introduced eager students to the applications of machine learning and deep learning in astrophysics and astronomy. \n"
    },
    {
      "_id": 27078,
      "category": "Event Reports",
      "timestamp": "2019-11-10T20:30:29",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "10"
      },
      "title": "In Tune with the Cosmos—Harmony of Spheres by the Astronomy Club",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/WhatsApp-Image-2019-11-06-at-11.21.12-PM-e1573139740406.jpeg?fit=763%2C791&ssl=1",
      "link": "https://themitpost.com/tune-cosmos-talk-astronomy-club/",
      "author": {
        "name": "Ramya Nadig",
        "url": "https://themitpost.com/author/ramya/"
      },
      "message": "Harmony of Spheres, conducted by the Astronomy Club, was a talk by Ananya Roy, a fourth-year student. A fascinating take on Pythagoras&#8217; Theorem of the same name, the event contrived to blur the lines between science and art. \n"
    },
    {
      "_id": 26706,
      "category": "TechTatva",
      "timestamp": "2019-11-10T16:00:19",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "10"
      },
      "title": "TechTatva&#8217;19—Bizzventure",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2020/01/bizzventure.png?fit=1900%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-bizzventure/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Start Up Pitch was an event held to provide opportunities for budding entrepreneurs to showcase their start-up ideas. Two guest speakers inspired the audience, motivating participants before the competition began.  \n"
    },
    {
      "_id": 26820,
      "category": "TechTatva",
      "timestamp": "2019-11-10T12:00:30",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "10"
      },
      "title": "TechTatva&#8217;19—Mechatron",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/01/mechatron.png?fit=1900%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-mechatron/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Mechatron had robotic enthusiasts covered during the four days of TechTatva&#8217;19. Robopong, Operation Shutout and KickOff saw a surge in adrenaline levels as contestants competed in robotic versions of popular games, while Chakravyuh challenged competitors through an interesting twist in a technical quiz. \n"
    },
    {
      "_id": 26716,
      "category": "TechTatva",
      "timestamp": "2019-11-10T11:00:06",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "10"
      },
      "title": "TechTatva&#8217;19—Skyrush",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2020/01/skyrush.png?fit=1901%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-skyrush/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Skyrush proved to be a real challenge as aerophiles competed in intense flying rounds to prove their mettle. Held during the first two days of TechTatva, teams from across the country had their aeromodelling skills tested while battling strong winds and rain. \n"
    },
    {
      "_id": 26730,
      "category": "TechTatva",
      "timestamp": "2019-11-10T10:00:10",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "10"
      },
      "title": "TechTatva&#8217;19—Floating Canoe",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/floating-canoe.png?fit=1900%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-floating-canoe/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "A featured event, Floating Canoe had participants constructing canoes out of cement. \n"
    },
    {
      "_id": 27112,
      "category": "Event Reports",
      "timestamp": "2019-11-09T15:00:43",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "9"
      },
      "title": "Two Sides of a Story―Conspiracies 101",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/Conspiracies-101.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/two-sides-story-conspiracies-101/",
      "author": {
        "name": "Enakshi Sarkar",
        "url": "https://themitpost.com/author/enakshi/"
      },
      "message": "Conspiracy theories often breed misinformation, distrust and paranoia. Conspiracies could spring up from anywhere, be it from 9/11 or MH370. On 29th October 2019, Blank 101 explored the concept of conspiracies and their origins.\n"
    },
    {
      "_id": 26858,
      "category": "TechTatva",
      "timestamp": "2019-11-08T00:52:43",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "8"
      },
      "title": "TechTatva&#8217;19—Kraftwagen",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/KraftWagen-1.png?fit=1901%2C1000&ssl=1",
      "link": "https://themitpost.com/techtatva19-kraftwagen/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Kraftwagen was a perfect sandbox to test multipurpose bots. While saBOTage tested the bots&#8217; durability and the driver&#8217;s skill in VR, Atlantis Arcade featured amphibious bots manoeuvre shaky grounds and troubling waters. \n"
    },
    {
      "_id": 26747,
      "category": "TechTatva",
      "timestamp": "2019-11-07T22:20:28",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "7"
      },
      "title": "TechTatva&#8217;19—Epsilon",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/epsilon.png?fit=1901%2C1000&ssl=1",
      "link": "https://themitpost.com/techtatva19-epsilon/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Epsilon brought the fields of medicine and engineering closer in its wide-ranging events: Ignite the Inquest, Pandora&#8217;s box and Riddle me this. Read on to find out what it had in store. \n"
    },
    {
      "_id": 27021,
      "category": "Event Reports",
      "timestamp": "2019-11-07T20:30:15",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "7"
      },
      "title": "Cursive, Block, Italic—Handwriting Analysis by The Psych Club",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/74390466_2474924312557352_5384759696252993536_n.jpg?fit=640%2C960&ssl=1",
      "link": "https://themitpost.com/handwriting-analysis-psych-club/",
      "author": {
        "name": "Sarath Yelisetty",
        "url": "https://themitpost.com/author/sarath/"
      },
      "message": "Handwriting Analysis workshop taught attendees how to analyse one&#8217;s character through their handwriting and included talks on graphology. This event by Psych Club was highly interactive and well-received by all who attended.\n"
    },
    {
      "_id": 26862,
      "category": "TechTatva",
      "timestamp": "2019-11-07T10:00:43",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "7"
      },
      "title": "TechTatva&#8217;19 &#8211; Robotrek",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/robotrek.png?fit=1900%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-robotrek/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Robotrek incorporated the use of bots in creative ways, in new and innovative events. With events like ATV Bots, Robosoccer, and Sumobots 2.0, this category was a resounding success. \n"
    },
    {
      "_id": 26866,
      "category": "TechTatva",
      "timestamp": "2019-11-06T20:40:33",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "6"
      },
      "title": "TechTatva&#8217;19—Paper Presentation",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/paper-pres.png?fit=1901%2C1001&ssl=1",
      "link": "https://themitpost.com/techtatva19-paper-presentation/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Paper Presentation offered a stage to innovative and inventive minds to present their findings and research. With a panel of distinguished people, the event was a stepping stone for experimental minds to skyrocket in the right direction. \n"
    },
    {
      "_id": 27018,
      "category": "Campus",
      "timestamp": "2019-11-06T20:00:48",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "6"
      },
      "title": "Fitness Furore—The Inauguration of Evolve",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/evolvefitnessmanipal-1.jpg?fit=429%2C219&ssl=1",
      "link": "https://themitpost.com/fitness-furore-inauguration-evolve/",
      "author": {
        "name": "Khushi Sinha",
        "url": "https://themitpost.com/author/khushi/"
      },
      "message": "Aimed at promoting a healthier lifestyle, Evolve—MIT&#8217;s very own all-round fitness club—was inaugurated on 2nd November, 2019. Read on to learn more about its objectives and the future it envisions. \n"
    },
    {
      "_id": 26597,
      "category": "TechTatva",
      "timestamp": "2019-11-05T20:00:49",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "5"
      },
      "title": "TechTatva &#8217;19—Bizzmaestro",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/bizzmaestro.png?fit=1900%2C1000&ssl=1",
      "link": "https://themitpost.com/techtatva-19-bizzmaestro/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "One of the most popular categories during TechTatva, Bizzmaestro had an assortment of events that tested the business strategy and acumen of its participants. With 6 events under its belt, this category didn&#8217;t lose out on quality, as each event was more entertaining and educational than the last.\n"
    },
    {
      "_id": 26832,
      "category": "Event Reports",
      "timestamp": "2019-11-05T14:13:28",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "5"
      },
      "title": "From Samurais to Shurikens—Anime Quiz by MAC",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/mac4.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/samurais-shurikens-anime-quiz-mac/",
      "author": {
        "name": "Tejas Ramesh Sanji",
        "url": "https://themitpost.com/author/tejasramesh/"
      },
      "message": "On 26th October, fans of anime flocked to NLH 203 to attend The Anime Quiz, one of the most popular events hosted by the Manga and Anime Club. Although participants pondered over an array of challenging questions, they were kept entertained throughout the event.\n"
    },
    {
      "_id": 26917,
      "category": "Event Reports",
      "timestamp": "2019-11-04T18:15:36",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "4"
      },
      "title": "The Night Is Dark and Full of Terrors—Grooveyard 2.0",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/11/groove.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/night-dark-full-terrors-grooveyard-2-0/",
      "author": {
        "name": "Shashank TR",
        "url": "https://themitpost.com/author/shashanktr/"
      },
      "message": "Chords and Co. organised Grooveyard 2.0 on 31st October to celebrate Halloween with an amalgamation of music, dance, and spectacular costumes. The unique event catered to a sold-out crowd and made sure that the spookiest night of the year was also a delightful one. \n"
    },
    {
      "_id": 26845,
      "category": "Event Reports",
      "timestamp": "2019-11-02T16:00:45",
      "date": {
        "year": "2019",
        "month": "Nov",
        "day": "2"
      },
      "title": "The Art of Independent Filmmaking—Naqaab",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/11/images.jpg?fit=275%2C183&ssl=1",
      "link": "https://themitpost.com/art-independent-filmmaking-naqaab/",
      "author": {
        "name": "Jahnvi Singh",
        "url": "https://themitpost.com/author/jahnvisingh/"
      },
      "message": "On 25th October, Naqaab Filmmaking hosted its event about independent filmmaking, attracting a throng of cinematography savants. With interesting facts and anecdotes about films, the audience was kept well engaged. \n"
    },
    {
      "_id": 26611,
      "category": "Event Reports",
      "timestamp": "2019-10-31T20:00:16",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "31"
      },
      "title": "Reel Life Discussions—Short Film Screening by Student Support Centre",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/10/WhatsApp-Image-2019-10-19-at-3.20.43-PM.jpeg?fit=1081%2C768&ssl=1",
      "link": "https://themitpost.com/reel-life-discussions-short-film-screening-student-support-centre/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "The Student Support Centre hosted a short film screening on 23rd October, which featured four short films and intense discussions. The event intended to help people express their thoughts through conversations about films, and to learn how to see more than what meets the eye.  \n"
    },
    {
      "_id": 18783,
      "category": "General",
      "timestamp": "2019-10-28T10:40:17",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "28"
      },
      "title": "The Open Electives (2019-20)—Semester VI",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2017/12/final-1.jpg?fit=1280%2C812&ssl=1",
      "link": "https://themitpost.com/open-electives-2019-20-semester-vi/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Open Elective offer you the opportunity to take up a subject well-tailored to your interests, but making the right choice is not always an easy decision. To help you know your options and decide what&#8217;s best for you, here is a list of all the Open Electives on offer for the sixth semester.\n"
    },
    {
      "_id": 26619,
      "category": "Event Reports",
      "timestamp": "2019-10-28T10:00:31",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "28"
      },
      "title": "In Pursuit of a Green Future—Manipal Towards Sustainability",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/10/Article-Image-MTS.jpg?fit=960%2C640&ssl=1",
      "link": "https://themitpost.com/pursuit-green-future-manipal-towards-sustainability/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Chandramohan Gupta, Head of Corporate Affairs, Coca-Cola (India and Southwest Asia), was invited to MIT to deliver a talk on the current scenario of sustainable growth and development in India. As an expert in the field of sustainability in the country, he had several insights to share with the eager audience.\n"
    },
    {
      "_id": 27181,
      "category": "TechTatva",
      "timestamp": "2019-10-27T10:00:52",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "27"
      },
      "title": "The Manipal Conclave&#8217;19",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/11/conclave.png?fit=1900%2C1001&ssl=1",
      "link": "https://themitpost.com/the-manipal-conclave-19/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "TechTatva&#8217;19 witnessed several inspirational and entertaining speakers during The Manipal Conclave. This event that took place over the course three days featured personalities ranging from entrepreneurs and social activists to comedians and musicians.  \n"
    },
    {
      "_id": 18776,
      "category": "General",
      "timestamp": "2019-10-26T08:00:25",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "26"
      },
      "title": "The Open Electives (2019-20)—Semester IV",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2017/12/final-1.jpg?fit=1280%2C812&ssl=1",
      "link": "https://themitpost.com/open-electives-2019-20-semester-iv/",
      "author": {
        "name": "The Post Staff",
        "url": "https://themitpost.com/author/thestaff/"
      },
      "message": "Open Electives offer you the opportunity to take up a subject well-tailored to your interests, but making the right choice is not always easy. To help you know your options and decide what&#8217;s best for you, here is a list of all the Open Electives on offer for the fourth semester.\n"
    },
    {
      "_id": 26533,
      "category": "Sports &amp; Athletics",
      "timestamp": "2019-10-19T10:00:20",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "19"
      },
      "title": "The NBA in Our Backyard―NBA India Games 2019",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/10/images-4.jpeg?fit=672%2C446&ssl=1",
      "link": "https://themitpost.com/the-nba-in-our-backyard/",
      "author": {
        "name": "Aryaman Jha",
        "url": "https://themitpost.com/author/aryaman/"
      },
      "message": "The Sacramento Kings recently played the Indiana Pacers at the NSCI Dome in Worli, in what was, the first NBA game to be held in India. In this article, we bring you a rundown of this landmark event for basketball fans all over the country, straight from the bleachers. \n"
    },
    {
      "_id": 26515,
      "category": "Event Reports",
      "timestamp": "2019-10-15T20:00:57",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "15"
      },
      "title": "Right To Care—Palliative Care Awareness Walk 2019",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/10/pc1.jpg?fit=1600%2C1064&ssl=1",
      "link": "https://themitpost.com/right-care-palliative-care-awareness-walk-2019/",
      "author": {
        "name": "Joshika Sachithanandan",
        "url": "https://themitpost.com/author/joshika/"
      },
      "message": "The Department of Palliative Medicine and Supportive Care organised a Palliative Care Awareness Walkathon on 12th October 2019 as part of World Hospice and Palliative Care Day activities. The walkathon witnessed people from all walks of life in attendance, including several esteemed healthcare professionals. Following the walkathon, a short program was held at Dr TMA Pai Hospital, Udupi, to raise awareness about palliative care and its benefits among the general public.\n"
    },
    {
      "_id": 26360,
      "category": "TechTatva",
      "timestamp": "2019-10-09T20:30:59",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "9"
      },
      "title": "Raising Awareness about Breast Cancer—A Walkathon by VSO and TechTatva",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/10/walkathon-features-img.jpg?fit=1920%2C1080&ssl=1",
      "link": "https://themitpost.com/breast-cancer-walkathon-techtatva/",
      "author": {
        "name": "Varun Potty",
        "url": "https://themitpost.com/author/varun-potty/"
      },
      "message": "As a part of TechTatva&#8217;s social outreach programmes, a Walkathon was held in association with VSO on 6th October, to raise awareness about breast cancer. The participants traversed the MAHE campus with eye-catching placards while chanting slogans to draw attention to this important cause. \n"
    },
    {
      "_id": 26371,
      "category": "Event Reports",
      "timestamp": "2019-10-08T12:30:46",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "8"
      },
      "title": "Behind The Curtain—A Fireside Chat with Ratna Pathak Shah",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/10/rp4.jpg?fit=960%2C550&ssl=1",
      "link": "https://themitpost.com/behind-curtain-fireside-chat-ratna-pathak-shah/",
      "author": {
        "name": "Joshika Sachithanandan",
        "url": "https://themitpost.com/author/joshika/"
      },
      "message": "The Think Tank&#8217;s flagship event, A Fireside Chat, returned with its third edition, on 6th October 2019. The guest, film and theatre heavyweight, Ratna Pathak Shah, enthralled the audience with her eloquence and wit. The actress spoke about her experiences and the changes that she wishes to see in the film industry. \n"
    },
    {
      "_id": 26311,
      "category": "TechTatva",
      "timestamp": "2019-10-07T10:30:37",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "7"
      },
      "title": "Tales of Inspiration―Humans of TechTatva",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/10/Cover-Pic.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/tales-inspiration-humans-techtatva/",
      "author": {
        "name": "Abhijit Rajanish",
        "url": "https://themitpost.com/author/abhijit/"
      },
      "message": "The Conclave category of TechTatva organised Humans of Tech Tatva on 5th October 2019. Over the course of ninety minutes, five speakers captivated the audience with their heart-warming and inspirational stories. \n"
    },
    {
      "_id": 26198,
      "category": "Event Reports",
      "timestamp": "2019-10-02T10:30:20",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "2"
      },
      "title": "A Portal to a Future Career—Vidya by SCIO Manipal",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/09/V1.jpeg?fit=1280%2C960&ssl=1",
      "link": "https://themitpost.com/vidya-scio/",
      "author": {
        "name": "Trisha Anil",
        "url": "https://themitpost.com/author/trisha/"
      },
      "message": "On the morning of 27th September 2019, the SCIO Foundation, Manipal organised a career counselling session for high school students from the nearby Vidyodhaya School. Through their interactive talks, they disseminated information about career options and cleared doubts about future prospects in various fields.\n"
    },
    {
      "_id": 26182,
      "category": "Event Reports",
      "timestamp": "2019-10-01T18:30:35",
      "date": {
        "year": "2019",
        "month": "Oct",
        "day": "1"
      },
      "title": "Understanding the Index―Stock Meets by ESOM",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/WhatsApp-Image-2019-09-23-at-23.15.58.jpeg?fit=1280%2C960&ssl=1",
      "link": "https://themitpost.com/understanding-index-stock-meets-esom/",
      "author": {
        "name": "Abhijit Rajanish",
        "url": "https://themitpost.com/author/abhijit/"
      },
      "message": "Most people are unsure of how to invest in stocks, and to the untrained, stocks can almost seem like gambling. On 23rd September, ESOM shared some insights on how the stock market works and how to benefit from it at their event, Stock Meets.  \n"
    },
    {
      "_id": 26211,
      "category": "Event Reports",
      "timestamp": "2019-09-30T20:00:14",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "30"
      },
      "title": "Unmasking the Truth—Aaj ka Bharat, Aap ka Bharat by ADA Dramatics",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/70885337_2404504126266038_9015851341804732416_o.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/unmasking-truth-ada-street-play/",
      "author": {
        "name": "Prajyoth Kadamba",
        "url": "https://themitpost.com/author/prajyoth-kadamba/"
      },
      "message": "Aaj ka Bharat, Aap ka Bharat, a street-play by ADA Dramatics performed by their newly recruited members, impressed with its sharp commentary on society and news culture in modern times. The riveting performances of the actors, along with a dose of humour and satire, made for a genuinely gripping performance.\n"
    },
    {
      "_id": 26236,
      "category": "Event Reports",
      "timestamp": "2019-09-30T10:00:58",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "30"
      },
      "title": "A Modern Day Tragedy—Media Pe Vaar by Aaina Dramatics",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/09/IMG_20190923_204245.jpg?fit=1920%2C907&ssl=1",
      "link": "https://themitpost.com/modern-day-tragedy-media-pe-vaar-aaina-dramatics/",
      "author": {
        "name": "Aryaman Jha",
        "url": "https://themitpost.com/author/aryaman/"
      },
      "message": "Aaina, the dramatics club, performed a street play aptly titled &#8216;Media Pe Vaar&#8217;. In a moving display of theatre, Aaina highlighted important issues ignored by the media and illustrated the necessity for fair and unbiased journalism.\n"
    },
    {
      "_id": 26146,
      "category": "Event Reports",
      "timestamp": "2019-09-29T20:30:06",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "29"
      },
      "title": "Taking the Centre Stage &#8211; Spotlight by AAINA Dramatics",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/09/WhatsApp-Image-2019-09-28-at-8.07.51-PM.jpeg?fit=1080%2C1080&ssl=1",
      "link": "https://themitpost.com/taking-centre-stage-spotlight-aaina-dramatics/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "Spotlight by AAINA Dramatics was held on 22nd September in the library auditorium. The sublime mixture of light entertainment and intense theatrics, kept the audience enraptured throughout the whole eight-play event.\n"
    },
    {
      "_id": 26164,
      "category": "Event Reports",
      "timestamp": "2019-09-27T21:00:07",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "27"
      },
      "title": "Celebrating a Homecoming—Onam 2019",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/09/71816253_2398290550220729_2003922450575785984_o.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/onam/",
      "author": {
        "name": "Adithya Nayak",
        "url": "https://themitpost.com/author/adithya/"
      },
      "message": "With students in traditional attire and the halls of the Quadrangle echoing with the sound of festivities, Onam was celebrated in MIT with a lot of enthusiasm. The Onam Committee ensured that the students experienced every cultural aspect of the festival, from the delicious payasam to the competitive tug of war, to the fullest. \n"
    },
    {
      "_id": 26293,
      "category": "Event Reports",
      "timestamp": "2019-09-26T22:48:20",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "26"
      },
      "title": "The Dark Side of Humanity &#8211; Cults 101",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/10/cults-1-1.jpg?fit=960%2C640&ssl=1",
      "link": "https://themitpost.com/dark-side-humanity-cults-101/",
      "author": {
        "name": "Varun S",
        "url": "https://themitpost.com/author/varun/"
      },
      "message": "Humans have always had a tendency to be drawn towards a herd-mentality. On the 23rd of September, Blank-101 explored the dark side of this phenomenon as they discussed the formation and functioning of cults across the world.\n"
    },
    {
      "_id": 26131,
      "category": "Event Reports",
      "timestamp": "2019-09-25T21:00:34",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "25"
      },
      "title": "Picking up the Pace—Annual Cross Country Run",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/70933391_2394184990631285_2492122136047517696_o.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/picking-pace-annual-cross-country-run/",
      "author": {
        "name": "Saharsh Ranjan",
        "url": "https://themitpost.com/author/saharsh/"
      },
      "message": "The MIT Sports Club and the Physical Education Department organised the annual Cross Country Run on 15th September 2019. The run that began from the MIT Recreation Center saw boys and girls cover distances of ten and eight kilometres respectively. While twenty-four enthusiastic students participated in the event on Sunday morning, only eleven of them qualified for the MIT Cross Country team.\n"
    },
    {
      "_id": 26070,
      "category": "Event Reports",
      "timestamp": "2019-09-24T20:00:40",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "24"
      },
      "title": "Embarking on a Journey of Inquiry—Search for Research by ACM and ACM-W",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/09/IMG_20190915_151406.jpg?fit=1920%2C907&ssl=1",
      "link": "https://themitpost.com/embarking-journey-inquiry-search-research-acm-acm-w/",
      "author": {
        "name": "Aryaman Jha",
        "url": "https://themitpost.com/author/aryaman/"
      },
      "message": "Venturing into the field of academic research may seem like a daunting prospect for most undergraduate students. To familiarise students with the process of conducting research, ACM and ACM-W hosted a talk by Tanvi Anand, a fourth-year student and the author of a published academic paper. \n"
    },
    {
      "_id": 26047,
      "category": "Event Reports",
      "timestamp": "2019-09-22T10:30:02",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "22"
      },
      "title": "An Amalgam of Dance and Humour—Ottan Thullal by the Kerala Kalamandalam",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/3.jpeg?fit=1280%2C960&ssl=1",
      "link": "https://themitpost.com/ottan-thullal-kerela-kalamandalam/",
      "author": {
        "name": "Adithya Nayak",
        "url": "https://themitpost.com/author/adithya/"
      },
      "message": "A recent performance hosted by the Cultural Coordination Committee brought the unique dance form of Ottan Thullal to audiences in Manipal. A mythological story, combined with elements of humour and the vibrant expressions of the artists, made for an evening of excellent music, arts and dance.\n"
    },
    {
      "_id": 26036,
      "category": "Event Reports",
      "timestamp": "2019-09-19T20:00:15",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "19"
      },
      "title": "Breaking Down Walls—Verse by Student Support Centre",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/WhatsApp-Image-2019-09-16-at-19.18.23-1.jpeg?fit=1024%2C768&ssl=1",
      "link": "https://themitpost.com/sscverse/",
      "author": {
        "name": "Trisha Anil",
        "url": "https://themitpost.com/author/trisha/"
      },
      "message": "On 13th September 2019, the Student Support Centre organised an evening of poetry and music with the theme—Conversations Through Rhythm. The event allowed the gathering to express their feelings, and talk about experiences that were close to their heart in a safe and supportive environment. \n"
    },
    {
      "_id": 26094,
      "category": "Event Reports",
      "timestamp": "2019-09-16T20:00:45",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "16"
      },
      "title": "Seeing in A New Light—Blindfolded Conversations by The Psych Club",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/09/69958216_2379497638766687_8773164652830916608_o.jpg?fit=1400%2C1080&ssl=1",
      "link": "https://themitpost.com/seeing-new-light-blindfolded-conversations-psych-club/",
      "author": {
        "name": "Vinayak Srivastava",
        "url": "https://themitpost.com/author/vinayak/"
      },
      "message": "Blindfolded Conversations, organised by the Psych Club, provided participants with an opportunity to indulge in intriguing conversations with strangers, without actually knowing what they looked like. The event, which was open to all MAHE students across town, made for some exciting interactions.\n"
    },
    {
      "_id": 25987,
      "category": "Event Reports",
      "timestamp": "2019-09-15T20:00:45",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "15"
      },
      "title": "A Congregation of Clubs—Cambiar &#8217;19",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/cambiar-fi-1.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/cambiar19/",
      "author": {
        "name": "Ashwin Suresh",
        "url": "https://themitpost.com/author/ashwinm/"
      },
      "message": "With recruitment for various clubs and students projects set to take place over the next few days, it is crucial to make an informed decision while joining a club. On 10th September, Leaders of Tomorrow brought some of Manipal&#8217;s finest student bodies on one platform, to provide freshers with an overview of the clubs Manipal has to offer. \n"
    },
    {
      "_id": 25952,
      "category": "Sports &amp; Athletics",
      "timestamp": "2019-09-13T19:00:18",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "13"
      },
      "title": "Inter-Branch Badminton Tournament—ECE Takes the Win",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/09/69333466_2358801307502987_5864670270937104384_o.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/inter-branch-badminton-tournament-ece-takes-win/",
      "author": {
        "name": "Shruti Wagle",
        "url": "https://themitpost.com/author/shruti/"
      },
      "message": "The MIT Sports Club conducted an inter-branch badminton tournament on 1st September in the Recreation Centre. The enthralling tournament, that saw brilliant performances from all the players, finally resulted in a win for the ECE team. \n"
    },
    {
      "_id": 23949,
      "category": "General",
      "timestamp": "2019-09-12T19:30:08",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "12"
      },
      "title": "A Guide to Using Your @learner.manipal.edu Email Address",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/learner-id-featured-img-trupti.jpeg?fit=1280%2C720&ssl=1",
      "link": "https://themitpost.com/a-guide-to-using-your-manipal-edu-email-address/",
      "author": {
        "name": "Aayushi Agarwal",
        "url": "https://themitpost.com/author/aayushi/"
      },
      "message": "An educational email address, or a .edu ID, allows university students to use and avail discounts on several helpful online services. From price reductions on music streaming apps like Apple Music to free Grammarly Premium accounts, there is a lot that students can benefit from. Read on to learn more about the perks of the .edu email address.\n"
    },
    {
      "_id": 25858,
      "category": "News",
      "timestamp": "2019-09-08T19:00:27",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "8"
      },
      "title": "Animal Lives Matter Too—International Dogs Day March",
      "featured_media": "https://i1.wp.com/themitpost.com/wp-content/uploads/2019/09/WhatsApp-Image-2019-09-08-at-12.34.00-PM.jpeg?fit=1024%2C768&ssl=1",
      "link": "https://themitpost.com/animal-lives-matter-international-dogs-day-march/",
      "author": {
        "name": "Tezraj Kayshap",
        "url": "https://themitpost.com/author/tezraj/"
      },
      "message": "On 29th August, a crowd of animal lovers took to the streets in a demonstration of animal rights and its infringement. Raising a voice for animals, the gathering paraded from Syndicate Circle to End Point Circle and demanded due attention. \n"
    },
    {
      "_id": 25823,
      "category": "News",
      "timestamp": "2019-09-05T20:00:44",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "5"
      },
      "title": "The K-Wave in Udupi—Hallyu Fest 2019",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/08/IMG_20190825_162543.jpg?fit=1440%2C1080&ssl=1",
      "link": "https://themitpost.com/k-wave-udupi-hallyu-fest-2019/",
      "author": {
        "name": "Prajaktha Mallya",
        "url": "https://themitpost.com/author/prajaktha/"
      },
      "message": "Hallyu Fest 2019 was held in Udupi for Kpop/Kdrama fans around town. With fun activities like sing-alongs, dance challenges and performances by participants, this was one event no Kpop fan would have liked to miss.\n"
    },
    {
      "_id": 25811,
      "category": "Event Reports",
      "timestamp": "2019-09-04T10:00:06",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "4"
      },
      "title": "Freak Show―Freaks 101 by Blank 101",
      "featured_media": "https://i2.wp.com/themitpost.com/wp-content/uploads/2019/08/Freak-101-1.jpg?fit=1620%2C1080&ssl=1",
      "link": "https://themitpost.com/freak-show%e2%80%95freaks-101-blank-101/",
      "author": {
        "name": "Abhijit Rajanish",
        "url": "https://themitpost.com/author/abhijit/"
      },
      "message": "When passed down over generations, what starts out as a figment of one’s imagination turns into a bedtime story for another. Mankind has spun tales of many a legendary creature, ranging from dragons to werewolves. On 23rd August 2019, Blank 101 delved into all things mystical and supernatural, and explored their peculiar origins.\n"
    },
    {
      "_id": 25753,
      "category": "Event Reports",
      "timestamp": "2019-09-02T20:00:27",
      "date": {
        "year": "2019",
        "month": "Sept",
        "day": "2"
      },
      "title": "Inspiring Action—World&#8217;s Largest Lesson by AIESEC",
      "featured_media": "https://i0.wp.com/themitpost.com/wp-content/uploads/2019/08/68756246_2342308642485587_1592923698443059200_n.jpg?fit=960%2C639&ssl=1",
      "link": "https://themitpost.com/inspiring-action-worlds-largest-lesson-aiesec/",
      "author": {
        "name": "Devyani Mehta",
        "url": "https://themitpost.com/author/devyani/"
      },
      "message": "The World’s Largest Lesson, an initiative devised to educate the youth about the Sustainable Development Goals, was conducted by AIESEC on 23rd August 2019. With the aim of raising awareness about global issues and inspiring action, over two hundred volunteers were involved in delivering this lesson to more than one thousand students from various schools in Manipal. \n"
    }
  ];