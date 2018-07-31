.class Lcom/android/server/power/Notifier$8;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/power/Notifier$8;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$8;->val$why:I

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 497
    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v6, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 498
    .local v6, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 499
    iget v1, p0, Lcom/android/server/power/Notifier$8;->val$why:I

    invoke-virtual {v6, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 500
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 501
    iget v1, p0, Lcom/android/server/power/Notifier$8;->val$why:I

    const-wide/16 v2, 0x0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 502
    iget-object v0, p0, Lcom/android/server/power/Notifier$8;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-get2(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$8;->val$why:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->finishedGoingToSleep(I)V

    .line 503
    return-void
.end method
