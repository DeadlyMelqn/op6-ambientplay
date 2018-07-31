.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# static fields
.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x1

.field public static final WAKEFULNESS_DOZING:I = 0x3

.field public static final WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteractive(I)Z
    .locals 2
    .param p0, "wakefulness"    # I

    .prologue
    const/4 v0, 0x1

    .line 79
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wakefulnessToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakefulness"    # I

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_0
    const-string/jumbo v0, "Asleep"

    return-object v0

    .line 64
    :pswitch_1
    const-string/jumbo v0, "Awake"

    return-object v0

    .line 66
    :pswitch_2
    const-string/jumbo v0, "Dreaming"

    return-object v0

    .line 68
    :pswitch_3
    const-string/jumbo v0, "Dozing"

    return-object v0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public abstract addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clearExclusiveWakeLock()V
.end method

.method public abstract disableExclusiveWakeLocks()V
.end method

.method public abstract enableExclusiveWakeLocks()V
.end method

.method public abstract finishUidChanges()V
.end method

.method public abstract getExclusiveWakeLock()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLowPowerState(I)Landroid/os/PowerSaveState;
.end method

.method public abstract powerHint(II)V
.end method

.method public abstract registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract setDeepSleepMode(Z)V
.end method

.method public abstract setDeepSleepWhitelist([I)V
.end method

.method public abstract setDeviceIdleAggressive(Z)V
.end method

.method public abstract setDeviceIdleMode(Z)Z
.end method

.method public abstract setDeviceIdleState(I)V
.end method

.method public abstract setDeviceIdleSySWhitelist([I)V
.end method

.method public abstract setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract setDeviceIdleWhitelist([I)V
.end method

.method public abstract setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract setLightDeviceIdleMode(Z)Z
.end method

.method public abstract setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
.end method

.method public abstract setScreenBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract setUserInactiveOverrideFromWindowManager()V
.end method

.method public abstract startUidChanges()V
.end method

.method public abstract uidActive(I)V
.end method

.method public abstract uidGone(I)V
.end method

.method public abstract uidIdle(I)V
.end method

.method public abstract updateUidProcState(II)V
.end method
