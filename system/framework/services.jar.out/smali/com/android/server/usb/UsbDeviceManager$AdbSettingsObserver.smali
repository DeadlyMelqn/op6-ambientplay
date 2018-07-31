.class Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 200
    const-string/jumbo v2, "adb_enabled"

    .line 199
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 201
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 203
    if-nez v0, :cond_0

    const-string/jumbo v1, "persist.sys.adb.engineermode"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const-string/jumbo v1, "UsbDeviceManager"

    const-string/jumbo v2, "reset engineermode adb property"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string/jumbo v1, "persist.sys.allcommode"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "persist.sys.adb.engineermode"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void

    .line 199
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0
.end method
