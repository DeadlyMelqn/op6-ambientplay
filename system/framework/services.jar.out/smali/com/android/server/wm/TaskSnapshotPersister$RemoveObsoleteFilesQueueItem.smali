.class Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveObsoleteFilesQueueItem"
.end annotation


# instance fields
.field private final mPersistentTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningUserIds:[I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p3, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 434
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    .line 435
    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    .line 436
    return-void
.end method


# virtual methods
.method getTaskId(Ljava/lang/String;)I
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 462
    const-string/jumbo v3, ".proto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ".jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 463
    return v5

    .line 465
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 466
    .local v1, "end":I
    if-ne v1, v5, :cond_1

    .line 467
    return v5

    .line 469
    :cond_1
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "_reduced"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "_reduced"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v5
.end method

.method write()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 441
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v6}, Lcom/android/server/wm/TaskSnapshotPersister;->-get1(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 442
    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v6}, Lcom/android/server/wm/TaskSnapshotPersister;->-get3(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "newPersistedTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    monitor-exit v8

    .line 444
    iget-object v9, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    array-length v10, v9

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_3

    aget v5, v9, v8

    .line 445
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v6, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->-wrap1(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v0

    .line 446
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 444
    :cond_0
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 441
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "newPersistedTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "userId":I
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 450
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "files":[Ljava/lang/String;
    .restart local v3    # "newPersistedTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "userId":I
    :cond_1
    array-length v11, v2

    move v6, v7

    :goto_1
    if-ge v6, v11, :cond_0

    aget-object v1, v2, v6

    .line 451
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->getTaskId(Ljava/lang/String;)I

    move-result v4

    .line 452
    .local v4, "taskId":I
    iget-object v12, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 453
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    .line 452
    if-eqz v12, :cond_2

    .line 454
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 450
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 458
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v4    # "taskId":I
    .end local v5    # "userId":I
    :cond_3
    return-void
.end method
