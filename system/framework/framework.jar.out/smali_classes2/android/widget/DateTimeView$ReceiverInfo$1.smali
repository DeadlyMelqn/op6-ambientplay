.class Landroid/widget/DateTimeView$ReceiverInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/DateTimeView$ReceiverInfo;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/DateTimeView$ReceiverInfo;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    .line 408
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 411
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-virtual {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->getSoonestUpdateTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 417
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-virtual {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->updateAll()V

    .line 422
    return-void
.end method
