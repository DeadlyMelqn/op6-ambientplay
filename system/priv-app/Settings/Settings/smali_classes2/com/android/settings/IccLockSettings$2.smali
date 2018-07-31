.class Lcom/android/settings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    .line 139
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v7}, Lcom/android/settings/IccLockSettings;->-get0(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v8}, Lcom/android/settings/IccLockSettings;->-get0(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    :cond_0
    const-string/jumbo v7, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 147
    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v7}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 148
    const-string/jumbo v8, "phone"

    .line 147
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 149
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 150
    .local v2, "numSims":I
    const/4 v7, 0x1

    if-le v2, v7, :cond_3

    .line 153
    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v7}, Lcom/android/settings/IccLockSettings;->-get1(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    .line 155
    .local v3, "oldTab":I
    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v7}, Lcom/android/settings/IccLockSettings;->-get1(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 157
    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v7}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 156
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 158
    .local v4, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 159
    invoke-virtual {v4, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 161
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v7}, Lcom/android/settings/IccLockSettings;->-get1(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 162
    if-nez v5, :cond_1

    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v7}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 164
    add-int/lit8 v12, v1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 163
    const v12, 0x7f0f0f06

    .line 162
    invoke-virtual {v7, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 161
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lcom/android/settings/IccLockSettings;->-wrap0(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 168
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v7}, Lcom/android/settings/IccLockSettings;->-get1(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 173
    .end local v1    # "i":I
    .end local v2    # "numSims":I
    .end local v3    # "oldTab":I
    .end local v4    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    return-void
.end method
