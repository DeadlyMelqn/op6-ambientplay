.class Lcom/android/server/am/OnePlusAppBootManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    .line 2061
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x3e8

    const/16 v9, 0x1f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2063
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v5, :cond_0

    .line 2064
    return-void

    .line 2067
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2068
    .local v0, "action":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2070
    :cond_1
    const-string/jumbo v5, "com.haha.action.test"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2071
    const-string/jumbo v5, "code"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2072
    .local v1, "code":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2073
    const-string/jumbo v5, "persist"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2074
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5, v10, v11}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap11(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 2138
    .end local v1    # "code":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 2075
    .restart local v1    # "code":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "prop_using_on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2076
    sput-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 2077
    const-string/jumbo v5, "persist.sys.appboot.using"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2078
    :cond_4
    const-string/jumbo v5, "prop_using_off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2079
    sput-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 2080
    const-string/jumbo v5, "persist.sys.appboot.using"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2081
    :cond_5
    const-string/jumbo v5, "prop_debug_on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2082
    sput-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 2083
    const-string/jumbo v5, "persist.sys.appboot.debug"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2084
    :cond_6
    const-string/jumbo v5, "prop_debug_off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2085
    sput-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 2086
    const-string/jumbo v5, "persist.sys.appboot.debug"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2087
    :cond_7
    const-string/jumbo v5, "prop_blacklist_on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2088
    sput-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 2089
    const-string/jumbo v5, "persist.sys.appboot.blacklist"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2090
    :cond_8
    const-string/jumbo v5, "prop_blacklist_off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2091
    sput-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 2092
    const-string/jumbo v5, "persist.sys.appboot.blacklist"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2093
    :cond_9
    const-string/jumbo v5, "dump"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2094
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap6(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2095
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap8(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_0

    .line 2096
    :cond_a
    const-string/jumbo v5, "dumplist"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2097
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap7(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_0

    .line 2098
    :cond_b
    const-string/jumbo v5, "dump_widget"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2099
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->-get6(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v6

    monitor-enter v6

    .line 2100
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->-get6(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2101
    .local v3, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "widgetpkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2099
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v4    # "pkg$iterator":Ljava/util/Iterator;
    :cond_c
    monitor-exit v6

    goto/16 :goto_0

    .line 2104
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    :cond_d
    const-string/jumbo v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2105
    const-string/jumbo v5, "@huge@dump"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2106
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap5(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_0

    .line 2107
    :cond_e
    const-string/jumbo v5, "@huge@add@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2108
    const-string/jumbo v5, "@huge@add@"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2109
    .restart local v3    # "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v6, 0x2

    invoke-static {v5, v3, v7, v6}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap13(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 2115
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_f
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2116
    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->-set0(Z)Z

    .line 2118
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v5, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 2119
    .local v2, "msg":Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 2120
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5, v2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2123
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->-get1()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2124
    new-array v5, v7, [I

    const/16 v6, 0x22

    aput v6, v5, v8

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    .line 2123
    if-eqz v5, :cond_10

    .line 2125
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessage(I)Z

    .line 2128
    :cond_10
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5, v10, v11}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap11(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto/16 :goto_0

    .line 2129
    .end local v2    # "msg":Landroid/os/Message;
    :cond_11
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2130
    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->-set0(Z)Z

    .line 2132
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v5, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 2133
    .restart local v2    # "msg":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 2134
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5, v2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2135
    .end local v2    # "msg":Landroid/os/Message;
    :cond_12
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2136
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap1(Lcom/android/server/am/OnePlusAppBootManager;)Z

    goto/16 :goto_0
.end method
