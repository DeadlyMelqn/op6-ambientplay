.class Lcom/android/server/am/OnePlusHighPowerDetector$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->registerNotificationCancelReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$2;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 568
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 571
    const-string/jumbo v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 572
    .local v0, "type":I
    const-string/jumbo v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BgDetect] Notification Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is canceled by user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-nez v0, :cond_1

    .line 574
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$2;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$2;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    goto :goto_0
.end method
