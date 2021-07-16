// const _baseUrl = "http://localhost:5000";

// void setEnvironment(Environment env) {
//   switch (env) {
//     case Environment.dev:
//       _config = devConstants;
//       break;
//     case Environment.stage:
//       _config = stageConstants;
//       break;
//     case Environment.prod:
//       _config = prodConstants;
//       break;
//   }
// }

dynamic get apiBaseUrl {
  return "http://ec2-52-221-194-25.ap-southeast-1.compute.amazonaws.com:5000"; //"http://localhost:5000"; //"http://ec2-18-116-39-16.us-east-2.compute.amazonaws.com:5000"
}
