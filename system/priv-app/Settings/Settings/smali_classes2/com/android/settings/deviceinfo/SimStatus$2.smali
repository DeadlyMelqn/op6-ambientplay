.class Lcom/android/settings/deviceinfo/SimStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    .line 186
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get3(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get6(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 192
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get6(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 193
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get6(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/SimStatus;->-get7(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 194
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get6(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get3(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 196
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 197
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v7

    .line 196
    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 198
    .local v3, "simState":I
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get6(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v9}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/oneplus/settings/utils/OPSNSUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap0(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "i":I
    .end local v3    # "simState":I
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 203
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 204
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    .line 205
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v7}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/settings/deviceinfo/SimStatus;->-set1(Lcom/android/settings/deviceinfo/SimStatus;Ljava/util/List;)Ljava/util/List;

    .line 207
    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get3(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get3(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    :goto_2
    invoke-static {v7, v5}, Lcom/android/settings/deviceinfo/SimStatus;->-set2(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 208
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    .line 209
    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/SimStatus;->-get5(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 208
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/settings/deviceinfo/SimStatus;->-set0(Lcom/android/settings/deviceinfo/SimStatus;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 210
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get1(Lcom/android/settings/deviceinfo/SimStatus;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get8(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 211
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap5(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 213
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/SimStatus;->-get1(Lcom/android/settings/deviceinfo/SimStatus;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 214
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/SimStatus;->-get1(Lcom/android/settings/deviceinfo/SimStatus;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap6(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    .line 215
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap2(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 216
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get8(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/SimStatus;->-get2(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v7

    .line 217
    const/16 v8, 0x141

    .line 216
    invoke-virtual {v5, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 220
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/SimStatus;->-get4(Lcom/android/settings/deviceinfo/SimStatus;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/SimStatus;->-get0(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    .line 222
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v9, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 221
    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "getLatestIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 227
    const-string/jumbo v8, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 226
    invoke-virtual {v5, v1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 203
    .end local v1    # "getLatestIntent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    move-object v5, v6

    .line 207
    goto/16 :goto_2

    .line 232
    :cond_3
    return-void
.end method
