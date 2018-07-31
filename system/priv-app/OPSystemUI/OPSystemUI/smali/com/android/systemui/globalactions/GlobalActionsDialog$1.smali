.class Lcom/android/systemui/globalactions/GlobalActionsDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1107
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1111
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1110
    if-eqz v2, :cond_2

    .line 1112
    :cond_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get8(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1125
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1116
    :cond_2
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    const-string/jumbo v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1120
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get10(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v2

    .line 1119
    if-eqz v2, :cond_1

    .line 1121
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set2(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    .line 1122
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap0(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V

    goto :goto_0
.end method
