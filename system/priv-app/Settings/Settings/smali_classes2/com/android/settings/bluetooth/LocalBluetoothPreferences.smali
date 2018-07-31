.class final Lcom/android/settings/bluetooth/LocalBluetoothPreferences;
.super Ljava/lang/Object;
.source "LocalBluetoothPreferences.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:I = 0xea60

.field private static final KEY_DISCOVERABLE_END_TIMESTAMP:Ljava/lang/String; = "discoverable_end_timestamp"

.field private static final KEY_LAST_SELECTED_DEVICE:Ljava/lang/String; = "last_selected_device"

.field private static final KEY_LAST_SELECTED_DEVICE_TIME:Ljava/lang/String; = "last_selected_device_time"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_settings"

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothPreferences"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static getDiscoverableEndTimestamp(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "discoverable_end_timestamp"

    const-wide/16 v2, 0x0

    .line 57
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v0, "bluetooth_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static persistDiscoverableEndTimestamp(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endTimestamp"    # J

    .prologue
    .line 144
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method static persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "last_selected_device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string/jumbo v1, "last_selected_device_time"

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method

.method static shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v10

    .line 64
    .local v10, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-nez v10, :cond_0

    .line 65
    const-string/jumbo v13, "LocalBluetoothPreferences"

    const-string/jumbo v14, "manager == null - do not show dialog."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v13, 0x0

    return v13

    .line 70
    :cond_0
    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 71
    const/4 v13, 0x1

    return v13

    .line 75
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v13, v13, 0x5

    .line 76
    const/4 v14, 0x5

    .line 75
    if-ne v13, v14, :cond_2

    .line 77
    const-string/jumbo v13, "LocalBluetoothPreferences"

    const-string/jumbo v14, "in appliance mode - do not show dialog."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v13, 0x0

    return v13

    .line 81
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 82
    .local v4, "currentTimeMillis":J
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 86
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v13, "discoverable_end_timestamp"

    const-wide/16 v14, 0x0

    .line 85
    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 87
    .local v8, "lastDiscoverableEndTime":J
    const-wide/32 v14, 0xea60

    add-long/2addr v14, v8

    cmp-long v13, v14, v4

    if-lez v13, :cond_3

    .line 89
    const/4 v13, 0x1

    return v13

    .line 93
    :cond_3
    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    .line 94
    .local v2, "adapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-eqz v2, :cond_5

    .line 95
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 96
    const/4 v13, 0x1

    return v13

    .line 98
    :cond_4
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getDiscoveryEndMillis()J

    move-result-wide v14

    .line 99
    const-wide/32 v16, 0xea60

    .line 98
    add-long v14, v14, v16

    cmp-long v13, v14, v4

    if-lez v13, :cond_5

    .line 100
    const/4 v13, 0x1

    return v13

    .line 105
    :cond_5
    if-eqz p1, :cond_6

    .line 107
    const-string/jumbo v13, "last_selected_device"

    const/4 v14, 0x0

    .line 106
    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "lastSelectedDevice":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 111
    const-string/jumbo v13, "last_selected_device_time"

    const-wide/16 v14, 0x0

    .line 110
    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 112
    .local v6, "lastDeviceSelectedTime":J
    const-wide/32 v14, 0xea60

    add-long/2addr v14, v6

    cmp-long v13, v14, v4

    if-lez v13, :cond_6

    .line 114
    const/4 v13, 0x1

    return v13

    .line 120
    .end local v3    # "lastSelectedDevice":Ljava/lang/String;
    .end local v6    # "lastDeviceSelectedTime":J
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 123
    const v13, 0x1040163

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "packagedKeyboardName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 125
    const-string/jumbo v13, "LocalBluetoothPreferences"

    const-string/jumbo v14, "showing dialog for packaged keyboard"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v13, 0x1

    return v13

    .line 130
    .end local v11    # "packagedKeyboardName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v13, "LocalBluetoothPreferences"

    const-string/jumbo v14, "Found no reason to show the dialog - do not show dialog."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v13, 0x0

    return v13
.end method
