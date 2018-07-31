.class Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeNetWorkAccContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    .line 401
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 402
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get6(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 407
    const-string/jumbo v2, "game_mode_network_acceleration"

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 406
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->-wrap0(Lcom/android/server/OemSceneModeController;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    invoke-static {}, Lcom/android/server/OemSceneModeController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[gameMode netboost] network_acceleration switch changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 412
    return-void
.end method
