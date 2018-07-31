.class Lcom/android/server/companion/CompanionDeviceManagerService$3;
.super Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 401
    invoke-direct {p0}, Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDeviceSelected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->addAssociation(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-wrap7(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 418
    return-void
.end method

.method public onDeviceSelectionCancel()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-wrap7(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 423
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "CompanionDeviceManagerService"

    const-string/jumbo v2, "Error during IPC"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    const-class v1, Landroid/os/RemoteException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
