.class public final Landroid/app/timezone/RulesManager;
.super Ljava/lang/Object;
.source "RulesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesManager$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ERROR_OPERATION_IN_PROGRESS:I = 0x1

.field public static final ERROR_UNKNOWN_FAILURE:I = 0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIRulesManager:Landroid/app/timezone/IRulesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    .line 97
    const-string/jumbo v0, "timezone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/app/timezone/IRulesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    .line 98
    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 210
    return-void
.end method


# virtual methods
.method public getRulesState()Landroid/app/timezone/RulesState;
    .locals 4

    .prologue
    .line 108
    :try_start_0
    const-string/jumbo v2, "sIRulesManager.getRulesState()"

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v2}, Landroid/app/timezone/IRulesManager;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v1

    .line 110
    .local v1, "rulesState":Landroid/app/timezone/RulesState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sIRulesManager.getRulesState() returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-object v1

    .line 112
    .end local v1    # "rulesState":Landroid/app/timezone/RulesState;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/Callback;)I
    .locals 3
    .param p1, "distroFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "checkToken"    # [B
    .param p3, "callback"    # Landroid/app/timezone/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p3}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    .line 134
    .local v1, "iCallback":Landroid/app/timezone/ICallback;
    :try_start_0
    const-string/jumbo v2, "sIRulesManager.requestInstall()"

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v2, p1, p2, v1}, Landroid/app/timezone/IRulesManager;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestNothing([BZ)V
    .locals 3
    .param p1, "checkToken"    # [B
    .param p2, "succeeded"    # Z

    .prologue
    .line 199
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sIRulesManager.requestNothing() with token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v1, p1, p2}, Landroid/app/timezone/IRulesManager;->requestNothing([BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestUninstall([BLandroid/app/timezone/Callback;)I
    .locals 3
    .param p1, "checkToken"    # [B
    .param p2, "callback"    # Landroid/app/timezone/Callback;

    .prologue
    .line 152
    new-instance v1, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    .line 154
    .local v1, "iCallback":Landroid/app/timezone/ICallback;
    :try_start_0
    const-string/jumbo v2, "sIRulesManager.requestUninstall()"

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v2, p1, v1}, Landroid/app/timezone/IRulesManager;->requestUninstall([BLandroid/app/timezone/ICallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
