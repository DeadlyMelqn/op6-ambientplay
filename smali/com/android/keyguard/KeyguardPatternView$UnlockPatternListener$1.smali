.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iput p2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 288
    const/4 v1, 0x4

    .line 287
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 290
    :cond_0
    return-void
.end method

.method public onChecked(ZI)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 272
    const/4 v1, 0x4

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-set0(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 276
    if-nez p1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    const/4 v2, 0x0

    .line 278
    const/4 v3, 0x1

    .line 277
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->-wrap0(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V

    .line 280
    :cond_1
    return-void
.end method

.method public onEarlyMatched()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 262
    const/4 v1, 0x3

    .line 261
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->-wrap0(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V

    .line 266
    return-void
.end method
