.class Lcom/android/systemui/statusbar/policy/MobileSignalController$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1146
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1151
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_0

    .line 1152
    return-void

    .line 1155
    :cond_0
    const-string/jumbo v4, "slot"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1156
    .local v1, "slotId":I
    const-string/jumbo v4, "subscription"

    .line 1157
    const/4 v5, -0x1

    .line 1156
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1158
    .local v3, "subId":I
    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1159
    .local v2, "state":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1160
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSIMstateChange state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1162
    const-string/jumbo v6, " slotId: "

    .line 1160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1163
    const-string/jumbo v6, " subId "

    .line 1160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1164
    const-string/jumbo v6, " getSimSlotIndex: "

    .line 1160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1164
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v6

    .line 1160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    if-eq v4, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 1167
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 1168
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v2, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    .line 1169
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap4(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 1184
    .end local v1    # "slotId":I
    .end local v2    # "state":Ljava/lang/String;
    .end local v3    # "subId":I
    :cond_3
    :goto_0
    return-void

    .line 1173
    :cond_4
    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1174
    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1175
    .restart local v2    # "state":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    .end local v2    # "state":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1180
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDefaultDataSubId()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSubId()I

    move-result v7

    if-ne v6, v7, :cond_6

    const/4 v5, 0x1

    :cond_6
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    .line 1181
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap4(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_0
.end method
