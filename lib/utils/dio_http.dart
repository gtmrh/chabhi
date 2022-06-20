// ignore_for_file: avoid_print, await_only_futures

import 'package:dio/dio.dart';
// import 'package:gharaunda/screens/login/model/login_model.dart';
// import 'package:gharaunda/screens/login/model/login_param.dart';
// import 'package:gharaunda/screens/notification/model/notice_model.dart';
// import 'package:gharaunda/utils/constant.dart';
// import 'package:gharaunda/utils/sharedpref.dart';

class DioClient {
  final Dio _dio = Dio();

  late String _baseUrl;

//--------------------Login--------------------------------------------------------
  // Future<LoginModel?> loginStudent({required LoginParam loginParam}) async {
  //   LoginModel? retrievedUser;

  //   _baseUrl = Constants.Base_Url + Constants.Login;

  //   try {
  //     Response response = await _dio.post(
  //       _baseUrl,
  //       data: loginParam.toJson(),
  //     );

  //     print('url:' + _baseUrl);

  //     print('login: ${response.data}');

  //     //Login done
  //     SharedPref().setLogged(true);

  //     retrievedUser = LoginModel.fromJson(response.data);
  //   } catch (e) {
  //     print('Error creating user: $e');

  //     retrievedUser = null;

  //     return retrievedUser;
  //   }

  //   return retrievedUser;
  // }

  //---------------------------------------Notice-----------------------------------------

  // Future<List<NoticeModel>> getNotices() async {
  //   var userId = await SharedPref().getUserId();
  
  //   _baseUrl = Constants.Base_Url + Constants.Notice + userId;

  //   List<NoticeModel> retrived = <NoticeModel>[];
  //   try {
  //     Response response = await _dio.get(
  //       _baseUrl,
  //     );

  //     print('Notice: ${response.data}');
  //     Iterable list = response.data;

  //     retrived = list.map((model) => NoticeModel.fromJson(model)).toList();
  //   } catch (e) {
  //     print('Error: $e');
  //   }

