.class Lcom/android/systemui/settings/BrightnessController$2;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get3(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 200
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get17(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 202
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "StatusBar.BrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStopListeningRunnable mTracking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get14(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string/jumbo v4, " mAutomatic: "

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get0(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    const-string/jumbo v4, " mNewController: "

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get13(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get14(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get13(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get18(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    add-int v1, v2, v3

    .line 210
    .local v1, "val":I
    new-instance v2, Lcom/android/systemui/settings/BrightnessController$2$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/settings/BrightnessController$2$1;-><init>(Lcom/android/systemui/settings/BrightnessController$2;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 217
    new-instance v2, Lcom/android/systemui/settings/BrightnessController$2$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/settings/BrightnessController$2$2;-><init>(Lcom/android/systemui/settings/BrightnessController$2;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 243
    .end local v1    # "val":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/settings/BrightnessController;->-set3(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 246
    :cond_1
    return-void

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get0(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get18(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    add-int v1, v2, v3

    .line 226
    .restart local v1    # "val":I
    new-instance v2, Lcom/android/systemui/settings/BrightnessController$2$3;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/settings/BrightnessController$2$3;-><init>(Lcom/android/systemui/settings/BrightnessController$2;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 234
    .end local v1    # "val":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get18(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v2, v3

    .line 235
    .local v0, "adj":F
    new-instance v2, Lcom/android/systemui/settings/BrightnessController$2$4;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/settings/BrightnessController$2$4;-><init>(Lcom/android/systemui/settings/BrightnessController$2;F)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
