.class Lcom/android/server/policy/OpGlobalActions$1;
.super Landroid/content/BroadcastReceiver;
.source "OpGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OpGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    .line 126
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
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 129
    if-eqz v2, :cond_3

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-get0(Lcom/android/server/policy/OpGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const-string/jumbo v2, "OpGlobalActions"

    const-string/jumbo v3, "Device is shutting down... don\'t dismiss animation dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 137
    :cond_1
    const-string/jumbo v2, "reason"

    .line 136
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-get1(Lcom/android/server/policy/OpGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/OpGlobalActions$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OpGlobalActions$1$1;-><init>(Lcom/android/server/policy/OpGlobalActions$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const-string/jumbo v2, "OpGlobalActions"

    const-string/jumbo v3, "Device unlocked, exit."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-get1(Lcom/android/server/policy/OpGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/OpGlobalActions$1$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OpGlobalActions$1$2;-><init>(Lcom/android/server/policy/OpGlobalActions$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
