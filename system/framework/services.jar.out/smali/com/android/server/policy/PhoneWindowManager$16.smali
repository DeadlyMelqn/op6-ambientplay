.class Lcom/android/server/policy/PhoneWindowManager$16;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7673
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
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 7675
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7676
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7677
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7678
    .local v1, "state":I
    if-ne v1, v5, :cond_1

    .line 7679
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->-set2(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 7683
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7684
    const-string/jumbo v3, "wfd_UIBC_rot"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 7683
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-set3(Lcom/android/server/policy/PhoneWindowManager;I)I

    .line 7685
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 7687
    .end local v1    # "state":I
    :cond_0
    return-void

    .line 7681
    .restart local v1    # "state":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-set2(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0
.end method
