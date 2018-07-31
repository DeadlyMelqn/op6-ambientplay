.class Lcom/android/systemui/statusbar/phone/OPFacelockController$10;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field final synthetic val$bouncerShow:Z

.field final synthetic val$liveWP:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$liveWP:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$bouncerShow:Z

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 865
    const/4 v0, 0x5

    .line 867
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get11(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$liveWP:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 868
    const/4 v0, 0x1

    .line 882
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get22(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetFPTimeout()V

    .line 884
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlockForFace(I)V

    .line 886
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get13(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v1

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 887
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isLighModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get14(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get14(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setAlpha(F)V

    .line 890
    :cond_0
    return-void

    .line 869
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$bouncerShow:Z

    if-eqz v1, :cond_2

    .line 870
    const/4 v0, 0x6

    goto :goto_0

    .line 873
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$liveWP:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get22(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 874
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get13(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 875
    const/4 v0, 0x0

    goto :goto_0

    .line 877
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method
