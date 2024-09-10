import 'package:flutter/cupertino.dart';
import 'package:one_app/go_router/route_paths.dart';

const appName = 'OSIM';

final globalKeys = {
  RoutePaths.root: GlobalKey<NavigatorState>(),
  RoutePaths.product: GlobalKey<NavigatorState>(debugLabel: RoutePaths.product),
  RoutePaths.wellbeing:
      GlobalKey<NavigatorState>(debugLabel: RoutePaths.wellbeing),
  RoutePaths.profile: GlobalKey<NavigatorState>(debugLabel: RoutePaths.profile),
};

abstract class Constants {
  static const String APP_NAME = 'OSIM';

  static const String LOGIN_REDIRECT_URI = 'osimoneapp://signin-callback';

  static const String WIFI_CDC_HOST_ADDRESS = '192.168.4.1';
  static const int WIFI_CDC_PORT = 1000;

  static const String TEMP_CERT_PATH =
      '/ualpinesmart2/api/v1.0/certificate/temporary/';
  static const String STATE_PATH = '/ualpinesmart2/api/v1.0/state/';

  static const String TEMP_CERT_KEY = 'certificatePem';
  static const String KEY_PAIR_KEY = 'keyPair';
  static const String PRIVATE_KEY_KEY = 'privateKey';
  static const String AWS_ENDPOINT_KEY = 'awsEndpoint';

  static const String DEVICE_ID_KEY = 'deviceId';
  static const String FAN_SPEED_KEY = 'FanSpeed';
  static const String WORK_MODE_KEY = 'WorkMode';
  static const String VOC_KEY = 'VOC';
  static const String POWER_STATUS_KEY = 'PowerStatus';
  static const String PM25_KEY = 'PM25';
  static const String PM25_LEVEL_KEY = 'PM25Level';
  static const String ULTRAVIOLET_KEY = 'Ultraviolet';
  static const String ANION_STATUS_KEY = 'AnionStatus';
  static const String CHILD_LOCK_KEY = 'ChildLock';
  static const String TIMER_KEY = 'TimeControl';
  static const String LIGHT_KEY = 'Light';
  static const String SOUND_KEY = 'Sound';
  static const String FILTER_TIME_KEY = 'FilterTime';
  static const String MCU_VERSION_KEY = 'MCUVersion';
  static const String FAULT_CODE_KEY = 'FaultCode';
  static const String IS_CONNECTED_KEY = 'IsConnected';
  static const String GET_ALL_STATE_KEY = 'AllStates';
  static const String WIFI_STATUS = 'WifiStatus';
  static const String RESET_FILTER_KEY = 'FilterReset';

  static const String SCHEDULER_GUID_KEY = 'schedulerGuid';
  static const String SCHEDULE_START_DATETIME_KEY = 'scheduleStartDateTime';
  static const String SCHEDULE_END_DATETIME_KEY = 'scheduleEndDateTime';
  static const String SCHEDULE_WORK_MODE_KEY = 'workMode';
  static const String SCHEDULE_CHILD_LOCK_KEY = 'childLock';
  static const String REPEAT_KEY = 'repeat';
  static const String DAYS_KEY = 'days';
  static const String IS_ENABLE_KEY = 'isEnable';

  static const String PRODUCT_SN_KEY = 'productSN';
  static const String PRODUCT_NAME_KEY = 'productName';
  static const String PRODUCT_TYPE_KEY = 'productType';
  static const String PRODUCT_CDCTYPE_KEY = 'cdcType';
  static const String PRODUCT_WIFI_CDCSN_KEY = 'wifiCDCSN';
  static const String PRODUCT_BLUETOOTH_CDCSN_KEY = 'blueToothCDCSN';
  static const String PRODUCT_SSID_KEY = 'ssid';
  static const String DEVICES_KEY = 'devices';

  static const String HTTP_STATUS_KEY = 'httpStatus';
  static const String RESULT_CODE_KEY = 'resultCode';
  static const String ERROR_CODE_KEY = 'errorCode';
  static const String DETAIL_KEY = 'detail';
  static const String APPLICATION_JSON = 'application/json';
  static const String APPLICATION_MULTIPART_FORM_DATA = 'multipart/form-data';
  static const String REQUIRE_LOGIN = 'requireLogin';
  static const String REQUIRE_REFRESH_TOKEN = 'requireRefreshToken';

  static const int SUCCESS_RESULT_CODE = 1;
  static const int FAILURE_RESULT_CODE = 2;
  static const int INVALID_INPUT_RESULT_CODE = 3;

  static const int PRODUCT_TYPE_UNKNOWN = 0;
  static const int PRODUCT_TYPE_UALPINE_SMART = 1;
  static const int PRODUCT_TYPE_UCHECK = 2;
  static const int PRODUCT_TYPE_UGRANCE = 3;
  static const int PRODUCT_TYPE_UTREK = 4;

  static const Duration minimumSyncTimeInterval = Duration(minutes: 2);
}

