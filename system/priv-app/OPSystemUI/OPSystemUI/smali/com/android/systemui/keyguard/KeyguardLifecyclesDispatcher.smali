.class public Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
.super Ljava/lang/Object;
.source "KeyguardLifecyclesDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1
    .param p1, "screenLifecycle"    # Lcom/android/systemui/keyguard/ScreenLifecycle;
    .param p2, "wakefulnessLifecycle"    # Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;-><init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 46
    return-void
.end method


# virtual methods
.method dispatch(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    return-void
.end method
