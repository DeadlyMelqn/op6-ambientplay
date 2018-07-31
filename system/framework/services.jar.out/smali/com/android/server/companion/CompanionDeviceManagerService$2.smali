.class Lcom/android/server/companion/CompanionDeviceManagerService$2;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field final synthetic val$request:Landroid/companion/AssociationRequest;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;Landroid/companion/AssociationRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    invoke-static {v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-set1(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;

    .line 368
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    invoke-static {v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-set2(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;

    .line 369
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-set0(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-get3(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/companion/IFindDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v3, 0x0

    .line 372
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :try_start_1
    invoke-static {p2}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceDiscoveryService;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    .line 384
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    .line 385
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    .line 386
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->-wrap0(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;

    move-result-object v5

    .line 380
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceDiscoveryService;->startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Landroid/companion/ICompanionDeviceDiscoveryServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-wrap7(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 376
    return-void

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 388
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "CompanionDeviceManagerService"

    const-string/jumbo v2, "Error while initiating device discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 395
    return-void
.end method
