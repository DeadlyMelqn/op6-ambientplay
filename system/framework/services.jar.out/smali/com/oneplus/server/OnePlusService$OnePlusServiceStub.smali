.class final Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;
.super Lcom/oneplus/os/IOnePlusService$Stub;
.source "OnePlusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OnePlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnePlusServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OnePlusService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OnePlusService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/OnePlusService;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-direct {p0}, Lcom/oneplus/os/IOnePlusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAppControlModes(I)Ljava/util/List;
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppControlState(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->-get0(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralUsedPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getHighUsedPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLowUsedPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionService(I)Landroid/os/IBinder;
    .locals 1
    .param p1, "serviceIndex"    # I

    .prologue
    .line 123
    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->getPermissionServiceBinderProxy(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationLedEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestPermission(Z)V
    .locals 0
    .param p1, "request"    # Z

    .prologue
    .line 113
    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->isRequestPermission(Z)V

    .line 114
    return-void
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .prologue
    .line 82
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setAppControlState(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "on"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->-get0(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public setNotificationLedStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 101
    return-void
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "proxy"    # Landroid/os/IBinder;
    .param p2, "serviceIndex"    # I

    .prologue
    .line 118
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusCTAPermissionService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    .line 119
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .prologue
    .line 135
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    .line 136
    return-void
.end method
