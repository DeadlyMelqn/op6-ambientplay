.class Lcom/android/keyguard/KeyguardSimPinView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$2;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$2;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardSimPinView$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    .line 342
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

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->-set1(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->-get1(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->-get1(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 350
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    if-eqz v0, :cond_3

    move v0, v1

    .line 349
    :goto_0
    invoke-virtual {v3, v1, v0}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(ZZ)V

    .line 351
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    if-nez v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->-set1(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->-set2(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->-set3(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 359
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPinView;->-get3(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v2

    .line 358
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 393
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardSimPinView;->-set0(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 396
    return-void

    :cond_3
    move v0, v2

    .line 350
    goto :goto_0

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->-set3(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 366
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    if-ne v0, v1, :cond_6

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 369
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 370
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    .line 369
    invoke-static {v1, v3, v2}, Lcom/android/keyguard/KeyguardSimPinView;->-wrap1(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->-wrap0(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 388
    :cond_5
    :goto_2
    const-string/jumbo v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    const-string/jumbo v2, " attemptsRemaining="

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 386
    const v2, 0x7f1102d4

    .line 385
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
