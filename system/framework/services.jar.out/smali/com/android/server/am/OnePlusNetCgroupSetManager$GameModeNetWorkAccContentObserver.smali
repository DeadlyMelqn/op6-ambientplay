.class Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;
.super Landroid/database/ContentObserver;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeNetWorkAccContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 569
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 570
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 574
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[netCgroupSet] GameModeNetWorkAccContentObserver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap2(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap2(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-set2(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    .line 576
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get2(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get1(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap8(Lcom/android/server/am/OnePlusNetCgroupSetManager;Z)V

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get2(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap8(Lcom/android/server/am/OnePlusNetCgroupSetManager;Z)V

    goto :goto_0
.end method
