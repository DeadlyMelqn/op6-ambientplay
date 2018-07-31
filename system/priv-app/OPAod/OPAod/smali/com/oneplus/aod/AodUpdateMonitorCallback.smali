.class public Lcom/oneplus/aod/AodUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "AodUpdateMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onDreamingStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onRefreshBatteryInfo()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onStartDozing()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onStopDozing()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 63
    return-void
.end method
