.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final BLUETOOTH_NOTIFICATION_CHANNEL:Ljava/lang/String; = "bluetooth_notification_channel"

.field private static final DEBUG:Z = false

.field private static final NOTIFICATION_ID:I = 0x1080080

.field private static final NOTIFICATION_TAG_MAP:Ljava/lang/String; = "Message Access"

.field private static final NOTIFICATION_TAG_PBAP:Ljava/lang/String; = "Phonebook Access"

.field private static final NOTIFICATION_TAG_SAP:Ljava/lang/String; = "SIM Access"

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionRequest"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 59
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private checkUserChoice()Z
    .locals 11

    .prologue
    .line 219
    const/4 v6, 0x0

    .line 222
    .local v6, "processed":Z
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 223
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 224
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 226
    return v6

    .line 229
    :cond_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 231
    .local v0, "bluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 232
    .local v2, "cachedDeviceManager":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 233
    .local v1, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 234
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    .line 235
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 234
    invoke-virtual {v2, v8, v9, v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 238
    :cond_1
    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 240
    .local v3, "intentName":Ljava/lang/String;
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 241
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v5

    .line 243
    .local v5, "phonebookPermission":I
    if-nez v5, :cond_3

    .line 284
    .end local v5    # "phonebookPermission":I
    :cond_2
    :goto_0
    return v6

    .line 245
    .restart local v5    # "phonebookPermission":I
    :cond_3
    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 246
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 247
    const/4 v6, 0x1

    goto :goto_0

    .line 248
    :cond_4
    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    .line 249
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 250
    const/4 v6, 0x1

    goto :goto_0

    .line 252
    :cond_5
    const-string/jumbo v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad phonebookPermission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v5    # "phonebookPermission":I
    :cond_6
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 255
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v4

    .line 257
    .local v4, "messagePermission":I
    if-eqz v4, :cond_2

    .line 259
    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    .line 260
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 261
    const/4 v6, 0x1

    goto :goto_0

    .line 262
    :cond_7
    const/4 v8, 0x2

    if-ne v4, v8, :cond_8

    .line 263
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 264
    const/4 v6, 0x1

    goto :goto_0

    .line 266
    :cond_8
    const-string/jumbo v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad messagePermission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    .end local v4    # "messagePermission":I
    :cond_9
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 269
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v7

    .line 271
    .local v7, "simPermission":I
    if-eqz v7, :cond_2

    .line 273
    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 274
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 275
    const/4 v6, 0x1

    goto :goto_0

    .line 276
    :cond_a
    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    .line 277
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 278
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 280
    :cond_b
    const-string/jumbo v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad simPermission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "requestType"    # I

    .prologue
    .line 203
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 204
    const-string/jumbo v0, "Phonebook Access"

    return-object v0

    .line 205
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 206
    const-string/jumbo v0, "Message Access"

    return-object v0

    .line 207
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 208
    const-string/jumbo v0, "SIM Access"

    return-object v0

    .line 210
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_0
    const-string/jumbo v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 295
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 294
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    const-string/jumbo v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    return-void

    .line 296
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v16, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 70
    const-string/jumbo v16, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 72
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    const-string/jumbo v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    const-string/jumbo v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 79
    const/16 v17, 0x1

    .line 78
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 80
    const-string/jumbo v16, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 81
    const-string/jumbo v16, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 98
    return-void

    .line 101
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, "connectionAccessIntent":Landroid/content/Intent;
    const-class v16, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const/high16 v16, 0x18000000

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v17, v0

    .line 110
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string/jumbo v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v16, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v16, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 117
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    .line 118
    :goto_1
    const/4 v14, 0x0

    .line 119
    .local v14, "title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 121
    .local v10, "message":Ljava/lang/String;
    const-string/jumbo v16, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 123
    .local v13, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v13}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 124
    move-object/from16 v0, p1

    invoke-static {v0, v6, v8}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 123
    if-eqz v16, :cond_5

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    .end local v4    # "connectionAccessIntent":Landroid/content/Intent;
    .end local v10    # "message":Ljava/lang/String;
    .end local v13    # "powerManager":Landroid/os/PowerManager;
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "um":Landroid/os/UserManager;
    :cond_2
    :goto_2
    return-void

    .line 116
    .restart local v4    # "connectionAccessIntent":Landroid/content/Intent;
    .restart local v15    # "um":Landroid/os/UserManager;
    :cond_3
    const/4 v6, 0x0

    .local v6, "deviceAddress":Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v6    # "deviceAddress":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .local v8, "deviceName":Ljava/lang/String;
    goto :goto_1

    .line 133
    .end local v8    # "deviceName":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v13    # "powerManager":Landroid/os/PowerManager;
    .restart local v14    # "title":Ljava/lang/String;
    :cond_5
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v16, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v5, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v16, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 136
    const/16 v17, 0x2

    .line 135
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string/jumbo v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "deviceAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 156
    const v16, 0x7f0f0655

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, "title":Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 158
    const/16 v17, 0x0

    aput-object v7, v16, v17

    const/16 v17, 0x1

    aput-object v7, v16, v17

    .line 157
    const v17, 0x7f0f0657

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "message":Ljava/lang/String;
    :goto_3
    const-string/jumbo v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 163
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 164
    new-instance v16, Landroid/app/NotificationChannel;

    const-string/jumbo v17, "bluetooth_notification_channel"

    .line 165
    const v18, 0x7f0f0628

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 166
    const/16 v19, 0x4

    .line 164
    invoke-direct/range {v16 .. v19}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 169
    :cond_6
    new-instance v16, Landroid/app/Notification$Builder;

    .line 170
    const-string/jumbo v17, "bluetooth_notification_channel"

    .line 169
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 174
    const v17, 0x1080080

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 175
    const/16 v17, 0x1

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 176
    const/16 v17, 0x2

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 177
    const/16 v17, 0x0

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 178
    const/16 v17, -0x1

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 179
    const/16 v17, 0x0

    .line 180
    const/16 v18, 0x0

    .line 179
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 181
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 183
    const v17, 0x106014c

    .line 182
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v17

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 184
    const/16 v17, 0x1

    .line 169
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 187
    .local v11, "notification":Landroid/app/Notification;
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x20

    move/from16 v0, v16

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x1080080

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1, v11}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 141
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v12    # "notificationManager":Landroid/app/NotificationManager;
    .local v10, "message":Ljava/lang/String;
    .local v14, "title":Ljava/lang/String;
    :pswitch_0
    const v16, 0x7f0f0658

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "title":Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 143
    const/16 v17, 0x0

    aput-object v7, v16, v17

    const/16 v17, 0x1

    aput-object v7, v16, v17

    .line 142
    const v17, 0x7f0f0659

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "message":Ljava/lang/String;
    goto/16 :goto_3

    .line 146
    .local v10, "message":Ljava/lang/String;
    .local v14, "title":Ljava/lang/String;
    :pswitch_1
    const v16, 0x7f0f065c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, "title":Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 148
    const/16 v17, 0x0

    aput-object v7, v16, v17

    const/16 v17, 0x1

    aput-object v7, v16, v17

    .line 147
    const v17, 0x7f0f065d

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "message":Ljava/lang/String;
    goto/16 :goto_3

    .line 151
    .local v10, "message":Ljava/lang/String;
    .local v14, "title":Ljava/lang/String;
    :pswitch_2
    const v16, 0x7f0f065e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, "title":Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 153
    const/16 v17, 0x0

    aput-object v7, v16, v17

    const/16 v17, 0x1

    aput-object v7, v16, v17

    .line 152
    const v17, 0x7f0f065f

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "message":Ljava/lang/String;
    goto/16 :goto_3

    .line 192
    .end local v4    # "connectionAccessIntent":Landroid/content/Intent;
    .end local v5    # "deleteIntent":Landroid/content/Intent;
    .end local v7    # "deviceAlias":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v13    # "powerManager":Landroid/os/PowerManager;
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "um":Landroid/os/UserManager;
    :cond_7
    const-string/jumbo v16, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 195
    const-string/jumbo v16, "notification"

    .line 194
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 196
    .local v9, "manager":Landroid/app/NotificationManager;
    const-string/jumbo v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 197
    const/16 v17, 0x2

    .line 196
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x1080080

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 139
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
