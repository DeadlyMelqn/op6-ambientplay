.class public Lcom/android/server/connectivity/tethering/SimChangeListener;
.super Ljava/lang/Object;
.source "SimChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/tethering/SimChangeListener;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/SimChangeListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/tethering/SimChangeListener;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/SimChangeListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/tethering/SimChangeListener;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/SimChangeListener;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/SimChangeListener;->isSimCardLoaded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onSimCardLoadedCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mTarget:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mCallback:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    return-void
.end method

.method private isSimCardLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generationNumber()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public startListening()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v1, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;

    .line 67
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 66
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;-><init>(Lcom/android/server/connectivity/tethering/SimChangeListener;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mTarget:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 80
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iput-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method
