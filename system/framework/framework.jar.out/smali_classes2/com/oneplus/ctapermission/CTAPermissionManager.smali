.class public final Lcom/oneplus/ctapermission/CTAPermissionManager;
.super Ljava/lang/Object;
.source "CTAPermissionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CTAPermissionManager"

.field private static sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

.field private static sService:Lcom/oneplus/os/IOnePlusService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, "opservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/oneplus/ctapermission/CTAPermissionManager;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/oneplus/ctapermission/CTAPermissionManager;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Lcom/oneplus/ctapermission/CTAPermissionManager;

    invoke-direct {v0}, Lcom/oneplus/ctapermission/CTAPermissionManager;-><init>()V

    sput-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    .line 57
    :cond_1
    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPermissionService(I)Landroid/os/Messenger;
    .locals 4
    .param p1, "serviceIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "proxy":Landroid/os/IBinder;
    :try_start_0
    sget-object v2, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v2, p1}, Lcom/oneplus/os/IOnePlusService;->getPermissionService(I)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    .end local v1    # "proxy":Landroid/os/IBinder;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 99
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    return-object v2

    .line 101
    :cond_1
    return-object v3

    .line 96
    .restart local v1    # "proxy":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isRequestPermission(Z)V
    .locals 2
    .param p1, "request"    # Z

    .prologue
    .line 72
    :try_start_0
    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v1, p1}, Lcom/oneplus/os/IOnePlusService;->isRequestPermission(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "proxy"    # Landroid/os/IBinder;
    .param p2, "serviceIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v1, p1, p2}, Lcom/oneplus/os/IOnePlusService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
