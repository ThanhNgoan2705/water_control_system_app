// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  static String m3(appTitle) =>
      "Chúc mừng!\nTài khoản ${appTitle} của bạn đã được kích hoạt.\nBây giờ bạn có thể đăng nhập vào không gian ${appTitle} của mình.";

  static String m0(contact) =>
      "Mã bảo mật đã được gửi đến địa chỉ email của bạn tại ${contact}.";

  static String m1(time) =>
      "Gửi lại mã trong ${Intl.plural(time, one: '1 giây', other: '${time} giây')}";

  static String m2(contact) =>
      "Mã bảo mật đã được gửi đến điện thoại của bạn tại ${contact}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accept": MessageLookupByLibrary.simpleMessage("Chấp nhận"),
        "acceptPrivacyPolicyMessage": MessageLookupByLibrary.simpleMessage(
            "Bạn phải chấp nhận Chính sách bảo mật của chúng tôi"),
        "acceptTermsOfUseMessage": MessageLookupByLibrary.simpleMessage(
            "Bạn phải chấp nhận Điều khoản sử dụng của chúng tôi"),
        "accountActivated": MessageLookupByLibrary.simpleMessage(
            "Tài khoản đã được kích hoạt thành công!"),
        "accountActivatedText": m3,
        "acknowledge": MessageLookupByLibrary.simpleMessage("Nhận"),
        "actionData": MessageLookupByLibrary.simpleMessage("Dữ liệu hành động"),
        "activatingAccount":
            MessageLookupByLibrary.simpleMessage("Đang kích hoạt tài khoản..."),
        "activatingAccountText": MessageLookupByLibrary.simpleMessage(
            "Tài khoản của bạn đang được kích hoạt.\nVui lòng chờ..."),
        "active": MessageLookupByLibrary.simpleMessage("Hoạt động"),
        "activity": MessageLookupByLibrary.simpleMessage("Hoạt động"),
        "addCommentMessage":
            MessageLookupByLibrary.simpleMessage("Thêm bình luận..."),
        "address": MessageLookupByLibrary.simpleMessage("Địa chỉ"),
        "address2": MessageLookupByLibrary.simpleMessage("Địa chỉ 2"),
        "alarmAcknowledgeText": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc chắn muốn nhận Cảnh báo?"),
        "alarmAcknowledgeTitle":
            MessageLookupByLibrary.simpleMessage("Nhận Cảnh báo"),
        "alarmClearText": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc chắn muốn xóa Cảnh báo?"),
        "alarmClearTitle": MessageLookupByLibrary.simpleMessage("Xóa Cảnh báo"),
        "alarmTypes": MessageLookupByLibrary.simpleMessage("Loại cảnh báo"),
        "alarms": MessageLookupByLibrary.simpleMessage("Cảnh báo"),
        "allDevices": MessageLookupByLibrary.simpleMessage("Tất cả thiết bị"),
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Đã có tài khoản?"),
        "appTitle": MessageLookupByLibrary.simpleMessage("ThingsBoard"),
        "areYouSure":
            MessageLookupByLibrary.simpleMessage("Bạn có chắc không?"),
        "assetName": MessageLookupByLibrary.simpleMessage("Tên tài sản"),
        "assets": MessageLookupByLibrary.simpleMessage("Tài sản"),
        "assignedToCustomer":
            MessageLookupByLibrary.simpleMessage("Giao cho khách hàng"),
        "assignedToMe":
            MessageLookupByLibrary.simpleMessage("Được giao cho tôi"),
        "assignee": MessageLookupByLibrary.simpleMessage("Người được giao"),
        "auditLogDetails":
            MessageLookupByLibrary.simpleMessage("Chi tiết nhật ký kiểm toán"),
        "auditLogs": MessageLookupByLibrary.simpleMessage("Nhật ký kiểm toán"),
        "backupCodeAuthDescription": MessageLookupByLibrary.simpleMessage(
            "Vui lòng nhập một trong các mã sao lưu của bạn."),
        "backupCodeAuthPlaceholder":
            MessageLookupByLibrary.simpleMessage("Mã sao lưu"),
        "cancel": MessageLookupByLibrary.simpleMessage("Hủy bỏ"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Thay đổi mật khẩu"),
        "chooseRegion": MessageLookupByLibrary.simpleMessage("Chọn khu vực"),
        "city": MessageLookupByLibrary.simpleMessage("Thành phố"),
        "clear": MessageLookupByLibrary.simpleMessage("Xóa"),
        "confirmNotRobotMessage": MessageLookupByLibrary.simpleMessage(
            "Bạn phải xác nhận rằng bạn không phải là robot"),
        "continueText": MessageLookupByLibrary.simpleMessage("Tiếp tục"),
        "country": MessageLookupByLibrary.simpleMessage("Quốc gia"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Tạo tài khoản"),
        "createPasswordStar":
            MessageLookupByLibrary.simpleMessage("Tạo mật khẩu *"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Mật khẩu hiện tại"),
        "currentPasswordRequireText": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu hiện tại là bắt buộc."),
        "currentPasswordStar":
            MessageLookupByLibrary.simpleMessage("Mật khẩu hiện tại *"),
        "customer": MessageLookupByLibrary.simpleMessage("Khách hàng"),
        "customers": MessageLookupByLibrary.simpleMessage("Khách hàng"),
        "days": MessageLookupByLibrary.simpleMessage("ngày"),
        "delete": MessageLookupByLibrary.simpleMessage("Xóa"),
        "deleteComment": MessageLookupByLibrary.simpleMessage("Xóa bình luận"),
        "details": MessageLookupByLibrary.simpleMessage("Chi tiết"),
        "devices": MessageLookupByLibrary.simpleMessage("Thiết bị"),
        "duration": MessageLookupByLibrary.simpleMessage("Thời gian"),
        "edit": MessageLookupByLibrary.simpleMessage("Chỉnh sửa"),
        "edited": MessageLookupByLibrary.simpleMessage("Đã chỉnh sửa"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAuthDescription": m0,
        "emailAuthPlaceholder":
            MessageLookupByLibrary.simpleMessage("Mã email"),
        "emailInvalidText": MessageLookupByLibrary.simpleMessage(
            "Định dạng email không hợp lệ."),
        "emailRequireText":
            MessageLookupByLibrary.simpleMessage("Email là bắt buộc."),
        "emailStar": MessageLookupByLibrary.simpleMessage("Email *"),
        "emailVerification":
            MessageLookupByLibrary.simpleMessage("Xác minh email"),
        "emailVerificationInstructionsText": MessageLookupByLibrary.simpleMessage(
            "Vui lòng làm theo hướng dẫn trong email để hoàn tất thủ tục đăng ký. Lưu ý: nếu bạn không thấy email trong một thời gian, hãy kiểm tra thư mục \'thư rác\' hoặc thử gửi lại email bằng cách nhấn nút \'Gửi lại\'."),
        "emailVerificationSentText": MessageLookupByLibrary.simpleMessage(
            "Một email với chi tiết xác minh đã được gửi đến địa chỉ email đã chỉ định"),
        "emailVerified":
            MessageLookupByLibrary.simpleMessage("Email đã được xác minh"),
        "entityType": MessageLookupByLibrary.simpleMessage("Loại thực thể"),
        "europe": MessageLookupByLibrary.simpleMessage("Châu Âu"),
        "europeRegionShort": MessageLookupByLibrary.simpleMessage("Frankfurt"),
        "failedToLoadAlarmDetails": MessageLookupByLibrary.simpleMessage(
            "Không thể tải chi tiết cảnh báo"),
        "failedToLoadTheList":
            MessageLookupByLibrary.simpleMessage("Không thể tải danh sách"),
        "failureDetails": MessageLookupByLibrary.simpleMessage("Chi tiết lỗi"),
        "firstName": MessageLookupByLibrary.simpleMessage("Tên"),
        "firstNameRequireText":
            MessageLookupByLibrary.simpleMessage("Tên là bắt buộc."),
        "firstNameStar": MessageLookupByLibrary.simpleMessage("Tên *"),
        "firstNameUpper": MessageLookupByLibrary.simpleMessage("Tên"),
        "home": MessageLookupByLibrary.simpleMessage("Trang chủ"),
        "hours": MessageLookupByLibrary.simpleMessage("giờ"),
        "imNotARobot":
            MessageLookupByLibrary.simpleMessage("Tôi không phải là robot"),
        "inactive": MessageLookupByLibrary.simpleMessage("Không hoạt động"),
        "inactiveUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
            "Người dùng không hoạt động đã tồn tại"),
        "inactiveUserAlreadyExistsMessage": MessageLookupByLibrary.simpleMessage(
            "Đã có người dùng đăng ký với email chưa xác minh.\nNhấn nút \'Gửi lại\' nếu bạn muốn gửi lại email xác minh."),
        "invalidPasswordLengthMessage": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu của bạn phải dài ít nhất 6 ký tự"),
        "label": MessageLookupByLibrary.simpleMessage("Nhãn"),
        "lastName": MessageLookupByLibrary.simpleMessage("Họ"),
        "lastNameRequireText":
            MessageLookupByLibrary.simpleMessage("Họ là bắt buộc."),
        "lastNameStar": MessageLookupByLibrary.simpleMessage("Họ *"),
        "lastNameUpper": MessageLookupByLibrary.simpleMessage("Họ"),
        "listIsEmptyText": MessageLookupByLibrary.simpleMessage(
            "Danh sách hiện tại không có dữ liệu."),
        "login": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "loginNotification": MessageLookupByLibrary.simpleMessage(
            "Đăng nhập vào tài khoản của bạn"),
        "logoDefaultValue":
            MessageLookupByLibrary.simpleMessage("Logo ThingsBoard"),
        "logout": MessageLookupByLibrary.simpleMessage("Đăng xuất"),
        "mfaProviderBackupCode":
            MessageLookupByLibrary.simpleMessage("Mã sao lưu"),
        "mfaProviderEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "mfaProviderSms": MessageLookupByLibrary.simpleMessage("SMS"),
        "mfaProviderTopt":
            MessageLookupByLibrary.simpleMessage("Ứng dụng xác thực"),
        "minutes": MessageLookupByLibrary.simpleMessage("phút"),
        "more": MessageLookupByLibrary.simpleMessage("Thêm"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Mật khẩu mới"),
        "newPassword2": MessageLookupByLibrary.simpleMessage("Mật khẩu mới 2"),
        "newPassword2RequireText": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu mới lần 2 là bắt buộc."),
        "newPassword2Star":
            MessageLookupByLibrary.simpleMessage("Mật khẩu mới lần 2 *"),
        "newPasswordRequireText":
            MessageLookupByLibrary.simpleMessage("Mật khẩu mới là bắt buộc."),
        "newPasswordStar":
            MessageLookupByLibrary.simpleMessage("Mật khẩu mới *"),
        "newUserText": MessageLookupByLibrary.simpleMessage("Người dùng mới?"),
        "no": MessageLookupByLibrary.simpleMessage("Không"),
        "noResultsFound":
            MessageLookupByLibrary.simpleMessage("Không tìm thấy kết quả"),
        "northAmerica": MessageLookupByLibrary.simpleMessage("Bắc Mỹ"),
        "northAmericaRegionShort":
            MessageLookupByLibrary.simpleMessage("Virginia Bắc"),
        "notImplemented":
            MessageLookupByLibrary.simpleMessage("Chưa được triển khai!"),
        "or": MessageLookupByLibrary.simpleMessage("HOẶC"),
        "originator": MessageLookupByLibrary.simpleMessage("Nguồn gốc"),
        "password": MessageLookupByLibrary.simpleMessage("Mật khẩu"),
        "passwordErrorNotification": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu nhập vào phải giống nhau!"),
        "passwordForgotText":
            MessageLookupByLibrary.simpleMessage("Quên mật khẩu?"),
        "passwordRequireText":
            MessageLookupByLibrary.simpleMessage("Mật khẩu là bắt buộc."),
        "passwordReset":
            MessageLookupByLibrary.simpleMessage("Đặt lại mật khẩu"),
        "passwordResetLinkSuccessfullySentNotification":
            MessageLookupByLibrary.simpleMessage(
                "Liên kết đặt lại mật khẩu đã được gửi thành công!"),
        "passwordResetText": MessageLookupByLibrary.simpleMessage(
            "Nhập email liên kết với tài khoản của bạn và chúng tôi sẽ gửi email với liên kết đặt lại mật khẩu"),
        "passwordSuccessNotification": MessageLookupByLibrary.simpleMessage(
            "Thay đổi mật khẩu thành công"),
        "phone": MessageLookupByLibrary.simpleMessage("Số điện thoại"),
        "postalCode": MessageLookupByLibrary.simpleMessage("Mã bưu điện"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Chính sách bảo mật"),
        "profileSuccessNotification":
            MessageLookupByLibrary.simpleMessage("Cập nhật hồ sơ thành công"),
        "refresh": MessageLookupByLibrary.simpleMessage("Làm mới"),
        "repeatPasswordStar":
            MessageLookupByLibrary.simpleMessage("Nhập lại mật khẩu *"),
        "requestPasswordReset":
            MessageLookupByLibrary.simpleMessage("Yêu cầu đặt lại mật khẩu"),
        "resend": MessageLookupByLibrary.simpleMessage("Gửi lại"),
        "resendCode": MessageLookupByLibrary.simpleMessage("Gửi lại mã"),
        "resendCodeWait": m1,
        "seconds": MessageLookupByLibrary.simpleMessage("giây"),
        "selectRegion": MessageLookupByLibrary.simpleMessage("Chọn khu vực"),
        "selectUser": MessageLookupByLibrary.simpleMessage("Chọn người dùng"),
        "selectWayToVerify":
            MessageLookupByLibrary.simpleMessage("Chọn cách để xác minh"),
        "severity": MessageLookupByLibrary.simpleMessage("Mức độ nghiêm trọng"),
        "signIn": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "signUp": MessageLookupByLibrary.simpleMessage("Đăng ký"),
        "smsAuthDescription": m2,
        "smsAuthPlaceholder": MessageLookupByLibrary.simpleMessage("Mã SMS"),
        "somethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Đã có lỗi xảy ra"),
        "startTime": MessageLookupByLibrary.simpleMessage("Thời gian bắt đầu"),
        "stateOrProvince":
            MessageLookupByLibrary.simpleMessage("Tiểu bang / Tỉnh"),
        "status": MessageLookupByLibrary.simpleMessage("Trạng thái"),
        "systemAdministrator":
            MessageLookupByLibrary.simpleMessage("Quản trị viên hệ thống"),
        "tenantAdministrator":
            MessageLookupByLibrary.simpleMessage("Quản trị viên thuê bao"),
        "termsOfUse":
            MessageLookupByLibrary.simpleMessage("Điều khoản sử dụng"),
        "title": MessageLookupByLibrary.simpleMessage("Tiêu đề"),
        "toptAuthPlaceholder": MessageLookupByLibrary.simpleMessage("Mã"),
        "totpAuthDescription": MessageLookupByLibrary.simpleMessage(
            "Vui lòng nhập mã bảo mật từ ứng dụng xác thực của bạn."),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Thử lại"),
        "tryAnotherWay": MessageLookupByLibrary.simpleMessage("Thử cách khác"),
        "tryRefiningYourQuery": MessageLookupByLibrary.simpleMessage(
            "Vui lòng thử tinh chỉnh truy vấn của bạn"),
        "tryRefreshing":
            MessageLookupByLibrary.simpleMessage("Vui lòng thử làm mới"),
        "type": MessageLookupByLibrary.simpleMessage("Loại"),
        "unassigned": MessageLookupByLibrary.simpleMessage("Chưa giao"),
        "username": MessageLookupByLibrary.simpleMessage("Tên người dùng"),
        "users": MessageLookupByLibrary.simpleMessage("Người dùng"),
        "verificationCodeIncorrect":
            MessageLookupByLibrary.simpleMessage("Mã xác minh không chính xác"),
        "verificationCodeInvalid": MessageLookupByLibrary.simpleMessage(
            "Định dạng mã xác minh không hợp lệ"),
        "verificationCodeManyRequest": MessageLookupByLibrary.simpleMessage(
            "Quá nhiều yêu cầu kiểm tra mã xác minh"),
        "verifyYourIdentity":
            MessageLookupByLibrary.simpleMessage("Xác minh danh tính của bạn"),
        "viewDashboard":
            MessageLookupByLibrary.simpleMessage("Xem bảng điều khiển"),
        "yes": MessageLookupByLibrary.simpleMessage("Có")
      };
}
