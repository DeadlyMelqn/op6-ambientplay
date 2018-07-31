.class Lcom/android/server/usage/UserUsageStatsService$3;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJZ)Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
        "<",
        "Landroid/app/usage/UsageEvents$Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$beginTime:J

.field final synthetic val$endTime:J

.field final synthetic val$names:Landroid/util/ArraySet;

.field final synthetic val$obfuscateInstantApps:Z


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJZLandroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UserUsageStatsService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$3;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$beginTime:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$endTime:J

    iput-boolean p6, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$obfuscateInstantApps:Z

    iput-object p7, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$names:Landroid/util/ArraySet;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 8
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "mutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p3, "accumulatedResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v4, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$beginTime:J

    invoke-virtual {v4, v6, v7}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v3

    .line 325
    .local v3, "startIndex":I
    if-gez v3, :cond_1

    .line 326
    return-void

    .line 329
    :cond_1
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 330
    .local v2, "size":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 331
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$endTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 332
    return-void

    .line 335
    :cond_2
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 336
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iget-boolean v4, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$obfuscateInstantApps:Z

    if-eqz v4, :cond_3

    .line 337
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    .line 339
    :cond_3
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$names:Landroid/util/ArraySet;

    iget-object v5, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v4, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 341
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$3;->val$names:Landroid/util/ArraySet;

    iget-object v5, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_4
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_5
    return-void
.end method
