

enum Role { Admin, Student, Parent, Teacher, StudentAffair }
enum Menu { Home, User, Class, Report, LessonPlan }
enum MenuExpand {
  TeacherTimeLine,
  PaymentInfo,
  AssessmentScore,
  Assessment,
  Admin,
  Student,
  Parent,
  Teacher,
  StudentAffair,
  Class,
  Report
}

String getRole(Role role) {
  switch (role) {
    case Role.Admin:
      return 'Admin';
      break;
    case Role.Teacher:
      return 'Teacher';
      break;
    case Role.Parent:
      return 'Parent';
      break;
    case Role.Student:
      return 'Student';
      break;
    case Role.StudentAffair:
      return 'Student Affair';
      break;
    default:
      return '';
  }
}

String getMenuIconUrl(Menu menu) {
  switch (menu) {
    case Menu.Home:
      return 'assets/icons/home.svg';
      break;
    case Menu.User:
      return 'assets/icons/users.svg';
      break;
    case Menu.Class:
      return 'assets/icons/class.svg';
      break;
    case Menu.LessonPlan:
      return 'aassets/icons/lessonPlan.svg';
      break;
    case Menu.Report:
      return 'assets/icons/report.svg';
      break;
    default:
      return null;
  }
}

String getMenuTitle(MenuExpand menu) {
  switch (menu) {
    case MenuExpand.PaymentInfo:
      return 'Payment Info';
      break;
    case MenuExpand.TeacherTimeLine:
      return 'Teacher Timeline';
      break;
    case MenuExpand.Admin:
      return 'Admin';
      break;
    case MenuExpand.Teacher:
      return 'Teacher';
      break;
    case MenuExpand.StudentAffair:
      return 'Student Affair';
      break;
    case MenuExpand.Parent:
      return 'Parent';
      break;
    case MenuExpand.Student:
      return 'Student';
      break;
    case MenuExpand.Report:
      return 'Report';
      break;
          case MenuExpand.Class:
      return 'Class';
      break;
    default:
      return null;
  }
}
