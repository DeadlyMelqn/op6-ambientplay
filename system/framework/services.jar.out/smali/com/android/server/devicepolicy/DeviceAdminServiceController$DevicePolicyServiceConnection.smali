.class Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "DeviceAdminServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicePolicyServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/PersistentConnection",
        "<",
        "Landroid/app/admin/IDeviceAdminService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DeviceAdminServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->this$0:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 70
    const-string/jumbo v1, "DevicePolicyManager"

    iget-object v2, p1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-get1(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;

    move-result-object v3

    .line 71
    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-get0(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v0

    iget-wide v6, v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 72
    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-get0(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v0

    iget-wide v8, v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 73
    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-get0(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v0

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    .line 70
    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJ)V

    .line 74
    return-void
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/app/admin/IDeviceAdminService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;

    move-result-object v0

    return-object v0
.end method
