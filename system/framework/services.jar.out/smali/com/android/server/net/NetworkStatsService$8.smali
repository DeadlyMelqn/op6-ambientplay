.class Lcom/android/server/net/NetworkStatsService$8;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAccessLevel:I

.field private final mCallingPackage:Ljava/lang/String;

.field private final mCallingUid:I

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    .line 539
    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    .line 541
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    .line 543
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    .line 542
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    .line 1
    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get6(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 642
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 643
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 644
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v3, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    .line 575
    iget v9, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 574
    invoke-static/range {v1 .. v9}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    iget v4, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    .line 588
    iget v5, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v1, p1

    move v3, p2

    .line 587
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 614
    if-nez p4, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    .line 616
    iget v12, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v13, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    .line 615
    const/4 v3, 0x0

    .line 616
    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 615
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    .line 619
    iget v12, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v13, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    .line 618
    const/4 v3, 0x0

    .line 619
    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 618
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 628
    if-nez p4, :cond_0

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v3

    .line 630
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    .line 629
    const/4 v5, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    return-object v2

    .line 631
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v3

    .line 633
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    .line 632
    const/4 v5, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    return-object v2

    .line 635
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 636
    const-string/jumbo v4, " cannot access tag information from a different uid"

    .line 635
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRelevantUids()[I
    .locals 2

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 595
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 596
    iget v6, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    .line 595
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v9

    .line 597
    .local v9, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 599
    iget v6, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    .line 598
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v10

    .line 600
    .local v10, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v9, v10}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v10    # "tagStats":Landroid/net/NetworkStats;
    :cond_0
    return-object v9

    .line 603
    .end local v9    # "stats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v8

    .line 605
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "NetworkStats"

    const-string/jumbo v1, "NullPointerException in getSummaryForAllUid"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    throw v8
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v3, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    .line 582
    iget v9, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 581
    invoke-static/range {v1 .. v9}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
