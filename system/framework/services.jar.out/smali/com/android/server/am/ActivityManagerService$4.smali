.class Lcom/android/server/am/ActivityManagerService$4;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2844
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method

.method static synthetic lambda$-com_android_server_am_ActivityManagerService$4_121858(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 6
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    const/4 v0, 0x0

    .line 2876
    iget-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2849
    const/16 v30, 0x0

    .line 2850
    .local v30, "isDelayMessage":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2851
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2852
    .local v30, "isDelayMessage":Z
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_0

    .line 2853
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "COLLECT_PSS_BG_MSG  isDelay message"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    .end local v30    # "isDelayMessage":Z
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2986
    :goto_0
    return-void

    .line 2858
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 2861
    .local v42, "start":J
    if-nez v30, :cond_5

    .line 2863
    const/16 v33, 0x0

    .line 2864
    .local v33, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v2, :cond_1

    .line 2866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2867
    new-instance v33, Lcom/android/internal/util/MemInfoReader;

    .end local v33    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-direct/range {v33 .. v33}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 2864
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2870
    if-eqz v33, :cond_5

    .line 2871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2872
    const-wide/16 v12, 0x0

    .line 2874
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 2875
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v4, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;->$INST$0:Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;

    invoke-virtual {v2, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v41

    .local v41, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v3

    .line 2879
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v14

    .line 2880
    .local v14, "N":I
    const/16 v31, 0x0

    .local v31, "j":I
    :goto_1
    move/from16 v0, v31

    if-ge v0, v14, :cond_3

    .line 2881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2882
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-ltz v2, :cond_2

    monitor-exit v3

    .line 2880
    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 2864
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v31    # "j":I
    .end local v41    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2874
    .restart local v12    # "nativeTotalPss":J
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v14    # "N":I
    .restart local v31    # "j":I
    .restart local v41    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :cond_2
    monitor-exit v3

    .line 2887
    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v2

    add-long/2addr v12, v2

    goto :goto_2

    .line 2881
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2889
    :cond_3
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2890
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2891
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Collected native and kernel memory in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v42

    .line 2891
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2892
    const-string/jumbo v4, "ms"

    .line 2891
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    :cond_4
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v26

    .line 2894
    .local v26, "cachedKb":J
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v28

    .line 2895
    .local v28, "freeKb":J
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v46

    .line 2896
    .local v46, "zramKb":J
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v34

    .line 2897
    .local v34, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v2, v2, v26

    const-wide/16 v4, 0x400

    mul-long v4, v4, v28

    const-wide/16 v6, 0x400

    mul-long v6, v6, v46

    .line 2898
    const-wide/16 v8, 0x400

    mul-long v8, v8, v34

    const-wide/16 v10, 0x400

    mul-long/2addr v10, v12

    .line 2897
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v4, v26

    move-wide/from16 v6, v28

    move-wide/from16 v8, v46

    move-wide/from16 v10, v34

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v15

    .line 2890
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2905
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v26    # "cachedKb":J
    .end local v28    # "freeKb":J
    .end local v31    # "j":I
    .end local v34    # "kernelKb":J
    .end local v41    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v46    # "zramKb":J
    :cond_5
    const/16 v39, 0x0

    .line 2908
    .local v39, "num":I
    const/16 v32, 0x0

    .line 2910
    .local v32, "k":I
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v44, v0

    .line 2918
    .local v44, "tmp":[J
    :cond_6
    :goto_3
    const/16 v2, 0xf

    move/from16 v0, v32

    if-lt v0, v2, :cond_8

    .line 2919
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v38

    .line 2920
    .local v38, "msg2":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v38

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2921
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3a98

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2923
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_7

    .line 2924
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "COLLECT_PSS_BG_MSG delay getpss"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :cond_7
    return-void

    .line 2890
    .end local v32    # "k":I
    .end local v38    # "msg2":Landroid/os/Message;
    .end local v39    # "num":I
    .end local v44    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v31    # "j":I
    .restart local v41    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :catchall_3
    move-exception v2

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2928
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v31    # "j":I
    .end local v41    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v32    # "k":I
    .restart local v39    # "num":I
    .restart local v44    # "tmp":[J
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 2930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    .line 2931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Collected PSS of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " processes in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2932
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v42

    .line 2931
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2932
    const-string/jumbo v5, "ms"

    .line 2931
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2930
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit v3

    .line 2928
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2934
    return-void

    .line 2936
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ProcessRecord;

    .line 2937
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    move/from16 v17, v0

    .line 2938
    .local v17, "procState":I
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v36, v0

    .line 2939
    .local v36, "lastPssTime":J
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_d

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_d

    .line 2940
    const-wide/16 v4, 0x3e8

    add-long v4, v4, v36

    .line 2941
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2940
    cmp-long v2, v4, v6

    if-gez v2, :cond_d

    .line 2942
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v40, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v40, "pid":I
    :goto_4
    monitor-exit v3

    .line 2928
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2948
    if-eqz v16, :cond_6

    .line 2949
    add-int/lit8 v32, v32, 0x1

    .line 2950
    const/4 v2, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v44

    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v18

    .line 2951
    .local v18, "pss":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2952
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-eqz v2, :cond_c

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_c

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_c

    .line 2953
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v40

    if-ne v2, v0, :cond_c

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v2, v4, v36

    if-nez v2, :cond_c

    .line 2954
    add-int/lit8 v39, v39, 0x1

    .line 2955
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    aget-wide v20, v44, v2

    const/4 v2, 0x1

    aget-wide v22, v44, v2

    .line 2956
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 2955
    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_c
    monitor-exit v3

    .line 2951
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3

    .line 2944
    .end local v18    # "pss":J
    .end local v40    # "pid":I
    .restart local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_d
    const/16 v16, 0x0

    .line 2945
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v40, 0x0

    .restart local v40    # "pid":I
    goto :goto_4

    .line 2928
    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "procState":I
    .end local v36    # "lastPssTime":J
    .end local v40    # "pid":I
    :catchall_4
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2951
    .restart local v17    # "procState":I
    .restart local v18    # "pss":J
    .restart local v36    # "lastPssTime":J
    .restart local v40    # "pid":I
    :catchall_5
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2966
    .end local v17    # "procState":I
    .end local v18    # "pss":J
    .end local v32    # "k":I
    .end local v36    # "lastPssTime":J
    .end local v39    # "num":I
    .end local v40    # "pid":I
    .end local v42    # "start":J
    .end local v44    # "tmp":[J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v2}, Lcom/android/server/am/IEmbryoManager;->forceUpdateOnlineConfig()V

    goto/16 :goto_0

    .line 2974
    :pswitch_2
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PERSIST_CPU_TRACKER"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    :cond_e
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTracker;->tryPersistToDisk()V

    goto/16 :goto_0

    .line 2979
    :pswitch_3
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->getOHPD()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp()I

    move-result v2

    sput v2, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    .line 2980
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PEEK_SYSTEM_TEMP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
