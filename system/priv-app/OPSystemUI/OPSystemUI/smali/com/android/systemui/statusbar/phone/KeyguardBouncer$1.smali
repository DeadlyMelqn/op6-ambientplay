.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 70
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFacelockStateChanged(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "notifyMsgId":I
    const/4 v0, -0x1

    .line 82
    .local v0, "notifyColor":I
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;I)V

    .line 84
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v1

    .line 87
    if-nez v1, :cond_2

    return-void

    .line 89
    :cond_2
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    .line 90
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    .line 94
    :cond_3
    :goto_0
    const/high16 v0, -0x10000

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;I)V

    .line 97
    return-void

    .line 91
    :cond_5
    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    .line 92
    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    .line 93
    const/16 v2, 0x9

    if-ne p1, v2, :cond_4

    goto :goto_0
.end method

.method public onPreventModeChanged(Z)V
    .locals 2
    .param p1, "prevent"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 114
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isUserUnlocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "KeyguardBouncer"

    const-string/jumbo v1, "prevent mode to pause view"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onPause()V

    .line 119
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    .line 107
    :cond_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I

    .line 74
    return-void
.end method
