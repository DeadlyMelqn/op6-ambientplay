.class public Lcom/android/systemui/keyguard/WakefulnessLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "WakefulnessLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle",
        "<",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mWakefulness:I


# direct methods
.method static synthetic -com_android_systemui_keyguard_WakefulnessLifecycle-mthref-0(Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 45
    invoke-interface {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onStartedWakingUp()V

    return-void
.end method

.method static synthetic -com_android_systemui_keyguard_WakefulnessLifecycle-mthref-1(Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 50
    invoke-interface {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onFinishedWakingUp()V

    return-void
.end method

.method static synthetic -com_android_systemui_keyguard_WakefulnessLifecycle-mthref-2(Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onStartedGoingToSleep()V

    return-void
.end method

.method static synthetic -com_android_systemui_keyguard_WakefulnessLifecycle-mthref-3(Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 60
    invoke-interface {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onFinishedGoingToSleep()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 29
    return-void
.end method

.method private setWakefulness(I)V
    .locals 4
    .param p1, "wakefulness"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 71
    const-string/jumbo v0, "wakefulness"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 72
    return-void
.end method


# virtual methods
.method public dispatchFinishedGoingToSleep()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$4:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 61
    return-void
.end method

.method public dispatchFinishedWakingUp()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$5:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 51
    return-void
.end method

.method public dispatchStartedGoingToSleep()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$6:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 56
    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$7:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 46
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, "WakefulnessLifecycle:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWakefulness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getWakefulness()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    return v0
.end method
