.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$1;,
        Lcom/android/settings/TetherSettings$2;,
        Lcom/android/settings/TetherSettings$3;,
        Lcom/android/settings/TetherSettings$4;,
        Lcom/android/settings/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_EXTRA:Ljava/lang/String; = "choice"

.field private static final ACTION_EXTRA_VALUE:Ljava/lang/String; = "value"

.field private static final ACTION_HOTSPOT_CONFIGURE_RRSPONSE:Ljava/lang/String; = "Hotspot_PreConfigure_Response"

.field private static final ACTION_HOTSPOT_POST_CONFIGURE:Ljava/lang/String; = "Hotspot_PostConfigure"

.field private static final ACTION_HOTSPOT_PRE_CONFIGURE:Ljava/lang/String; = "Hotspot_PreConfigure"

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final CLOSE_WIFI_AP:I = 0x1

.field private static final CONFIGURE_RESULT:Ljava/lang/String; = "PreConfigure_result"

.field private static final CONFIG_SUBTEXT:I = 0x7f0f08bf

.field private static final CONNECTED_DEVICE_MANAGER:Ljava/lang/String; = "connected_device_manager"

.field private static final DATA_SAVER_FOOTER:Ljava/lang/String; = "disabled_on_data_saver"

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final ENABLE_WIFI_AP_EXT:Ljava/lang/String; = "enable_wifi_ap_ext"

.field private static final KEY_FIRST_LAUNCH_HOTSPOT:Ljava/lang/String; = "FirstLaunchHotspotTethering"

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final SHAREPREFERENCE_DEFAULT_WIFI:Ljava/lang/String; = "def_wifiap_set"

.field private static final SHAREPREFERENCE_FIFE_NAME:Ljava/lang/String; = "MY_PERFS"

.field private static final TAG:Ljava/lang/String; = "TetheringSettings"

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final TETHER_CHOICE:Ljava/lang/String; = "TETHER_TYPE"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"


# instance fields
.field private TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mBluetoohListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothService:Landroid/bluetooth/IBluetoothManager;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

.field private mCloseWiFIAPHandler:Landroid/os/Handler;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConfigureReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

