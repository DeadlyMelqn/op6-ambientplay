.class Lcom/android/systemui/statusbar/phone/StatusBar$16;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4064
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
    .line 4068
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4069
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4070
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 4071
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz v3, :cond_0

    .line 4072
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 4074
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;->getSendingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4075
    const/4 v1, 0x0

    .line 4076
    .local v1, "flags":I
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4077
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4078
    const/4 v1, 0x2

    .line 4080
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 4090
    .end local v1    # "flags":I
    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 4083
    :cond_3
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4084
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap5(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4085
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    goto :goto_0

    .line 4087
    :cond_4
    const-string/jumbo v3, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4088
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get15(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    goto :goto_0
.end method