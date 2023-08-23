
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
''';

  /////////////////////////////////////////////////////////////////
    case 'objectives':
      return '''
A list of my goals and objectives will be here.
''';

  /////////////////////////////////////////////////////////////////
    case 'experience':
      return '''
My career and projects history will be here.
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

  /////////////////////////////////////////////////////////////////
    default:
      return 'not finished';
  }
}
