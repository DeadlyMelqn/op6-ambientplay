.class Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$Alignment;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$Alignment;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/AlarmManagerService$Alignment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 602
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 603
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 606
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x8

    .line 610
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v1, :cond_0

    .line 612
    const-string/jumbo v1, "AlarmManager_ALIGNMENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->-set0(Lcom/android/server/AlarmManagerService$Alignment;Z)Z

    .line 616
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Alignment;->-get0(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 617
    :cond_2
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->-set0(Lcom/android/server/AlarmManagerService$Alignment;Z)Z

    .line 619
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Alignment;->-get0(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService$Alignment;->-get0(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 620
    const-wide/16 v4, 0xbb8

    .line 619
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
