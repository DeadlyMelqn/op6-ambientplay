.class Lcom/android/server/am/OnePlusNetCgroupSetManager$2;
.super Landroid/app/IProcessObserver$Stub;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 187
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const/4 v9, -0x1

    .line 191
    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v5, "OnePlusNetCgroupSetManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[netCgroupSet] onForegroundActivitiesChanged pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |foregroundActivities:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |mFrontActivityUids:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v7, v7, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v5, v9}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-set0(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    .line 193
    const-string/jumbo v1, ""

    .line 194
    .local v1, "packageName_t":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 195
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap1(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 196
    .local v0, "mFrontActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 197
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5, v7}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-set0(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    .line 198
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 201
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get0(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 202
    :cond_3
    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "OnePlusNetCgroupSetManager"

    const-string/jumbo v7, "[netCgroupSet] info is error, return"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    monitor-exit v6

    .line 194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    return-void

    .line 201
    :cond_5
    :try_start_1
    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v6

    .line 194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 207
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v6, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    monitor-enter v6

    .line 208
    if-eqz p3, :cond_9

    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 209
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 210
    .local v4, "tempUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "temp$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 211
    .local v2, "temp":I
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get0(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v5

    if-eq v2, v5, :cond_6

    .line 212
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 207
    .end local v2    # "temp":I
    .end local v3    # "temp$iterator":Ljava/util/Iterator;
    .end local v4    # "tempUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 194
    .end local v0    # "mFrontActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_1
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 215
    .restart local v0    # "mFrontActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "temp$iterator":Ljava/util/Iterator;
    .restart local v4    # "tempUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_7
    :try_start_3
    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v5, :cond_9

    :cond_8
    const-string/jumbo v5, "OnePlusNetCgroupSetManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[netCgroupSet] current is launcher, mFrontActivityUids:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v8, v8, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "temp$iterator":Ljava/util/Iterator;
    .end local v4    # "tempUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_9
    monitor-exit v6

    .line 219
    if-eqz p3, :cond_d

    .line 221
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 222
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_a
    :goto_1
    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v5, :cond_b

    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v5, :cond_c

    :cond_b
    const-string/jumbo v5, "OnePlusNetCgroupSetManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[netCgroupSet] after onForegroundActivitiesChanged mFrontActivityUids:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v7, v7, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_c
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v5, p3, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap9(Lcom/android/server/am/OnePlusNetCgroupSetManager;ZI)V

    .line 233
    return-void

    .line 224
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get0(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v5

    if-eq v5, p2, :cond_a

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 225
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get0(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v5

    if-eq v5, v9, :cond_a

    .line 227
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-get0(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onProcessDied(II)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 238
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[netCgroupSet] onProcessDied pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 240
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 247
    return-void

    .line 237
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
