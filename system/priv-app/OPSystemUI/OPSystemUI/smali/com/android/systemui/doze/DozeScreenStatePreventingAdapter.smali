.class public Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;
.super Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.source "DozeScreenStatePreventingAdapter.java"


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 0
    .param p1, "inner"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    .line 32
    return-void
.end method

.method private static isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z
    .locals 1
    .param p0, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;
    .locals 1
    .param p0, "inner"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p1, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    move-object p0, v0

    .end local p0    # "inner":Lcom/android/systemui/doze/DozeMachine$Service;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 36
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 37
    :cond_0
    const/4 p1, 0x2

    .line 39
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->setDozeScreenState(I)V

    .line 40
    return-void
.end method
