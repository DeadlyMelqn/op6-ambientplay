.class Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 1349
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1346
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1350
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1353
    new-array v0, v4, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1355
    const-string/jumbo v1, "oem_acc_key_define"

    .line 1354
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1360
    :cond_0
    new-array v0, v4, [I

    const/16 v1, 0xb

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1362
    const-string/jumbo v1, "oem_acc_key_lock_mode"

    .line 1361
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1364
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1365
    const-string/jumbo v1, "buttons_force_home_enabled"

    .line 1364
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1371
    :cond_1
    new-array v0, v4, [I

    const/16 v1, 0xd

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1372
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1373
    const-string/jumbo v1, "oem_acc_sensor_three_finger"

    .line 1372
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1379
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1380
    const-string/jumbo v1, "buttons_show_on_screen_navkeys"

    .line 1379
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1382
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1383
    const-string/jumbo v1, "key_home_long_press_action"

    .line 1382
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1385
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1386
    const-string/jumbo v1, "key_home_double_tap_action"

    .line 1385
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1388
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1389
    const-string/jumbo v1, "key_menu_long_press_action"

    .line 1388
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1392
    const-string/jumbo v1, "key_menu_double_tap_action"

    .line 1391
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1394
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1395
    const-string/jumbo v1, "key_back_long_press_action"

    .line 1394
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1397
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1398
    const-string/jumbo v1, "key_back_double_tap_action"

    .line 1397
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1401
    const-string/jumbo v1, "key_app_switch_long_press_action"

    .line 1400
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1403
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1404
    const-string/jumbo v1, "key_app_switch_double_tap_action"

    .line 1403
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1407
    const-string/jumbo v1, "oem_acc_fingerprint_enrolling"

    .line 1406
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1414
    const-string/jumbo v1, "op_fingerprint_long_press_action"

    .line 1413
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1417
    const-string/jumbo v1, "op_fingerprint_long_press_camera_shot"

    .line 1416
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1420
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1421
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1422
    const-string/jumbo v1, "op_quickpay_enable"

    .line 1421
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1424
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1425
    const-string/jumbo v1, "op_quickpay_default_way"

    .line 1424
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1432
    :cond_3
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1433
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1434
    const-string/jumbo v1, "op_navigation_bar_type"

    .line 1433
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1436
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1437
    const-string/jumbo v1, "op_gesture_button_guide"

    .line 1436
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1440
    :cond_4
    sget-boolean v0, Lcom/android/server/policy/OemCameraNotchGuide;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_5

    .line 1441
    new-array v0, v4, [I

    const/16 v1, 0x3b

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    .line 1440
    if-eqz v0, :cond_5

    .line 1442
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1443
    const-string/jumbo v1, "op_camera_notch_ignore"

    .line 1442
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1447
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1448
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1453
    return-void
.end method

.method public updateSettings()V
    .locals 18

    .prologue
    .line 1456
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v11, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1457
    const/4 v10, 0x1

    :try_start_0
    new-array v10, v10, [I

    const/16 v12, 0x8

    const/4 v13, 0x0

    aput v12, v10, v13

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1458
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1459
    const-string/jumbo v13, "oem_acc_key_define"

    .line 1460
    const/4 v14, 0x0

    .line 1458
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 1461
    sget-boolean v10, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v10, :cond_0

    .line 1462
    const-string/jumbo v10, "OemPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mKeysBehavior: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v13, v13, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSwapKey()V

    .line 1467
    :cond_1
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v12, v10, v13

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1468
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1469
    const-string/jumbo v12, "oem_acc_key_lock_mode"

    .line 1470
    sget-object v13, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v13}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v13

    .line 1468
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1471
    .local v5, "keyLockMode":I
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v10

    aget-object v10, v10, v5

    sput-object v10, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 1473
    sget-object v10, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-object v12, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v10, v12, :cond_d

    .line 1475
    :try_start_1
    const-string/jumbo v10, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1476
    const-string/jumbo v10, "/proc/s1302/key_disable"

    const-string/jumbo v12, "disable"

    invoke-static {v10, v12}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1496
    const-string/jumbo v12, "buttons_force_home_enabled"

    const/4 v13, 0x0

    .line 1495
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    :goto_1
    sput-boolean v10, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 1497
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1498
    const-string/jumbo v12, "oem_acc_fingerprint_enrolling"

    const/4 v13, 0x0

    .line 1497
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    :goto_2
    sput-boolean v10, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 1501
    .end local v5    # "keyLockMode":I
    :cond_2
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v12, v10, v13

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1502
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1503
    const-string/jumbo v12, "oem_acc_sensor_three_finger"

    const/4 v13, 0x0

    .line 1502
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1504
    .local v7, "pointerScreenCapture":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/OemPhoneWindowManager;->-get10(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1505
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/OemPhoneWindowManager;->-get10(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v12

    if-eqz v7, :cond_11

    .line 1506
    const/4 v10, 0x1

    .line 1505
    :goto_3
    invoke-virtual {v12, v10}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 1513
    .end local v7    # "pointerScreenCapture":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1514
    const-string/jumbo v13, "op_fingerprint_long_press_action"

    const/4 v14, 0x0

    .line 1513
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    .line 1515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1516
    const-string/jumbo v13, "op_fingerprint_long_press_camera_shot"

    const/4 v14, 0x0

    .line 1515
    invoke-static {v10, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v12, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintForShotEnabled:Z

    .line 1519
    sget-boolean v10, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v10, :cond_5

    .line 1520
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1521
    const-string/jumbo v13, "op_quickpay_enable"

    const/4 v14, 0x0

    .line 1520
    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_13

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, v12, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 1522
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1523
    const-string/jumbo v13, "op_quickpay_default_way"

    const/4 v14, 0x0

    .line 1522
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 1524
    const-string/jumbo v10, "OemPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "QuickPay: ScreenOff enabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v13, v13, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1525
    const-string/jumbo v13, " which="

    .line 1524
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v13, v13, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 1524
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-nez v10, :cond_5

    .line 1528
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1529
    const-string/jumbo v12, "quickpay_button_xy"

    .line 1528
    invoke-static {v10, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1530
    .local v6, "loadXY":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1531
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1532
    .local v8, "split":[Ljava/lang/String;
    array-length v10, v8

    const/4 v12, 0x2

    if-lt v10, v12, :cond_4

    .line 1533
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    .line 1534
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 1537
    .end local v8    # "split":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "OemPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "QuickPay: loadXY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .end local v6    # "loadXY":Ljava/lang/String;
    :cond_5
    sget-boolean v10, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_8

    .line 1545
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1546
    const-string/jumbo v12, "op_navigation_bar_type"

    const/4 v13, 0x0

    .line 1545
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1546
    const/4 v12, 0x3

    .line 1545
    if-ne v10, v12, :cond_14

    const/4 v3, 0x1

    .line 1547
    .local v3, "enabled":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1548
    const-string/jumbo v12, "op_gesture_button_guide"

    const/4 v13, 0x0

    .line 1547
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_15

    const/4 v4, 0x1

    .line 1549
    .local v4, "guide":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v10, :cond_6

    .line 1550
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v10, v3, v4}, Lcom/android/server/policy/OemGestureButton;->updateSettings(ZZ)V

    .line 1552
    :cond_6
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/OemPhoneWindowManager;->-get11(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_7

    .line 1553
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v12, v12, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/android/server/policy/OemPhoneWindowManager;->-set11(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1556
    :cond_7
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/OemPhoneWindowManager;->-get11(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1557
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v12, v12, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/policy/OemPhoneWindowManager;->-set11(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1564
    .end local v3    # "enabled":Z
    .end local v4    # "guide":Z
    :cond_8
    sget-boolean v10, Lcom/android/server/policy/OemCameraNotchGuide;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v10, :cond_a

    .line 1565
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/16 v12, 0x3b

    const/4 v13, 0x0

    aput v12, v10, v13

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    .line 1564
    if-eqz v10, :cond_a

    .line 1566
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1567
    const-string/jumbo v12, "op_camera_notch_ignore"

    const/4 v13, 0x0

    .line 1566
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    :goto_8
    sput-boolean v10, Lcom/android/server/policy/OemCameraNotchGuide;->mIsIgnoreCameraNotch:Z

    .line 1568
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v10, :cond_9

    .line 1569
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v12, Lcom/android/server/policy/OemCameraNotchGuide;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v10, v12}, Lcom/android/server/policy/OemGestureButton;->updateNotchSettings(Z)V

    .line 1572
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v10, :cond_a

    .line 1573
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v9, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1574
    .local v9, "topApp":Landroid/view/WindowManagerPolicy$WindowState;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v12, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    sget-boolean v10, Lcom/android/server/policy/OemCameraNotchGuide;->mIsIgnoreCameraNotch:Z

    if-nez v10, :cond_17

    .line 1575
    if-eqz v9, :cond_18

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isAppNotchLimited()Z

    move-result v10

    .line 1574
    :goto_9
    invoke-virtual {v12, v10}, Lcom/android/server/policy/ScreenDecor;->expandScreenDecor(Z)V

    .line 1581
    .end local v9    # "topApp":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1582
    const-string/jumbo v12, "buttons_show_on_screen_navkeys"

    const/4 v13, 0x0

    .line 1581
    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_19

    const/4 v2, 0x1

    .line 1583
    .local v2, "enableSoftwareKeys":Z
    :goto_a
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->-get16()Z

    move-result v10

    if-eq v2, v10, :cond_b

    .line 1585
    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->-set13(Z)Z

    .line 1586
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/policy/OemPhoneWindowManager;->-set7(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/OemPhoneWindowManager;->-set9(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/policy/OemPhoneWindowManager;->-set1(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/policy/OemPhoneWindowManager;->-set3(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager;->-set4(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v12

    invoke-static {v10, v12}, Lcom/android/server/policy/OemPhoneWindowManager;->-set6(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1589
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap7(Lcom/android/server/policy/OemPhoneWindowManager;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 1592
    return-void

    .line 1478
    .end local v2    # "enableSoftwareKeys":Z
    .restart local v5    # "keyLockMode":I
    :cond_c
    :try_start_3
    const-string/jumbo v10, "/proc/touchpanel/key_disable"

    const-string/jumbo v12, "disable"

    invoke-static {v10, v12}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1480
    :catch_0
    move-exception v1

    .line 1481
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v10, "OemPhoneWindowManager"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1456
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "keyLockMode":I
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 1485
    .restart local v5    # "keyLockMode":I
    :cond_d
    :try_start_5
    const-string/jumbo v10, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1486
    const-string/jumbo v10, "/proc/s1302/key_disable"

    const-string/jumbo v12, "enable"

    invoke-static {v10, v12}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1490
    :catch_1
    move-exception v1

    .line 1491
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v10, "OemPhoneWindowManager"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1488
    .end local v1    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_7
    const-string/jumbo v10, "/proc/touchpanel/key_disable"

    const-string/jumbo v12, "enable"

    invoke-static {v10, v12}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1495
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1497
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1507
    .end local v5    # "keyLockMode":I
    .restart local v7    # "pointerScreenCapture":I
    :cond_11
    const/4 v10, 0x2

    goto/16 :goto_3

    .line 1515
    .end local v7    # "pointerScreenCapture":I
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1520
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 1545
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "enabled":Z
    goto/16 :goto_6

    .line 1547
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "guide":Z
    goto/16 :goto_7

    .line 1566
    .end local v3    # "enabled":Z
    .end local v4    # "guide":Z
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1574
    .restart local v9    # "topApp":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_17
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 1575
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 1581
    .end local v9    # "topApp":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_19
    const/4 v2, 0x0

    .restart local v2    # "enableSoftwareKeys":Z
    goto/16 :goto_a
.end method

.method updateSwapKey()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1615
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    if-nez v2, :cond_1

    .line 1616
    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "1"

    .line 1622
    .local v1, "setVal":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1623
    const-string/jumbo v2, "/proc/s1302/key_rep"

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    :goto_1
    return-void

    .line 1616
    .end local v1    # "setVal":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "0"

    .restart local v1    # "setVal":Ljava/lang/String;
    goto :goto_0

    .line 1618
    .end local v1    # "setVal":Ljava/lang/String;
    :cond_1
    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "0"

    .restart local v1    # "setVal":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "setVal":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "1"

    .restart local v1    # "setVal":Ljava/lang/String;
    goto :goto_0

    .line 1625
    :cond_3
    :try_start_1
    const-string/jumbo v2, "/proc/touchpanel/key_switch"

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "OemPhoneWindowManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