.field private mCreateNetwork:Landroid/support/v7/preference/Preference;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroid/support/v7/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSecurityType:[Ljava/lang/String;

.field private mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private setWifiStaSapConcurrencyEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCloseWiFIAPHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/TetherSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mLastBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/TetherSettings;Landroid/content/Context;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->isNeedShowHelp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->openProfileProxy()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/TetherSettings;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "register"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->registerBluetoothStateListener(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "choice"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->updateConnectedDeviceCount(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TetherSettings;
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 255
    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 182
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoohListener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 194
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mCloseWiFIAPHandler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1090
    new-instance v0, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    .line 1089
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1131
    new-instance v0, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    .line 1130
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 256
    return-void
.end method

.method private addSpaceWhileZhCn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 976
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " "

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private checkDefaultValue(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 1016
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1017
    const v6, 0x7f120039

    .line 1016
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1018
    .local v1, "def_ssid":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1019
    .local v0, "clear_pwd":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 1021
    :cond_0
    const-string/jumbo v5, "MY_PERFS"

    .line 1020
    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1023
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "def_wifiap_set"

    .line 1022
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1024
    .local v3, "hasSetDefaultValue":Z
    if-nez v3, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/TetherSettings;->setDefaultValue(Landroid/content/Context;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1025
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1026
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "def_wifiap_set"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1027
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1030
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "hasSetDefaultValue":Z
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private closeProfileProxy()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 1183
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1184
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1185
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "closeProfileProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1187
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mLastBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_0

    .line 1189
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "close last ProfileProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mLastBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1191
    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mLastBluetoothPan:Landroid/bluetooth/BluetoothPan;

    goto :goto_0
.end method

.method private getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 2

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothService:Landroid/bluetooth/IBluetoothManager;

    return-object v1

    .line 1167
    :cond_0
    const-string/jumbo v1, "bluetooth_manager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1168
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothService:Landroid/bluetooth/IBluetoothManager;

    .line 1170
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothService:Landroid/bluetooth/IBluetoothManager;

    return-object v1
.end method

.method private initWifiTethering()V
    .locals 10

    .prologue
    const v6, 0x7f0f08bf

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 444
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 446
    iput-boolean v8, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 448
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-nez v3, :cond_0

    .line 449
    return-void

    .line 452
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    .line 454
    const v3, 0x10406ae

    .line 453
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 457
    aput-object v2, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->addSpaceWhileZhCn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 455
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 461
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 462
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->addSpaceWhileZhCn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 461
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private is5GhzBandSupported()Z
    .locals 3

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 890
    :cond_0
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "may be sim card is not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v1, 0x0

    return v1

    .line 893
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 848
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 849
    const v6, 0x1070031

    .line 848
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "provisionApp":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 851
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const/high16 v5, 0x10000

    .line 854
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isNeedShowHelp(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1005
    const-string/jumbo v3, "MY_PERFS"

    .line 1004
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1006
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1007
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "FirstLaunchHotspotTethering"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1008
    .local v1, "isFirstUse":Z
    if-eqz v1, :cond_0

    .line 1009
    const-string/jumbo v3, "FirstLaunchHotspotTethering"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1010
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1012
    :cond_0
    return v1
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 843
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimCardReady(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 794
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 795
    const/4 v1, 0x5

    .line 794
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openProfileProxy()V
    .locals 4

    .prologue
    .line 1174
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1175
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1176
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "openProfileProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1178
    const/4 v3, 0x5

    .line 1177
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1180
    :cond_0
    return-void
.end method

.method private registerBluetoothStateListener(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 1144
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 1146
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoohListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1147
    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "register listener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 1149
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoohListener:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoohListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1151
    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "unregister listener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 1153
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoohListener:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setDefaultValue(Landroid/content/Context;ZZ)Z
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "default_ssid"    # Z
    .param p3, "clear_password"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1033
    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1034
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_0

    .line 1035
    return v6

    .line 1037
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1038
    .local v3, "wifiAPConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v3, :cond_1

    .line 1039
    return v6

    .line 1041
    :cond_1
    if-eqz p2, :cond_3

    .line 1043
    const-string/jumbo v5, "phone"

    .line 1042
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1044
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "deviceId":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 1046
    .local v1, "lastFourDigits":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 1047
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    :cond_2
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1050
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1051
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 1052
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1055
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "lastFourDigits":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    if-eqz p3, :cond_4

    .line 1056
    const-string/jumbo v5, ""

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1058
    :cond_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1059
    const/4 v5, 0x1

    return v5
.end method

.method private showNoSimCardDialog(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 774
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 775
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 776
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 777
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f11bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 778
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f11c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f06c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 780
    new-instance v3, Lcom/android/settings/TetherSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    .line 779
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 787
    const/4 v2, 0x1

    return v2

    .line 789
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private startTethering(I)V
    .locals 6
    .param p1, "choice"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 859
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 861
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 862
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 863
    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 864
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 865
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v3, 0x7f0f0652

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 866
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 867
    return-void

    .line 872
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->is5GhzBandSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 873
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 874
    .local v1, "wifiAPConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_1

    .line 875
    return-void

    .line 877
    :cond_1
    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 878
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 882
    .end local v1    # "wifiAPConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v5, v3, v4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 883
    return-void
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 727
    const/4 v2, 0x0

    .line 728
    .local v2, "bluetoothErrored":Z
    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v7, p3, v10

    .line 729
    .local v7, "s":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v13, v12

    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v6, v12, v9

    .line 730
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v2, 0x1

    .line 729
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 728
    .end local v6    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 734
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 735
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_3

    .line 736
    return-void

    .line 738
    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 739
    .local v5, "btState":I
    const/16 v9, 0xd

    if-ne v5, v9, :cond_4

    .line 740
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 741
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0f0653

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 771
    :goto_2
    return-void

    .line 742
    :cond_4
    const/16 v9, 0xb

    if-ne v5, v9, :cond_5

    .line 743
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 744
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0f0652

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 746
    :cond_5
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 747
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v9, 0xc

    if-ne v5, v9, :cond_9

    if-eqz v3, :cond_9

    .line 748
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    .line 747
    if-eqz v9, :cond_9

    .line 749
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 750
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v10, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 751
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 752
    .local v4, "bluetoothTethered":I
    const/4 v9, 0x1

    if-le v4, v9, :cond_6

    .line 753
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 755
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 754
    const v10, 0x7f0f0a61

    .line 753
    invoke-virtual {p0, v10, v9}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, "summary":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 757
    .end local v8    # "summary":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    .line 758
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 759
    const v10, 0x7f0f0a60

    .line 758
    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 760
    :cond_7
    if-eqz v2, :cond_8

    .line 761
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0f0a64

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 763
    :cond_8
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0f0a5f

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 766
    .end local v4    # "bluetoothTethered":I
    :cond_9
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v10, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 767
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 768
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0f0a63

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateConnectedDeviceCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 574
    if-nez p1, :cond_2

    .line 575
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hotspot_auto_shut_down"

    invoke-static {v2, v3, v5, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 576
    .local v1, "mHotspotAutoShutDownValue":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0f032c

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 592
    .end local v1    # "mHotspotAutoShutDownValue":Z
    :goto_1
    return-void

    .line 575
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "mHotspotAutoShutDownValue":Z
    goto :goto_0

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0f041a

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 583
    .end local v1    # "mHotspotAutoShutDownValue":Z
    :cond_2
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 584
    const v3, 0x7f0f032d

    .line 583
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "mConnectCount":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isEn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-le p1, v4, :cond_3

    .line 586
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 587
    const v3, 0x7f0f032e

    .line 586
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    :cond_3
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 659
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "available":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "tethered":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 667
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 668
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 674
    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    xor-int/lit8 v2, v6, 0x1

    .line 675
    :goto_0
    const/4 v3, 0x0

    .line 676
    .local v3, "usbError":I
    const/4 v6, 0x0

    array-length v8, p1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v1, p1, v7

    .line 677
    .local v1, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_2
    if-ge v6, v10, :cond_2

    aget-object v0, v9, v6

    .line 678
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 679
    if-nez v3, :cond_0

    .line 680
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v3

    .line 677
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 674
    .end local v0    # "regex":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "usbError":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "usbAvailable":Z
    goto :goto_0

    .line 676
    .end local v2    # "usbAvailable":Z
    .restart local v1    # "s":Ljava/lang/String;
    .restart local v3    # "usbError":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 685
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .line 686
    .local v5, "usbTethered":Z
    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_6

    aget-object v1, p2, v7

    .line 687
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_4
    if-ge v6, v10, :cond_5

    aget-object v0, v9, v6

    .line 688
    .restart local v0    # "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    .line 687
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 686
    .end local v0    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    .line 691
    .end local v1    # "s":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .line 692
    .local v4, "usbErrored":Z
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_5
    if-ge v7, v8, :cond_9

    aget-object v1, p3, v7

    .line 693
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_6
    if-ge v6, v10, :cond_8

    aget-object v0, v9, v6

    .line 694
    .restart local v0    # "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    .line 693
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 692
    .end local v0    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_5

    .line 698
    .end local v1    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_a

    .line 699
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f0a59

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 700
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v7, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 701
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 723
    :goto_7
    return-void

    .line 702
    :cond_a
    if-eqz v2, :cond_c

    .line 703
    if-nez v3, :cond_b

    .line 704
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f0a58

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 708
    :goto_8
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v7, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 709
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 706
    :cond_b
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f0a5d

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 710
    :cond_c
    if-eqz v4, :cond_d

    .line 711
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f0a5d

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 712
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 713
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 714
    :cond_d
    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v6, :cond_e

    .line 715
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f0a5a

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 716
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 717
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 719
    :cond_e
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f0a5b

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 720
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 721
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 982
    const v0, 0x7f0f0ec0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x5a

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 440
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 931
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 932
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 934
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->confirmConfig()V

    .line 936
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 942
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 943
    const-string/jumbo v1, "TetheringSettings"

    .line 944
    const-string/jumbo v2, "Wifi AP config changed while enabled, stop and restart"

    .line 943
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 947
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 949
    iput-boolean v6, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 950
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 953
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 958
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 963
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f08bf

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->addSpaceWhileZhCn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 972
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return-void

    .line 968
    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    .line 969
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->cancelConfig()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 260
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    const-string/jumbo v9, "TETHER_TYPE"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 265
    :cond_0
    const v9, 0x7f0800ac

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 267
    new-instance v9, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 268
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 269
    const-string/jumbo v9, "disabled_on_data_saver"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 273
    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestricted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 275
    iput-boolean v13, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 276
    new-instance v9, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 277
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 281
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 283
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 286
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 287
    const/4 v11, 0x5

    .line 286
    invoke-virtual {v1, v9, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 293
    :cond_2
    :goto_0
    const-string/jumbo v9, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 296
    const v10, 0x7f12001d

    .line 295
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 297
    .local v3, "enableWifiApSettingsExt":Z
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 298
    .local v4, "isWifiApEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/TetherSettings;->checkDefaultValue(Landroid/content/Context;)V

    .line 299
    if-eqz v3, :cond_8

    .line 301
    const-string/jumbo v9, "enable_wifi_ap_ext"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    .line 300
    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "enable_wifi_ap"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 304
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings/TetherSettings$5;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    :goto_1
    if-eqz v4, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 332
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 333
    const v10, 0x7f120040

    .line 332
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 334
    const-string/jumbo v9, "tethering_help"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    .line 339
    :goto_2
    const-string/jumbo v9, "usb_tether_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    .line 340
    const-string/jumbo v9, "enable_bluetooth_tethering"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 342
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v9, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 344
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 345
    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 347
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 348
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 349
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 351
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_a

    const/4 v7, 0x1

    .line 352
    .local v7, "usbAvailable":Z
    :goto_3
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_b

    const/4 v8, 0x1

    .line 353
    .local v8, "wifiAvailable":Z
    :goto_4
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_c

    const/4 v2, 0x1

    .line 355
    .local v2, "bluetoothAvailable":Z
    :goto_5
    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 356
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 359
    :cond_5
    if-eqz v8, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_d

    .line 360
    new-instance v9, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v9, v0, v10, v11}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/DataSaverBackend;Landroid/support/v14/preference/SwitchPreference;)V

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 361
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 367
    :goto_6
    const-string/jumbo v9, "connected_device_manager"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    .line 368
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 370
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectedStations()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    const-string/jumbo v9, "tether_settings_key"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 372
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_e

    .line 373
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 374
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v13}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 379
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.oneplus.wifiapsettings"

    invoke-static {v9, v10}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 380
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 383
    :cond_6
    if-nez v2, :cond_f

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 394
    :goto_8
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->onDataSaverChanged(Z)V

    .line 396
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 397
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "com.android.server.WifiManager.action.SHUT_DOWN_HOTSPOT"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v9, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    return-void

    .line 289
    .end local v2    # "bluetoothAvailable":Z
    .end local v3    # "enableWifiApSettingsExt":Z
    .end local v4    # "isWifiApEnabled":Z
    .end local v7    # "usbAvailable":Z
    .end local v8    # "wifiAvailable":Z
    :cond_7
    invoke-direct {p0, v13}, Lcom/android/settings/TetherSettings;->registerBluetoothStateListener(Z)V

    goto/16 :goto_0

    .line 320
    .restart local v3    # "enableWifiApSettingsExt":Z
    .restart local v4    # "isWifiApEnabled":Z
    :cond_8
    const-string/jumbo v9, "tether_settings_key"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 319
    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    .line 322
    .local v6, "tetherCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v9, "enable_wifi_ap"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    .line 321
    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    .line 324
    const-string/jumbo v9, "enable_wifi_ap_ext"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 336
    .end local v6    # "tetherCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "tethering_help"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    .line 351
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "usbAvailable":Z
    goto/16 :goto_3

    .line 352
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "wifiAvailable":Z
    goto/16 :goto_4

    .line 353
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "bluetoothAvailable":Z
    goto/16 :goto_5

    .line 363
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6

    .line 376
    :cond_e
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 377
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_7

    .line 386
    :cond_f
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    .line 387
    .local v5, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 388
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v13}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 390
    :cond_10
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 471
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 473
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 474
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    return-object v1

    .line 477
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDataSaverChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 428
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 432
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->closeProfileProxy()V

    .line 419
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->registerBluetoothStateListener(Z)V

    .line 422
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 423
    return-void

    .line 411
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 800
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 801
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 802
    const v4, 0x7f12001d

    .line 801
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 803
    .local v1, "enableWifiApSettingsExt":Z
    if-eqz v0, :cond_3

    .line 804
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->showNoSimCardDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 805
    check-cast p1, Lcom/android/settings/HotspotPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v5}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 806
    return v5

    .line 807
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->isNeedShowHelp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 808
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 809
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "Hotspot_PreConfigure"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string/jumbo v3, "com.qualcomm.qti.extsettings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 812
    check-cast p1, Lcom/android/settings/HotspotPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v5}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 813
    return v5

    .line 817
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 818
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 820
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    .line 823
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 824
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.oneplus.wifiapsettings"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 825
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 826
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectedStations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->updateConnectedDeviceCount(I)V

    .line 839
    :goto_0
    return v5

    .line 828
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 829
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 833
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 835
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 836
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 989
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.oneplus.wifiapsettings"

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 992
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.oem.intent.action.OPWIFIAP_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 999
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 994
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 900
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    .line 927
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    .line 906
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 907
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 908
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 910
    :cond_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 913
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto :goto_0

    .line 915
    :cond_4
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 916
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 917
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 918
    const v2, 0x7f120040

    .line 917
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 920
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 921
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f11b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 922
    const v1, 0x7f0f11b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 923
    const v1, 0x7f0f06c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 924
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 568
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectedStations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->updateConnectedDeviceCount(I)V

    .line 571
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 597
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 599
    iget-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0f00cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 604
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 609
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v3, p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 611
    const-string/jumbo v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 612
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 613
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 614
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 617
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 618
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 622
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 625
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 627
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 628
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 632
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_3

    .line 633
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 634
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 637
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 639
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 645
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 646
    return-void

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 649
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 650
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 651
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 656
    :cond_1
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 436
    return-void
.end method
