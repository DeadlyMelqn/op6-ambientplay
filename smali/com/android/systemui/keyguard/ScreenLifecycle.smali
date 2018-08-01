.class public Lcom/android/systemui/keyguard/ScreenLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "ScreenLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle",
        "<",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mScreenState:I


# direct methods
.method static synthetic -com_android_systemui_keyguard_ScreenLifecycle-mthref-0(Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 44
    invoke-interface {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;->onScreenTurningOn()V

    return-void
.end method

.method static synthetic -com_android_systemui_keyguard_ScreenLifecycle-mthref-1(Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 49
    invoke-interface {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic -com_android_systemui_keyguard_ScreenLifecycle-mthref-2(Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 54
    invoke-interface {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;->onScreenTurningOff()V

    return-void
.end method

.method static synthetic -com_android_systemui_keyguard_ScreenLifecycle-mthref-3(Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;)V
    .locals 0

    .prologue
    .line 59
    invoke-interface {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;->onScreenTurnedOff()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 29
    return-void
.end method

.method private setScreenState(I)V
    .locals 4
    .param p1, "screenState"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 70
    const-string/jumbo v0, "screenState"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 71
    return-void
.end method


# virtual methods
.method public dispatchScreenTurnedOff()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$0:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 60
    return-void
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$1:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 50
    return-void
.end method

.method public dispatchScreenTurningOff()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$2:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 55
    return-void
.end method

.method public dispatchScreenTurningOn()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    sget-object v0, Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;->$INST$3:Lcom/android/systemui/keyguard/-$Lambda$a-rTbia0ew11VH8Z4-exO6ADmzQ;

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 45
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, "ScreenLifecycle:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public getScreenState()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return v0
.end method
