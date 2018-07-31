.class Lcom/android/server/policy/OemPhoneWindowManager$6;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$6;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 580
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 582
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "mEngineerModeHandleReceiver -- onReceive -- entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$6;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mLidControlsSleep:Z

    .line 586
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "Receive ACTION_DISABLE_LIDCONTROLSSLEEP"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_0
    return-void

    .line 587
    :cond_0
    const-string/jumbo v1, "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$6;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mLidControlsSleep:Z

    .line 589
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "Receive ACTION_ENABLE_LIDCONTROLSSLEEP"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_1
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "mEngineerModeHandleReceiver Receive invalid Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
