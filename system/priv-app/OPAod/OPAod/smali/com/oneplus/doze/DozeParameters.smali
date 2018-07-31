.class public Lcom/oneplus/doze/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_DURATION:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "DozeParameters"

.field private static sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "DozeParameters"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/doze/DozeParameters;->DEBUG:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private dumpPickupSubtypePerformsProxCheck()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeParameters;->getPickupSubtypePerformsProxCheck(I)Z

    .line 68
    sget-object v0, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    const v2, 0x7f090007

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    iget-object v1, v1, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

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
    .line 143
    iget-object v1, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, "value":I
    const/4 v1, 0x0

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "  DozeParameters:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "    getDisplayStateSupported(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 49
    const-string/jumbo v0, "    getPulseDuration(pickup=false): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/doze/DozeParameters;->getPulseDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 50
    const-string/jumbo v0, "    getPulseDuration(pickup=true): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/oneplus/doze/DozeParameters;->getPulseDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 51
    const-string/jumbo v0, "    getPulseInDuration(pickup=false): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/doze/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 52
    const-string/jumbo v0, "    getPulseInDuration(pickup=true): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/oneplus/doze/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 53
    const-string/jumbo v0, "    getPulseInVisibleDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 54
    const-string/jumbo v0, "    getPulseOutDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseOutDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 55
    const-string/jumbo v0, "    getPulseOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 56
    const-string/jumbo v0, "    getVibrateOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 57
    const-string/jumbo v0, "    getVibrateOnPickup(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getVibrateOnPickup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 58
    const-string/jumbo v0, "    getProxCheckBeforePulse(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 59
    const-string/jumbo v0, "    getPickupVibrationThreshold(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPickupVibrationThreshold()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 60
    const-string/jumbo v0, "    getPickupSubtypePerformsProxCheck(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/oneplus/doze/DozeParameters;->dumpPickupSubtypePerformsProxCheck()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "doze.display.supported"

    const v1, 0x7f090008

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPickupSubtypePerformsProxCheck(I)Z
    .locals 3
    .param p1, "subType"    # I

    .prologue
    .line 152
    const-string/jumbo v1, "doze.pickup.proxcheck"

    .line 153
    const v2, 0x7f0d001c

    .line 152
    invoke-direct {p0, v1, v2}, Lcom/oneplus/doze/DozeParameters;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "spec":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1

    .line 160
    :cond_0
    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    if-eqz v1, :cond_1

    .line 161
    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    iget-object v1, v1, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 160
    if-eqz v1, :cond_2

    .line 162
    :cond_1
    new-instance v1, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    invoke-direct {v1, v0}, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    .line 165
    :cond_2
    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    invoke-virtual {v1, p1}, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->isIn(I)Z

    move-result v1

    return v1
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "doze.pickup.vibration.threshold"

    const v1, 0x7f0c000c

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "doze.pulse.proxcheck"

    const v1, 0x7f090005

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseDuration(Z)I
    .locals 2
    .param p1, "pickup"    # Z

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/oneplus/doze/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseOutDuration()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPulseInDuration(Z)I
    .locals 2
    .param p1, "pickupOrDoubleTap"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string/jumbo v0, "doze.pulse.duration.in.pickup"

    const v1, 0x7f0c000e

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 87
    :cond_0
    const-string/jumbo v0, "doze.pulse.duration.in"

    const v1, 0x7f0c000d

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getPulseInVisibleDuration()I
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "doze.pulse.duration.invisible"

    const v1, 0x7f0c0014

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "doze.pulse.sigmotion"

    const v1, 0x7f090004

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOutDuration()I
    .locals 2

    .prologue
    .line 114
    const-string/jumbo v0, "doze.pulse.duration.out"

    const v1, 0x7f0c0016

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration()I
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "doze.pulse.duration.visible"

    const v1, 0x7f0c0013

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration(I)I
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 97
    const-string/jumbo v0, "doze.pulse.duration.visible"

    const v1, 0x7f0c000f

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 99
    const-string/jumbo v0, "doze.pulse.duration.visible"

    const v1, 0x7f0c0012

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 100
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 101
    const-string/jumbo v0, "doze.pulse.duration.visible"

    const v1, 0x7f0c0010

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 103
    :cond_2
    const-string/jumbo v0, "doze.pulse.duration.visible"

    const v1, 0x7f0c0013

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVibrateOnPickup()Z
    .locals 2

    .prologue
    .line 127
    const-string/jumbo v0, "doze.vibrate.pickup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrateOnSigMotion()Z
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "doze.vibrate.sigmotion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