abstract class Routes {
  static const String HOME = '/home';
  static const String REGION = '/region';
  static const String LOGIN = '/login';
  static const String INIT = '/firstTime';
  static const String CREDITS = '/credits';
  static const String PRODUCT_CATALOG = '/product_catalog';
  static const String DEVICE_PRODUCT_LISTING = '/device_product_listing';
  static const String NFC_DEVICE_LANDING = '/nfc_device_landing';
  static const String SCAN_QRCODE = '/scanqrcode';
  static const String ENTER_PRODUCT_SN = '/enterproductsn';
  static const String UALPINES2_PAIRING = '/ualpines2pairing';
  static const String UAPLINES2_DETAIL = '/ualpines2detail';
  static const String UNANOPRO = '/uNanoPro';
  static const String ULOVE3 = '/uLove3';
  static const String FEEDBACKPAGE = '/feedback';
  static const String EDITNAMEPAGE = '/editNamePage';
  static const String NOTIFICATION_INBOX_PAGE = '/notificationInbox';
  static const String FAQPage = '/faqPage';
  static const String ACCOUNT_HEALTH_PERMISSION = '/accounthealthpermission';
  static const String ACCOUNT_SETTINGS = '/accountsettings';
  static const String ACCOUNT_MANAGEMENT = '/accountmanagement';
  static const String ACCOUNT_DELETION = '/accountdeletion';
  static const String APP_DISPLAY_SETTING = '/appdisplaysetting';
  static const String WARRANTY = '/warranty';
  static const String UDREAM = '/uDream';
  static const String UDREAM2 = '/uDream2';
  static const String UDiva = '/uDiva';
  static const String UDiva4 = '/uDiva4';
  static const String UGALAXY_SYNC = '/uGalaxySync';
  static const String UPhoria = '/uPhoria';
  static const String UDIVINEV2 = '/uDivineV2';
  static const String UDREAM_MIGRATION_CONFIRMATION =
      '/uDreamMigrationConfirmation';
  static const String PPG = '/ppg';
  static const String UDELUXE_PRO = '/uDeluxePro';
  static const String UJolly = '/uJolly';
  static const String CHOOSE_COMBO = '/chooseCombo';
  static const String SELECT_COMBO_PRODUCT = '/selectComboProduct';
  static const String SMART_DIY2 = '/smartDiy2';
  static const String UDIVINEV3 = '/uDivineV3';
  static const String UThroneV2 = '/uThroneV2';
  static const String HEALTH_CONNECT_INTEGRATION = '/healthIntegration';
  static const String HUAWEI_HEALTH_INTEGRATION = '/huaweiHealthIntegration';
}

abstract class OsimImagePath {
  static const String LOGO = 'assets/images/osim_logo.png';
  static const String LOGO_LIGHT = 'assets/images/osim_logo_light.png';
  static const String UGRACE_ICON = 'assets/images/ugrace.png';
  static const String UCHECK_ICON = 'assets/images/ucheck.png';
  static const String UTREK_ICON = 'assets/images/utrek.png';
  static const String UALPINE_ICON = 'assets/images/ualpine.png';
  static const String ULOVE3_ICON = 'assets/images/ulove3.png';
  static const String UNANO_PRO_ICON = 'assets/images/unano_pro.png';
  static const String UDREAM_ICON = 'assets/images/ulove3.png';
  static const String UGALAXYSYNC_ICON = 'assets/images/ugalaxy_sync.png';
  static const String UPHORIASYNC_ICON = 'assets/images/uphoria_sync.png';
  static const String UDELUXEPRO_ICON = 'assets/images/udeluxe_pro.png';
  static const String UDIVINEV2_ICON = 'assets/images/udivinev2_icon.png';
  static const String UJOLLYSYNC_ICON = 'assets/images/ujolly_sync.png';
  static const String UTHRONEV2_ICON = 'assets/images/uthronev2.png';
  static const String CHAIR_ICON = 'assets/images/chair.png';
  static const String UPULSEMAT_LOGO = 'assets/images/upulsemat_logo.png';
  static const String UTREK_LOGO = 'assets/images/utrek_logo.png';
  static const String POWERON_ICON = 'assets/images/on.png';
  static const String POWEROFF_ICON = 'assets/images/off.png';
  static const String BLUETOOTHON_ICON = 'assets/images/bluetooth_on.png';
  static const String BLUETOOTHOFF_ICON = 'assets/images/bluetooth_off.png';
  static const String HEARTBEAT_ICON = 'assets/images/heartbeat.png';
  static const String BLUETOOTH_ICON = 'assets/images/bluetooth.png';
  static const String IMAGE_PLACEHOLDER = 'assets/images/image_placeholder.png';
  static const String AUTO_PROGRAM_ICON = 'assets/images/auto_program.png';

  static const String cloudFirmware = 'assets/images/cloud_firmware.png';
  static const String stagingAppLogo = 'assets/images/app_logo_staging.png';
  static const String preprodAppLogo = 'assets/images/app_logo_preprod.png';
  static const String prodAppLogo = 'assets/images/app_logo.png';
}
