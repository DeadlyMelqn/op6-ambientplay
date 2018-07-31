.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PersistentConnection$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBindForBackoffRunnable:Ljava/lang/Runnable;

.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextBackoffMs:J

.field private final mRebindBackoffIncrease:D

.field private final mRebindBackoffMs:J

.field private final mRebindMaxBackoffMs:J

.field private mRebindScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReconnectTime:J

.field private mService:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShouldBeBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PersistentConnection;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/PersistentConnection;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;

    .prologue
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/PersistentConnection;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;
    .param p1, "-value"    # Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/PersistentConnection;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/PersistentConnection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJ)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userId"    # I
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "rebindBackoffSeconds"    # J
    .param p8, "rebindBackoffIncrease"    # D
    .param p10, "rebindMaxBackoffSeconds"    # J

    .prologue
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    const-wide/16 v2, 0x3e8

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/android/server/am/PersistentConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 151
    new-instance v0, Lcom/android/server/am/-$Lambda$OG32q1kCzvkvvDCMRUhlgG4vNOc;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$Lambda$OG32q1kCzvkvvDCMRUhlgG4vNOc;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 158
    iput-object p3, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 159
    iput p4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 160
    iput-object p5, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 162
    mul-long v0, p6, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 163
    iput-wide p8, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    .line 164
    mul-long v0, p10, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    .line 166
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 167
    return-void
.end method

.method private cleanUpConnectionLocked()V
    .locals 1

    .prologue
    .line 264
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    .line 266
    return-void
.end method

.method private final unbindLocked()V
    .locals 3

    .prologue
    .line 280
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 282
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 287
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 289
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    .line 290
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final bind()V
    .locals 2

    .prologue
    .line 216
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 221
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final bindForBackoff()V
    .locals 2

    .prologue
    .line 253
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 256
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 261
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bindInnerLocked(Z)V
    .locals 7
    .param p1, "resetBackoff"    # Z

    .prologue
    .line 224
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 226
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 231
    if-eqz p1, :cond_1

    .line 233
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 236
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 242
    .local v1, "service":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 244
    iget-object v4, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 243
    const v3, 0x4000001

    .line 242
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v6

    .line 246
    .local v6, "success":Z
    if-nez v6, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    const-string/jumbo v3, " failed."

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 318
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "  [bound]"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "  [connected]"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "  reconnect in "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 327
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 329
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    const-string/jumbo v0, "  Next backoff(sec): "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 333
    return-void

    .line 321
    :cond_1
    :try_start_1
    const-string/jumbo v0, "  [not bound]"

    goto :goto_0

    .line 322
    :cond_2
    const-string/jumbo v0, "  [not connected]"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 367
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getNextBackoffMsForTest()J
    .locals 2

    .prologue
    .line 352
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-wide v0
.end method

.method getReconnectTimeForTest()J
    .locals 2

    .prologue
    .line 357
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    return-wide v0
.end method

.method public final getServiceBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method injectPostAtTime(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 342
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 343
    return-void
.end method

.method injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 337
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method injectUptimeMillis()J
    .locals 2

    .prologue
    .line 347
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isBound()Z
    .locals 2

    .prologue
    .line 180
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isConnected()Z
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isRebindScheduled()Z
    .locals 2

    .prologue
    .line 189
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method synthetic lambda$-com_android_server_am_PersistentConnection_5645()V
    .locals 0

    .prologue
    .line 151
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->bindForBackoff()V

    return-void
.end method

.method scheduleRebindLocked()V
    .locals 6

    .prologue
    .line 298
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 300
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scheduling to reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms (uptime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 305
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 307
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    .line 308
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 307
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 312
    :cond_0
    return-void
.end method

.method shouldBeBoundForTest()Z
    .locals 1

    .prologue
    .line 372
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    return v0
.end method

.method public final unbind()V
    .locals 2

    .prologue
    .line 272
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 275
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 277
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unscheduleRebindLocked()V
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 295
    return-void
.end method
