.class public Lcom/android/systemui/util/wakelock/DelayedWakeLock;
.super Ljava/lang/Object;
.source "DelayedWakeLock.java"

# interfaces
.implements Lcom/android/systemui/util/wakelock/WakeLock;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInner:Lcom/android/systemui/util/wakelock/WakeLock;

.field private final mRelease:Ljava/lang/Runnable;


# direct methods
.method static synthetic -com_android_systemui_util_wakelock_DelayedWakeLock-mthref-0(Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 0

    .prologue
    .line 35
    invoke-interface {p0}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "inner"    # Lcom/android/systemui/util/wakelock/WakeLock;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/util/wakelock/-$Lambda$VBW5HUGRQ28K2ZOGIXPdmvbpZB8;

    invoke-direct {v1, v0}, Lcom/android/systemui/util/wakelock/-$Lambda$VBW5HUGRQ28K2ZOGIXPdmvbpZB8;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mRelease:Ljava/lang/Runnable;

    .line 36
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    .line 41
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->mRelease:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrapImpl(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
