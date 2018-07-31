.class public abstract Landroid/telecom/Logging/Runnable;
.super Ljava/lang/Object;
.source "Runnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/Runnable$1;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSubsession:Landroid/telecom/Logging/Session;

.field private final mSubsessionName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/Logging/Runnable;

    .prologue
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/Logging/Runnable;

    .prologue
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/Logging/Runnable;

    .prologue
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mSubsessionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;
    .locals 0
    .param p0, "-this"    # Landroid/telecom/Logging/Runnable;
    .param p1, "-value"    # Landroid/telecom/Logging/Session;

    .prologue
    iput-object p1, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    return-object p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "subsessionName"    # Ljava/lang/String;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/telecom/Logging/Runnable$1;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/Runnable$1;-><init>(Landroid/telecom/Logging/Runnable;)V

    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    .line 60
    :goto_0
    iput-object p1, p0, Landroid/telecom/Logging/Runnable;->mSubsessionName:Ljava/lang/String;

    .line 61
    return-void

    .line 58
    :cond_0
    iput-object p2, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    invoke-static {v0}, Landroid/telecom/Log;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 92
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getRunnableToCancel()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public abstract loggedRun()V
.end method

.method public prepare()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/telecom/Logging/Runnable;->cancel()V

    .line 79
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    .line 80
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method
