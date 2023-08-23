
import 'package:flutter/cupertino.dart';

EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);


pageContent(String) {
  switch (String) {

    /////////////////////////////////////////////////////////////////
    case 'home':
      return '''
This site is basically a business card / resume / portfolio.  It's just my playground for pet projects and a place to show off my skills.
''';

  /////////////////////////////////////////////////////////////////
    case 'summary':
      return '''
Experienced in consulting with customers and other stakeholders to gather requirements, define scopes and create project plans. Capability of managing complex, high-visibility technical projects.

Effective at technical support, inventory management and customer relationship development. Results-focused, technical project manager with many years of proven success in developing and leading cross-functional technical teams to execute and deliver major technology initiatives.
''';

  /////////////////////////////////////////////////////////////////
    case 'projects':
      return '''
These projects are all basic and in development. You are free to look at them, but they are not ready for prime time.
      
I do not have any production projects here for security or NDA reasons.
''';

  /////////////////////////////////////////////////////////////////
    case 'education':
      return '''
I am self taught in pretty much everything from software development to business management and marketing.

High School Diploma: 06/1981 
Magnolia High School - Magnolia, TX
''';

  /////////////////////////////////////////////////////////////////
    case 'objectives':
      return '''
A list of my goals and objectives will be here.
''';

  /////////////////////////////////////////////////////////////////
    case 'experience':
      return '''
Global Services Reservations Agent, 10/2021 to Current 
United Airlines – Houston, TX

    •	Provided high level of customer service to elite customers using active listening and effective interpersonal skills
    •	Received 20+ orchid letters for delivering above and beyond customer expectations
    •	Documented over 100 technical issues and suggestions for improvements to Navigator
    •	Actively involved in Navigator Beta Testing
    •	Used critical thinking to break down technical problems and make recommendations
    •	Cultivated interpersonal skills by building positive relationships with others
    •	Passionate about learning and committed to continual improvement
    •	Demonstrated high level of initiative and creativity while tackling difficult tasks
    •	Adaptable and proficient in learning new concepts quickly and efficiently



Principal, 01/2003 to 06/2021 
Texas Business Technologies Dba Anything Internet – Houston, TX

    •	Designed 20+ business applications and managed technical requirements 
    •	Facilitated communications between technical team and stakeholders
    •	Consulted on client branding and marketing initiatives
    •	Managed remote technical staff of 30 engineers in Romania, India, and The Philippines
    •	Hosted weekly technology radio talk show on CNN radio to promote business technology and marketing strategies



Senior Infrastructure Engineer, 01/1988 to 12/2002 
EDS – Houston, TX

    •	Business development for mid-range and mainframe infrastructure projects ranging from \$1M to \$150M total contract value
    •	Participated in system development life cycle from requirements analysis through system implementation
    •	Developed proposals for stakeholders outlining project scope and timeline
    •	Implemented and managed distributed network of over 60 mid-ranged HP-UX systems
    •	Developed and implemented multiple business systems for Continental Airlines
    •	Worked closely with customers, internal staff and stakeholders to determine planning, implementation and integration of new applications and infrastructure
    •	Managed installation, upgrade and deployment projects and provided on-site direction for network engineers
    •	Managed use of various databases and configured, installed and upgraded new ones
    •	Supported data center operations with procedures, script writing, and on-call support
    •	Managed and monitored installed systems for highest level of availability
''';

  /////////////////////////////////////////////////////////////////
    case 'download':
      return '''
You can download a printable copy of my resume here: (coming soon)
''';

  /////////////////////////////////////////////////////////////////
    case 'contact':
      return '''
I'm always interested in new opportunities. If you'd like to contact me, please send an email to: Jerry[at]JerryHobby[dot]com
''';

    case 'skills':
      return '''
Over the years I've worked with many technologies, methodologies, and programming languages.

    •	Business Requirements
    •	Technical Design
    •	Process Improvement
    •	Software Development
    •	Customer Service	•	Technical Expertise
    •	Communication Skills
    •	Project Management
    •	Airline Experience
    •	Navigator, EZR, SHARES
    •	Windows, Linux, Mac
''';

  /////////////////////////////////////////////////////////////////
    default:
      return 'not finished';
  }
}