  //   return retrived;
  // }

//   //--------------------College Details--------------------------------------------------------
//   Future<ClgDetailsModel?> clgDetails() async {
//     ClgDetailsModel? retrievedUser;
//     String clgId = await SharedPref().getClgId();
//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.ClgDetails + clgId,
//       );

//       print('clgdetails: ${response.data}');

//       retrievedUser = ClgDetailsModel.fromJson(response.data);
//     } catch (e) {
//       print('Error creating user: $e');

//       retrievedUser = null;

//       return retrievedUser;
//     }

//     return retrievedUser;
//   }

//   //--------------------Staff Login--------------------------------------------------------
//   Future<LoginModel?> loginStaff({required UserLogin userInfo}) async {
//     LoginModel? retrievedUser;
//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.post(
//         _baseUrl + Constants.StaffLogin,
//         data: userInfo.toJson(),
//       );

//       print('login: ${response.data}');

//       //Login done
//       SharedPref().setLogged(true);

//       retrievedUser = LoginModel.fromJson(response.data);
//     } catch (e) {
//       print('Error creating user: $e');

//       retrievedUser = null;

//       return retrievedUser;
//     }

//     return retrievedUser;
//   }

// //--------------------------------------------------userList----------------------------------------------------------------------
//   Future<UsersModel?> getUser() async {
//     UsersModel? user;
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response userData = await _dio.get(_baseUrl);
//       print('User Info: ${userData.data}');
//       user = UsersModel.fromJson(userData.data);
//     } on DioError catch (e) {
//       // The request was made and the server responded with a status code
//       // that falls out of the range of 2xx and is also not 304.
//       if (e.response != null) {
//         print('Dio error!');
//         print('STATUS: ${e.response?.statusCode}');
//         print('DATA: ${e.response?.data}');
//         print('HEADERS: ${e.response?.headers}');
//       } else {
//         // Error due to setting up or sending the request
//         print('Error sending request!');
//         print(e.message);
//       }
//     }
//     return user;
//   }

// //------------------------------------Attendance List------------------------------------------------------------
//   Future<List<AttendListModel>> getAttend(
//       {required GetAtendModel getAtendModel}) async {
//     List<AttendListModel> retrived = <AttendListModel>[];
//     String responseData;
//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.get(_baseUrl + Constants.GetAttend,
//           queryParameters: getAtendModel.toJson());

//       print('atnd: ${response.data}');

//       // retrived = attendListModelFromJson(response.data);

//       Iterable list = response.data;

//       retrived = list.map((model) => AttendListModel.fromJson(model)).toList();

//       // retrived.add(AttendListModel.fromJson(response.data));
//       for (var i = 0; i < retrived.length; i++) {
//         print('list:' + retrived[i].month);
//       }
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

// //--------------------------------------Leave List-------------------------------------------------------------------------
//   Future<List<LeaveListModel>> getLeaveList(
//       {required GetAtendModel getAtendModel}) async {
//     List<LeaveListModel> retrived = <LeaveListModel>[];
//     String responseData;

//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.get(_baseUrl + Constants.GetLeaves,
//           queryParameters: getAtendModel.toJson());

//       print('leaves: ${response.data}');

//       // retrived = attendListModelFromJson(response.data);

//       Iterable list = response.data;

//       retrived = list.map((model) => LeaveListModel.fromJson(model)).toList();

//       // retrived.add(AttendListModel.fromJson(response.data));
//       for (var i = 0; i < retrived.length; i++) {
//         print('list:' + retrived[i].fromDate);
//       }
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

// //-----------------------------Leave Apply--------------------------------------------
//   Future<ApplyMsgModel?> applyLeave(
//       {required ApplyLeaveModel applyLeaveModel}) async {
//     ApplyMsgModel? retrievedUser;

//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       // ignore: unnecessary_new
//       FormData formData = new FormData.fromMap({
//         "course_id": applyLeaveModel.course_id,
//         "ins_id": applyLeaveModel.ins_id,
//         "stu_id": applyLeaveModel.stu_id,
//         "from_date": applyLeaveModel.from_date,
//         "to_date": applyLeaveModel.to_date,
//         "reason": applyLeaveModel.course_id,
//         "document": await MultipartFile.fromString(applyLeaveModel.document,
//             filename: applyLeaveModel.document)
//       });
//       print("document>>" + applyLeaveModel.document);

//       Response response = await _dio.post(
//         _baseUrl + Constants.GetLeaves,
//         data: formData,
//       );

//       print('apply leave: ${response.data}');

//       retrievedUser = ApplyMsgModel.fromJson(response.data);
//     } catch (e) {
//       print('Error creating user: $e');
//     }

//     return retrievedUser;
//   }

//   //------------------------Syllabus List---------------------------------

//   Future<List<SyllabusModel>> getSyllabus(
//       {required GetAtendModel getAtendModel}) async {
//     List<SyllabusModel> retrived = <SyllabusModel>[];
//     String responseData;

//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.GetSyllabus,
//       );

//       print('leaves: ${response.data}');

//       // retrived = attendListModelFromJson(response.data);

//       Iterable list = response.data;

//       retrived = list.map((model) => SyllabusModel.fromJson(model)).toList();

//       // retrived.add(AttendListModel.fromJson(response.data));
//       for (var i = 0; i < retrived.length; i++) {
//         print('list:' + retrived[i].file);
//       }
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Get All Books-----------------------------------------

//   Future<List<BooksModel>> getBooks() async {
//     List<BooksModel> retrived = <BooksModel>[];
//     String responseData;

//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.GetBooks,
//       );

//       print('books: ${response.data}');

//       Iterable list = response.data;

//       retrived = list.map((model) => BooksModel.fromJson(model)).toList();

//       // retrived.add(AttendListModel.fromJson(response.data));
//       for (var i = 0; i < retrived.length; i++) {
//         print('list:' + retrived[i].bookTitle);
//       }
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Request Books-----------------------------------------

//   Future<ApplyMsgModel?> requsetBooks(ReqBookParam param) async {
//     ApplyMsgModel? retrived;

//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response =
//           await _dio.post(_baseUrl + Constants.IssueBook, data: param.toJson());

//       print('response: ${response.data}');

//       retrived = response.data;

//       Fluttertoast.showToast(msg: "Book issue request sent.");
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

// //---------------------------------------Book History-----------------------------------------

//   Future<List<BookHistoryModel>> bookHistory() async {
//     List<BookHistoryModel> retrived = <BookHistoryModel>[];

//     String studentId = await SharedPref().getUserId();

//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.IssueBook + studentId,
//       );

//       print('response: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => BookHistoryModel.fromJson(model)).toList();

//       for (var i = 0; i < retrived.length; i++) {
//         print('booklist:' + retrived[i].id);
//       }
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Events-----------------------------------------

//   Future<List<EventModel>> getEvents() async {
//     _baseUrl = await SharedPref().getClgUrl();

//     List<EventModel> retrived = <EventModel>[];
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.EVENTS,
//       );

//       print('Event: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => EventModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Holiday-----------------------------------------

//   Future<List<HolidayModel>> getHolidays() async {
//     List<HolidayModel> retrived = <HolidayModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.HOLIDAYS,
//       );

//       print('Holiday: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => HolidayModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Hostels List-----------------------------------------

//   Future<List<HostelListModel>> getHostels() async {
//     List<HostelListModel> retrived = <HostelListModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.HostelList,
//       );

//       print('HostelList: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => HostelListModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Hostels Member-----------------------------------------

//   Future<List<HostelMemberModel>> getHostelMemb() async {
//     List<HostelMemberModel> retrived = <HostelMemberModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.HostelMember,
//       );

//       print('HostelMember: ${response.data}');
//       Iterable list = response.data;

//       retrived =
//           list.map((model) => HostelMemberModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Hostels Cat-----------------------------------------

//   Future<List<HostelCatModel>> getHostelCat() async {
//     List<HostelCatModel> retrived = <HostelCatModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.HostelCat,
//       );

//       print('HostelCat: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => HostelCatModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Request Hostel-----------------------------------------

//   Future<ApplyMsgModel?> requsetHostel(ReqHostelParam param) async {
//     ApplyMsgModel? retrived;
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.post(_baseUrl + Constants.RequsetHostel,
//           data: param.toJson());

//       print('response: ${response.data}');

//       retrived = response.data;

//       Fluttertoast.showToast(msg: "Request sent.");
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Transport List-----------------------------------------

//   Future<List<TransportListModel>> getTransports() async {
//     List<TransportListModel> retrived = <TransportListModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.TransportList,
//       );

//       print('TransList: ${response.data}');
//       Iterable list = response.data;

//       retrived =
//           list.map((model) => TransportListModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Trans Member-----------------------------------------

//   Future<List<TransportMemberModel>> getTransMemb() async {
//     List<TransportMemberModel> retrived = <TransportMemberModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.TransportMember,
//       );

//       print('TransMember: ${response.data}');
//       Iterable list = response.data;

//       retrived =
//           list.map((model) => TransportMemberModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Request Bus-----------------------------------------

//   Future<ApplyMsgModel?> requsetBus(ReqTransParam param) async {
//     ApplyMsgModel? retrived;
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.post(_baseUrl + Constants.RequsetHostel,
//           data: param.toJson());

//       print('response: ${response.data}');

//       retrived = response.data;

//       Fluttertoast.showToast(msg: "Request sent.");
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Exam List-----------------------------------------

//   Future<List<ExamListModel>> getExamList() async {
//     List<ExamListModel> retrived = <ExamListModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.ExamList,
//       );

//       print('ExamList: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => ExamListModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Exam Sched-----------------------------------------

//   Future<List<ExamSchedModel>> getExamSched() async {
//     List<ExamSchedModel> retrived = <ExamSchedModel>[];
//     _baseUrl = await SharedPref().getClgUrl();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.ExamShed,
//       );

//       print('ExamList: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => ExamSchedModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Fee Installment List-----------------------------------------

//   Future<List<FeeInstallmentModel>> getFeeInstallment() async {
//     List<FeeInstallmentModel> retrived = <FeeInstallmentModel>[];
//     _baseUrl = await SharedPref().getClgUrl();

//     String userId = await SharedPref().getUserId();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.FeeInst + userId,
//       );

//       print('Fee Installment: ${response.data}');
//       Iterable list = response.data;

//       retrived =
//           list.map((model) => FeeInstallmentModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Payment Hist List-----------------------------------------

//   Future<List<PaymentHistModel>> getPaymentHist() async {
//     List<PaymentHistModel> retrived = <PaymentHistModel>[];
//     _baseUrl = await SharedPref().getClgUrl();

//     String userId = await SharedPref().getUserId();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.PaymentHist + userId,
//       );

//       print('payment hist: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => PaymentHistModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Course List-----------------------------------------

//   Future<List<CourseListModel>> getCourses() async {
//     List<CourseListModel> retrived = <CourseListModel>[];
//     _baseUrl = await SharedPref().getClgUrl();

//     String courseId = SharedPref().getCourseId();
//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.CourseList + courseId,
//       );

//       print('CourseList: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => CourseListModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Fees Type List-----------------------------------------

//   Future<List<FeeTypeListModel>> getFeesType() async {
//     List<FeeTypeListModel> retrived = <FeeTypeListModel>[];
//     _baseUrl = await SharedPref().getClgUrl();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.FeesType,
//       );

//       print('FeesType: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => FeeTypeListModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Invoice List-----------------------------------------

//   Future<List<InvoiceModel>> getInvoice() async {
//     List<InvoiceModel> retrived = <InvoiceModel>[];
//     _baseUrl = await SharedPref().getClgUrl();

//     String userId = await SharedPref().getUserId();

//     try {
//       Response response = await _dio.get(
//         _baseUrl + Constants.Invoice + userId,
//       );

//       print('Invoice: ${response.data}');
//       Iterable list = response.data;

//       retrived = list.map((model) => InvoiceModel.fromJson(model)).toList();
//     } catch (e) {
//       print('Error: $e');
//     }

//     return retrived;
//   }

//   //---------------------------------------Download File-----------------------------------------

//   Future<void> downloadFile({required String fileurl}) async {
//     Map<Permission, PermissionStatus> statuses =
//         await [Permission.storage].request();

//     _baseUrl = await SharedPref().getClgUrl();

//     if (statuses[Permission.storage]!.isGranted) {
//       var dir = await DownloadsPathProvider.downloadsDirectory;
//       if (dir != null) {
//         String savename = "file.pdf";
//         String savePath = dir.path + "/$savename";
//         print(savePath);
//         print(fileurl);
//         try {
//           await Dio().download(
//             fileurl,
//             savePath,
//             onReceiveProgress: (received, total) {
//               if (total != 1) {
//                 print((received / total * 100).toStringAsFixed(0) + "%");
//               }
//             },
//           );
//           print("File is saved to download folder.");
//           Fluttertoast.showToast(msg: "File Downloaded");
//         } on DioError catch (e) {
//           print(e.message);
//         }
//       }
//     } else {
//       print("No permission to read and write.");
//     }
//   }
}
