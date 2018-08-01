.class Lcom/android/systemui/recents/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 181
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeIfVisible(Z)Z

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const-string/jumbo v13, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v13}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_2
    const-string/jumbo v13, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v3

    .line 198
    .local v3, "currentUser":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v13}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 199
    const-string/jumbo v14, "overview_last_stack_active_time"

    const-wide/16 v16, -0x1

    .line 198
    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v10

    .line 200
    .local v10, "oldLastStackActiveTime":J
    const-wide/16 v14, -0x1

    cmp-long v13, v10, v14

    if-eqz v13, :cond_0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 202
    .local v4, "currentTime":J
    cmp-long v13, v4, v10

    if-gez v13, :cond_0

    .line 207
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    .line 208
    .local v8, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    .line 209
    .local v7, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v13, 0x0

    invoke-virtual {v8, v7, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadRawTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 210
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getRawTasks()Ljava/util/List;

    move-result-object v12

    .line 211
    .local v12, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 212
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 213
    .local v9, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-wide v14, v9, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v13, v4, v14

    if-gtz v13, :cond_3

    iget-wide v14, v9, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v13, v14, v10

    if-gez v13, :cond_3

    .line 215
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    iget v14, v9, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 211
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 218
    .end local v9    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    invoke-virtual {v13, v4, v5, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->updateOverviewLastStackActiveTimeAsync(JI)V

    .line 223
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->clearLastPipTime()V

    goto/16 :goto_0
.end method
