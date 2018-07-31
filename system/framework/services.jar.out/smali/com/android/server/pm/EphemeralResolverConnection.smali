.class final Lcom/android/server/pm/EphemeralResolverConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;,
        Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;,
        Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;,
        Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J

.field private static final CALL_SERVICE_TIMEOUT_MS:J

.field private static final DEBUG_EPHEMERAL:Z

.field private static final STATE_BINDING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private mBindState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/app/IInstantAppResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    return-wide v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/EphemeralResolverConnection;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/pm/EphemeralResolverConnection;

    .prologue
    iget v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/pm/EphemeralResolverConnection;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/EphemeralResolverConnection;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/pm/EphemeralResolverConnection;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/pm/EphemeralResolverConnection;
    .param p1, "-value"    # Landroid/app/IInstantAppResolver;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/EphemeralResolverConnection;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/pm/EphemeralResolverConnection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->handleBinderDiedLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    :goto_0
    int-to-long v0, v0

    .line 58
    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    .line 61
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    :goto_1
    int-to-long v0, v0

    .line 60
    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    .line 62
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    .line 55
    return-void

    .line 59
    :cond_0
    const/16 v0, 0x12c

    goto :goto_0

    .line 61
    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    .line 67
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    .line 85
    return-void
.end method

.method private bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "doUnbind":Z
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 171
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 175
    :cond_0
    :try_start_1
    iget v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    if-ne v5, v7, :cond_2

    .line 177
    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_1

    .line 178
    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 182
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v5, :cond_2

    .line 183
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v5

    .line 185
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const/4 v0, 0x1

    .line 191
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :try_start_3
    iget v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    if-ne v5, v9, :cond_5

    .line 194
    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_3

    .line 195
    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Another thread is binding; waiting for connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v5, :cond_4

    .line 200
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v5

    .line 202
    :cond_4
    :try_start_4
    new-instance v5, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 204
    :cond_5
    const/4 v5, 0x1

    :try_start_5
    iput v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, "wasBound":Z
    const/4 v3, 0x0

    .line 211
    .local v3, "instance":Landroid/app/IInstantAppResolver;
    if-eqz v0, :cond_7

    .line 212
    :try_start_6
    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_6

    .line 213
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Previous connection never established; rebinding"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_6
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 217
    :cond_7
    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_8

    .line 218
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Binding to instant app resolver"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_8
    const v2, 0x4000001

    .line 221
    .local v2, "flags":I
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    .line 222
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v9, 0x4000001

    .line 221
    invoke-virtual {v5, v6, v7, v9, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    .line 223
    .local v4, "wasBound":Z
    if-eqz v4, :cond_a

    .line 224
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 225
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .local v3, "instance":Landroid/app/IInstantAppResolver;
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 234
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 235
    if-eqz v4, :cond_9

    if-nez v3, :cond_9

    .line 236
    const/4 v5, 0x2

    :try_start_9
    iput v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    .line 240
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v6

    .line 227
    return-object v3

    .line 238
    :cond_9
    const/4 v5, 0x0

    :try_start_a
    iput v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 234
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 224
    .local v3, "instance":Landroid/app/IInstantAppResolver;
    :catchall_2
    move-exception v5

    :try_start_b
    monitor-exit v6

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 233
    .end local v2    # "flags":I
    .end local v3    # "instance":Landroid/app/IInstantAppResolver;
    .end local v4    # "wasBound":Z
    :catchall_3
    move-exception v5

    .line 234
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 235
    if-eqz v4, :cond_b

    if-nez v3, :cond_b

    .line 236
    const/4 v7, 0x2

    :try_start_c
    iput v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    .line 240
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit v6

    .line 233
    throw v5

    .line 230
    .restart local v2    # "flags":I
    .restart local v3    # "instance":Landroid/app/IInstantAppResolver;
    .restart local v4    # "wasBound":Z
    :cond_a
    :try_start_d
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Failed to bind to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v5, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 238
    .end local v2    # "flags":I
    .end local v3    # "instance":Landroid/app/IInstantAppResolver;
    .end local v4    # "wasBound":Z
    :cond_b
    const/4 v7, 0x0

    :try_start_e
    iput v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_1

    .line 234
    :catchall_4
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    .local v0, "binderToken":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    return-object v2

    .line 147
    :catchall_0
    move-exception v2

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw v2
.end method

.method private handleBinderDiedLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    invoke-interface {v1}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 268
    return-void

    .line 265
    :catch_0
    move-exception v0

    .local v0, "ignore":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method private throwIfCalledOnMainThread()V
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    return-void
.end method

.method private waitForBindLocked(Ljava/lang/String;)V
    .locals 9
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 154
    .local v4, "startMillis":J
    :goto_0
    iget v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    if-eqz v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v6, :cond_1

    .line 165
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 159
    .local v0, "elapsedMillis":J
    sget-wide v6, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long v2, v6, v0

    .line 160
    .local v2, "remainingMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2

    .line 161
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Didn\'t bind to resolver in time!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 253
    sget-boolean v0, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Binder to instant app resolver died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->handleBinderDiedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 259
    return-void

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    .locals 10
    .param p1, "hashPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "hostName"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;
    .param p5, "callbackHandler"    # Landroid/os/Handler;
    .param p6, "startTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/EphemeralResolverConnection$1;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;J)V

    .line 132
    .local v0, "remoteCallback":Landroid/os/IRemoteCallback;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 140
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v1

    .line 134
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 135
    .local v7, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v1

    .line 138
    .end local v7    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v8

    .local v8, "ignore":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final getInstantAppResolveInfoList([ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "hashPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->throwIfCalledOnMainThread()V

    .line 90
    const/4 v3, 0x0

    .line 93
    .local v3, "target":Landroid/app/IInstantAppResolver;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 100
    .local v3, "target":Landroid/app/IInstantAppResolver;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-virtual {v4, v3, p1, p2}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getEphemeralResolveInfoList(Landroid/app/IInstantAppResolver;[ILjava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 107
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 108
    :try_start_2
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    .line 100
    return-object v4

    .line 96
    .local v3, "target":Landroid/app/IInstantAppResolver;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v4, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "target":Landroid/app/IInstantAppResolver;
    :catchall_0
    move-exception v4

    .line 107
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 108
    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v5

    .line 106
    throw v4

    .line 94
    .restart local v3    # "target":Landroid/app/IInstantAppResolver;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_5
    new-instance v4, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    .local v3, "target":Landroid/app/IInstantAppResolver;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 102
    :catch_2
    move-exception v1

    .line 103
    .restart local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :try_start_6
    new-instance v4, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v2

    .line 107
    .local v2, "ignore":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 108
    :try_start_7
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v5

    .line 111
    const/4 v4, 0x0

    return-object v4

    .line 107
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .end local v2    # "ignore":Landroid/os/RemoteException;
    .end local v3    # "target":Landroid/app/IInstantAppResolver;
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4
.end method
