.class Lcom/android/server/OemSceneModeController$6;
.super Landroid/os/CountDownTimer;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$6;->this$0:Lcom/android/server/OemSceneModeController;

    .line 1125
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$6;->this$0:Lcom/android/server/OemSceneModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->-set0(Lcom/android/server/OemSceneModeController;Z)Z

    .line 1129
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$6;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-get8(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$6;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get2(Lcom/android/server/OemSceneModeController;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1130
    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] To make up a enabled >>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$6;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get2(Lcom/android/server/OemSceneModeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<< toast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$6;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$6;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get2(Lcom/android/server/OemSceneModeController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->-wrap12(Lcom/android/server/OemSceneModeController;Z)V

    .line 1133
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 1136
    return-void
.end method
