.class public final Lcom/oneplus/display/ColorBalanceManagerGlobal;
.super Ljava/lang/Object;
.source "ColorBalanceManagerGlobal.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorBalanceManagerGlobal"

.field private static sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;


# instance fields
.field private final mCBM:Lcom/oneplus/display/IColorBalanceManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/oneplus/display/IColorBalanceManager;)V
    .locals 1
    .param p1, "ndm"    # Lcom/oneplus/display/IColorBalanceManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/oneplus/display/ColorBalanceManagerGlobal;
    .locals 4

    .prologue
    .line 37
    const-class v2, Lcom/oneplus/display/ColorBalanceManagerGlobal;

    monitor-enter v2

    .line 38
    :try_start_0
    sget-object v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-nez v1, :cond_0

    .line 39
    const-string/jumbo v1, "nightdisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 41
    new-instance v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;

    invoke-static {v0}, Lcom/oneplus/display/IColorBalanceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/display/IColorBalanceManager;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/oneplus/display/ColorBalanceManagerGlobal;-><init>(Lcom/oneplus/display/IColorBalanceManager;)V

    sput-object v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    .line 46
    :cond_0
    :goto_0
    sget-object v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 43
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "getService ERROR!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public sendMsg(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->sendMsg(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    return-void

    .line 58
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setActiveMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setActiveMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    return-void

    .line 73
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setColorBalance(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setColorBalance(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    return-void

    .line 103
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setDefaultMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    return-void

    .line 88
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
