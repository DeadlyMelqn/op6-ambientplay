.class Lcom/android/systemui/qs/tiles/GameModeTile$2;
.super Ljava/lang/Object;
.source "GameModeTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/GameModeTile;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/GameModeTile;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/GameModeTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->val$enabled:Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/GameModeTile;->-get1(Lcom/android/systemui/qs/tiles/GameModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_mode_status_manual"

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->val$enabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "force-on"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 87
    return-void

    .line 86
    :cond_0
    const-string/jumbo v0, "force-off"

    goto :goto_0
.end method
