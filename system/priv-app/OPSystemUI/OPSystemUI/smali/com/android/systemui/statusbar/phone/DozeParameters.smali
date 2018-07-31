.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;
    }
.end annotation


# static fields
.field private static sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;


# instance fields
.field private final mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 44
    return-void
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "value":I
    const/4 v1, 0x0

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doubleTapReportsTouchCoordinates()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getAlwaysOn()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "doze.display.supported"

    const v1, 0x7f050039

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getDozeSuspendDisplayStateSupported()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getPickupSubtypePerformsProxCheck(I)Z
    .locals 3
    .param p1, "subType"    # I

    .prologue
    .line 140
    const-string/jumbo v1, "doze.pickup.proxcheck"

    .line 141
    const v2, 0x7f1101fa

    .line 140
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "spec":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1

    .line 148
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    if-eqz v1, :cond_1

    .line 149
    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 148
    if-eqz v1, :cond_2

    .line 150
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    .line 153
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->isIn(I)Z

    move-result v1

    return v1
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "doze.pickup.vibration.threshold"

    const v1, 0x7f0b001c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "doze.pulse.proxcheck"

    const v1, 0x7f05003c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseInDuration(Z)I
    .locals 2
    .param p1, "pickupOrDoubleTap"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    const-string/jumbo v0, "doze.pulse.duration.in.pickup"

    const v1, 0x7f0b001e

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    :goto_0
    return v0

    .line 91
    :cond_0
    const-string/jumbo v0, "doze.pulse.duration.in"

    const v1, 0x7f0b001d

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "doze.pulse.sigmotion"

    const v1, 0x7f05003e

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOutDuration()I
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "doze.pulse.duration.out"

    const v1, 0x7f0b001f

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration()I
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "doze.pulse.duration.visible"

    const v1, 0x7f0b0020

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDurationExtended()I
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
