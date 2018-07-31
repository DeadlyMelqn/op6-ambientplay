.class Lcom/android/systemui/plugin/LSState$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/LSState;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/LSState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/LSState;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    .line 101
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v2, v1, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 127
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onFinishedGoingToSleep(I)V

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 5
    .param p1, "bouncer"    # Z

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v2, v1, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 146
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardBouncerChanged(Z)V

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v2, v1, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 155
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardVisibilityChanged(Z)V

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    invoke-static {v2, v1}, Lcom/android/systemui/plugin/LSState;->-set0(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 136
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v2, v2, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 137
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->onScreenTurnedOff()V

    .line 136
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    invoke-static {v2, v1}, Lcom/android/systemui/plugin/LSState;->-set0(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 117
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v2, v2, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 118
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedGoingToSleep(I)V

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/plugin/LSState;->-set0(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 106
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v2, v1, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 107
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedWakingUp()V

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method
