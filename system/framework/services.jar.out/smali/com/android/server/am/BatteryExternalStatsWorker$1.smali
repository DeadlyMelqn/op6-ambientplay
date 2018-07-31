.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v5

    .line 166
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get3(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v3

    .line 167
    .local v3, "updateFlags":I
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get0(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "reason":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get2(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get2(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    .line 169
    .local v2, "uidsToRemove":[I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-set2(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    .line 170
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-set1(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get2(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->clear()V

    .line 172
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-set0(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 175
    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get4(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 180
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6, v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->-wrap0(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 189
    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get1(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    monitor-enter v5

    .line 190
    :try_start_2
    array-length v6, v2

    :goto_1
    if-ge v4, v6, :cond_1

    aget v1, v2, v4

    .line 191
    .local v1, "uid":I
    iget-object v7, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get1(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    .end local v1    # "uid":I
    .end local v2    # "uidsToRemove":[I
    :cond_0
    :try_start_3
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v2    # "uidsToRemove":[I
    goto :goto_0

    .line 165
    .end local v0    # "reason":Ljava/lang/String;
    .end local v2    # "uidsToRemove":[I
    .end local v3    # "updateFlags":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 181
    .restart local v0    # "reason":Ljava/lang/String;
    .restart local v2    # "uidsToRemove":[I
    .restart local v3    # "updateFlags":I
    :catchall_1
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 175
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    .line 194
    return-void

    .line 189
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4
.end method
