.class public Lcom/oneplus/highpower/HighPowerDetectManager;
.super Ljava/lang/Object;
.source "HighPowerDetectManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighPowerDetectManager"

.field private static sService:Lcom/oneplus/os/IOnePlusService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getBgPowerHungryList()Ljava/util/List;
    .locals 2
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
    .line 62
    :try_start_0
    invoke-static {}, Lcom/oneplus/highpower/HighPowerDetectManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/os/IOnePlusService;->getBgPowerHungryList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getService()Lcom/oneplus/os/IOnePlusService;
    .locals 2

    .prologue
    .line 87
    sget-object v1, Lcom/oneplus/highpower/HighPowerDetectManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/oneplus/highpower/HighPowerDetectManager;->sService:Lcom/oneplus/os/IOnePlusService;

    return-object v1

    .line 90
    :cond_0
    const-string/jumbo v1, "opservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 91
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/highpower/HighPowerDetectManager;->sService:Lcom/oneplus/os/IOnePlusService;

    .line 92
    sget-object v1, Lcom/oneplus/highpower/HighPowerDetectManager;->sService:Lcom/oneplus/os/IOnePlusService;

    return-object v1
.end method

.method public static stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "powerLevel"    # I

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Lcom/oneplus/highpower/HighPowerDetectManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/oneplus/os/IOnePlusService;->stopBgPowerHungryApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
