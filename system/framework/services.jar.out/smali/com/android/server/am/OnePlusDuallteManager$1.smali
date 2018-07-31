.class Lcom/android/server/am/OnePlusDuallteManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusDuallteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusDuallteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusDuallteManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    .line 201
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
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 203
    if-nez p2, :cond_0

    .line 204
    const-string/jumbo v6, "OnePlusDuallteManager"

    const-string/jumbo v7, "# mGeneralReceiver # onReceive # intent is null, return"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 208
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "OnePlusDuallteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v6, "com.Duallte.action.debug"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    const-string/jumbo v6, "code"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "code":Ljava/lang/String;
    const-string/jumbo v6, "OnePlusDuallteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string/jumbo v6, "dump"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 215
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap1(Lcom/android/server/am/OnePlusDuallteManager;)V

    .line 216
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap2(Lcom/android/server/am/OnePlusDuallteManager;)V

    .line 246
    .end local v1    # "code":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 217
    .restart local v1    # "code":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "dumpTest"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 218
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap7(Lcom/android/server/am/OnePlusDuallteManager;)V

    goto :goto_0

    .line 220
    .end local v1    # "code":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 221
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-get3(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 222
    .local v3, "numSlots":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 223
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-get3(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    .line 224
    .local v4, "sim1State_new":I
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-get3(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    .line 225
    .local v5, "sim2State_new":I
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->-get1()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 226
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->-get2()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 227
    :cond_4
    sget-boolean v6, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "OnePlusDuallteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "# mGeneralReceiver # onReceive # numSlots = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-get3(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-set0(I)I

    .line 229
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-get3(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-set1(I)I

    .line 230
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap3(Lcom/android/server/am/OnePlusDuallteManager;)V

    goto/16 :goto_0

    .line 233
    .end local v3    # "numSlots":I
    .end local v4    # "sim1State_new":I
    .end local v5    # "sim2State_new":I
    :cond_6
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 235
    .local v2, "info":Landroid/net/NetworkInfo;
    sget-boolean v6, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "OnePlusDuallteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "# mGeneralReceiver # onReceive # CONNECTIVITY_ACTION info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_7
    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_1

    .line 238
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v6, v7, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 239
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap4(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 241
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap4(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/Boolean;)V

    goto/16 :goto_0
.end method
