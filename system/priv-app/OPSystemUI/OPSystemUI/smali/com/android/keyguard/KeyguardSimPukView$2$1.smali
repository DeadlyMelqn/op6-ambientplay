.class Lcom/android/keyguard/KeyguardSimPukView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$2;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$2;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardSimPukView$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->-get3(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->-get3(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 429
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-eqz v0, :cond_2

    move v0, v1

    .line 428
    :goto_0
    invoke-virtual {v3, v1, v0}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(ZZ)V

    .line 430
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-nez v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 432
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v2

    .line 431
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->-set3(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->-set4(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 464
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardSimPukView;->-set0(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 465
    return-void

    :cond_2
    move v0, v2

    .line 429
    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->-set4(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 440
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-ne v0, v1, :cond_5

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 444
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    .line 443
    invoke-static {v1, v3, v2}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap3(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 445
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    .line 447
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap0(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 459
    :cond_4
    :goto_2
    const-string/jumbo v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 461
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    .line 459
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->-get5(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    goto :goto_1

    .line 456
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 457
    const v2, 0x7f1102d5

    .line 456
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
