.class public Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameModeManualContentObserver"
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
    .line 367
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    .line 368
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 369
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-get5(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get6(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 375
    const-string/jumbo v2, "game_mode_status_manual"

    const/4 v3, -0x2

    .line 374
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->-wrap1(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    invoke-static {}, Lcom/android/server/OemSceneModeController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] Game Manual changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2
    return-void
.end method