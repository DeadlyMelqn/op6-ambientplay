.class Lcom/oneplus/settings/receiver/SettingsReceiver$2;
.super Ljava/lang/Object;
.source "SettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/receiver/SettingsReceiver;->setBluetoothScanMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 265
    :try_start_0
    sget-object v5, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_oneplus_devicename"

    .line 264
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "mDeviceName":Ljava/lang/String;
    sget-object v5, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v5}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 267
    .local v3, "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    .line 268
    .local v2, "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    sget-object v5, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 269
    const-string/jumbo v6, "bluetooth_default_scan_mode"

    const/16 v7, 0x17

    .line 268
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 270
    .local v4, "scanmode":I
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 271
    const-string/jumbo v5, "SettingsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bluetooth scan mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 274
    const-string/jumbo v5, "oneplus_bluetooth_scan_mode_flag"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPPrefUtil;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1    # "mDeviceName":Ljava/lang/String;
    .end local v2    # "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .end local v3    # "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .end local v4    # "scanmode":I
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
