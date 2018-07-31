.class public Lcom/oneplus/settings/receiver/SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsReceiver.java"


# static fields
.field private static final ACTION_OTG_AUTO_SHUTDOWN:Ljava/lang/String; = "oneplus.intent.action.otg_auto_shutdown"

.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final NO_OEM_FONT_DIALOG:I = 0x0

.field private static final SYSTEM_DEFALUT_FONT:I = 0x1


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUm:Landroid/os/UserManager;

.field private mZenMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    .line 38
    return-void
.end method

.method private setBluetoothScanMode()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/receiver/SettingsReceiver$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/receiver/SettingsReceiver$2;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    return-void
.end method

.method private setFontMode(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OEM_FONT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oem_font_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string/jumbo v1, "oem_font_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "action":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    .line 54
    const-string/jumbo v36, "SettingsReceiver"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "action = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v36, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_0

    const-string/jumbo v36, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 58
    :cond_0
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/oneplus/settings/utils/OPUtils;->setAppUpdated(Z)V

    .line 62
    :cond_1
    const-string/jumbo v36, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v36

    if-eqz v36, :cond_5

    .line 63
    const-string/jumbo v36, "android.intent.extra.REPLACING"

    const/16 v37, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    .line 62
    if-eqz v36, :cond_5

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v29

    .line 65
    .local v29, "pkgName":Ljava/lang/String;
    const-string/jumbo v36, "SettingsReceiver"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ACTION_PACKAGE_REMOVED pkgName= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object/from16 v36, v0

    if-nez v36, :cond_2

    .line 67
    const-string/jumbo v36, "appops"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/AppOpsManager;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 69
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    if-nez v36, :cond_3

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    :cond_3
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_4

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    .line 83
    const/16 v37, 0x1

    const/16 v38, 0x0

    .line 82
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoByUserId(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 84
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object/from16 v36, v0

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v37, v0

    const/16 v38, 0x45

    .line 85
    const/16 v39, 0x1

    .line 84
    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v37

    move-object/from16 v3, v29

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->removeMultiApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v36, "com.oneplus.cloud"

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 92
    const/16 v36, 0x0

    sput-object v36, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 95
    .end local v29    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v36, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v36

    if-eqz v36, :cond_6

    .line 96
    const-string/jumbo v36, "com.oneplus.cloud"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    .line 95
    if-eqz v36, :cond_6

    .line 97
    const/16 v36, 0x0

    sput-object v36, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 99
    :cond_6
    const-string/jumbo v36, "codeaurora.net.conn.TETHER_AUTO_SHUT_DOWN_SOFTAP"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 101
    const-string/jumbo v36, "SettingsReceiver"

    const-string/jumbo v37, "Auto shutdown wifi ap if no device connected in 5 mins "

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->stopTethering(Landroid/content/Context;)V

    .line 104
    :cond_7
    const-string/jumbo v36, "com.oem.intent.action.THREE_KEY_MODE"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 105
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 108
    :cond_8
    const-string/jumbo v36, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 109
    const-string/jumbo v36, "App_Tracker"

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v36

    const-string/jumbo v37, "zen_mode"

    const/16 v38, 0x0

    invoke-interface/range {v36 .. v38}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 110
    .local v28, "mSharedZenMode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    move/from16 v36, v0

    move/from16 v0, v28

    move/from16 v1, v36

    if-eq v0, v1, :cond_9

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 115
    .end local v28    # "mSharedZenMode":I
    :cond_9
    const-string/jumbo v36, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 116
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportFontStyleSetting()Z

    move-result v36

    if-nez v36, :cond_11

    .line 117
    const-string/jumbo v36, "SettingsReceiver"

    const-string/jumbo v37, "! isSupportFontStyleSetting Language change"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    .line 126
    :cond_a
    :goto_1
    const-string/jumbo v36, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 127
    const-string/jumbo v36, "android.bluetooth.adapter.extra.STATE"

    .line 128
    const/high16 v37, -0x80000000

    .line 127
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 129
    .local v34, "state":I
    const-string/jumbo v36, "SettingsReceiver"

    const-string/jumbo v37, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v36, "oneplus_bluetooth_scan_mode_flag"

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Lcom/oneplus/settings/utils/OPPrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 131
    .local v31, "scanmodestatus":I
    const/16 v36, 0xc

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    if-nez v31, :cond_b

    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setBluetoothScanMode()V

    .line 137
    .end local v31    # "scanmodestatus":I
    .end local v34    # "state":I
    :cond_b
    const-string/jumbo v36, "com.oem.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->restoreBackupEntranceInLauncher(Landroid/content/Context;)V

    .line 142
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->disableCardPackageEntranceInLauncher(Landroid/content/Context;)V

    .line 143
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->enablePackageInstaller(Landroid/content/Context;)V

    .line 145
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->disableWirelessAdbDebuging()V

    .line 148
    sget-object v36, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 149
    const-string/jumbo v37, "oem_acc_sensor_three_finger"

    const/16 v38, 0x0

    .line 148
    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 150
    .local v18, "isThreeShowEnable":I
    const-string/jumbo v36, "op_three_key_screenshots_enabled"

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 153
    sget-object v36, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 154
    const-string/jumbo v37, "op_navigation_bar_type"

    const/16 v38, 0x1

    .line 153
    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 155
    .local v16, "gestureType":I
    const-string/jumbo v36, "op_fullscreen_gesture_enabled"

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 157
    const-string/jumbo v36, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    if-eqz v36, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    const/16 v37, 0x3e7

    invoke-virtual/range {v36 .. v37}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 160
    const-string/jumbo v36, "SettingsReceiver"

    const-string/jumbo v37, "Handle Parallel App Requirement"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_1
    sget-object v36, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 164
    const-string/jumbo v37, "oem_acc_sensor_three_finger"

    .line 165
    const/16 v38, 0x0

    .line 162
    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 167
    .local v30, "pointerScreenCapture":I
    sget-object v36, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 168
    const-string/jumbo v37, "oem_acc_sensor_three_finger"

    .line 169
    const/16 v38, 0x3e7

    .line 166
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v30

    move/from16 v3, v38

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    .end local v30    # "pointerScreenCapture":I
    :goto_2
    new-instance v36, Ljava/lang/Thread;

    new-instance v37, Lcom/oneplus/settings/receiver/SettingsReceiver$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/receiver/SettingsReceiver$1;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/content/Context;)V

    invoke-direct/range {v36 .. v37}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Thread;->start()V

    .line 191
    .end local v16    # "gestureType":I
    .end local v18    # "isThreeShowEnable":I
    :cond_c
    const-string/jumbo v36, "oneplus.intent.action.otg_auto_shutdown"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 192
    const-string/jumbo v36, "persist.sys.oem.otg_support"

    const-string/jumbo v37, "false"

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "oneplus_otg_auto_disable"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    sget-object v36, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "oneplus_otg_auto_disable_is_first"

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v36 .. v39}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .line 195
    .local v19, "is_first":I
    if-nez v19, :cond_d

    .line 196
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v36, "oneplus.intent.action.OTG_SETTINGS"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v21, "mIntent":Landroid/content/Intent;
    const/high16 v36, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    const/16 v36, 0x0

    const/high16 v37, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v21

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    .line 199
    .local v26, "mPendingIntent":Landroid/app/PendingIntent;
    new-instance v36, Landroid/app/Notification$Builder;

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v36

    .line 201
    const/16 v37, 0x1

    .line 199
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0f047e

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 199
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v36

    .line 202
    const v37, 0x7f020307

    .line 199
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 203
    .local v8, "builder":Landroid/app/Notification$Builder;
    const-string/jumbo v36, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/NotificationManager;

    .line 204
    .local v25, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    .line 205
    .local v24, "mNotification":Landroid/app/Notification;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v36, v0

    or-int/lit8 v36, v36, 0x8

    move/from16 v0, v36

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 206
    const v36, 0x7f0f047e

    move-object/from16 v0, v25

    move/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "oneplus_otg_auto_disable_is_first"

    const/16 v38, 0x1

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    .end local v8    # "builder":Landroid/app/Notification$Builder;
    .end local v19    # "is_first":I
    .end local v21    # "mIntent":Landroid/content/Intent;
    .end local v24    # "mNotification":Landroid/app/Notification;
    .end local v25    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v26    # "mPendingIntent":Landroid/app/PendingIntent;
    :cond_d
    const-string/jumbo v36, "com.oem.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_e

    const-string/jumbo v36, "android.intent.action.TIME_SET"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_e

    .line 213
    const-string/jumbo v36, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    .line 212
    if-eqz v36, :cond_10

    .line 214
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->getPreferenceSettingsCustomTimeEnable(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 215
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->getPreferenceSettingsCustomStartTime(Landroid/content/Context;)J

    move-result-wide v32

    .line 216
    .local v32, "startTime":J
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->getPreferenceSettingsCustomEndTime(Landroid/content/Context;)J

    move-result-wide v14

    .line 217
    .local v14, "endTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 218
    .local v9, "c":Ljava/util/Calendar;
    const/16 v36, 0xb

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 219
    .local v20, "mHour":I
    const/16 v36, 0xc

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v23

    .line 220
    .local v23, "mMinute":I
    const/16 v36, 0xd

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    .line 221
    .local v27, "mSecond":I
    const/16 v36, 0xe

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 222
    .local v22, "mMillisecond":I
    mul-int/lit8 v36, v20, 0x3c

    add-int v36, v36, v23

    mul-int/lit8 v36, v36, 0x3c

    add-int v36, v36, v27

    move/from16 v0, v36

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v36, v0

    add-int v36, v36, v22

    move/from16 v0, v36

    int-to-long v10, v0

    .line 223
    .local v10, "currentTime":J
    const-string/jumbo v36, "OPPreferenceSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Settings Receiver startTime = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v36, "OPPreferenceSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Settings Receiver endTime = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string/jumbo v36, "OPPreferenceSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Settings Receiver currentTime = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/16 v17, 0x0

    .line 227
    .local v17, "isNextDay":Z
    cmp-long v36, v32, v14

    if-lez v36, :cond_f

    .line 228
    const/16 v17, 0x1

    .line 230
    :cond_f
    if-nez v17, :cond_13

    .line 231
    cmp-long v36, v32, v10

    if-gez v36, :cond_12

    cmp-long v36, v10, v14

    if-gez v36, :cond_12

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "dnd_mode_enabled"

    const/16 v38, 0x1

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->setEnablePreferenceSettingsCustom(Landroid/content/Context;)V

    .line 249
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "currentTime":J
    .end local v14    # "endTime":J
    .end local v17    # "isNextDay":Z
    .end local v20    # "mHour":I
    .end local v22    # "mMillisecond":I
    .end local v23    # "mMinute":I
    .end local v27    # "mSecond":I
    .end local v32    # "startTime":J
    :cond_10
    :goto_3
    return-void

    .line 87
    .restart local v29    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 88
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 120
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v29    # "pkgName":Ljava/lang/String;
    :cond_11
    const-string/jumbo v36, "SettingsReceiver"

    const-string/jumbo v37, " isSupportFontStyleSetting Language change"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v36, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "oem_font_mode"

    const/16 v38, 0x1

    const/16 v39, 0x0

    invoke-static/range {v36 .. v39}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v35

    .line 122
    .local v35, "value":I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    goto/16 :goto_1

    .line 170
    .end local v35    # "value":I
    .restart local v16    # "gestureType":I
    .restart local v18    # "isThreeShowEnable":I
    :catch_1
    move-exception v13

    .line 171
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 235
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v16    # "gestureType":I
    .end local v18    # "isThreeShowEnable":I
    .restart local v9    # "c":Ljava/util/Calendar;
    .restart local v10    # "currentTime":J
    .restart local v14    # "endTime":J
    .restart local v17    # "isNextDay":Z
    .restart local v20    # "mHour":I
    .restart local v22    # "mMillisecond":I
    .restart local v23    # "mMinute":I
    .restart local v27    # "mSecond":I
    .restart local v32    # "startTime":J
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "dnd_mode_enabled"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->setEnablePreferenceSettingsCustom(Landroid/content/Context;)V

    goto :goto_3

    .line 239
    :cond_13
    cmp-long v36, v14, v10

    if-gez v36, :cond_14

    cmp-long v36, v10, v32

    if-ltz v36, :cond_15

    .line 240
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "dnd_mode_enabled"

    const/16 v38, 0x1

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->setEnablePreferenceSettingsCustom(Landroid/content/Context;)V

    goto :goto_3

    .line 243
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "dnd_mode_enabled"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->setEnablePreferenceSettingsCustom(Landroid/content/Context;)V

    goto :goto_3
.end method
