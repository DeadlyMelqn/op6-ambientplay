.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/TaskPersister;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 648
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method private processNextItem()V
    .locals 28

    .prologue
    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 702
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v21, v24, v26

    if-eqz v21, :cond_0

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1f4

    add-long v24, v24, v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    .line 709
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-eqz v21, :cond_1

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 722
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 724
    .local v16, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 727
    .local v18, "now":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v24

    cmp-long v21, v18, v24

    if-gez v21, :cond_3

    .line 731
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    sub-long v24, v24, v18

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 734
    :goto_2
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v18

    goto :goto_1

    :cond_3
    monitor-exit v22

    .line 740
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v15, v16

    .line 741
    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 742
    .local v15, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 743
    .local v12, "filePath":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/TaskPersister;->-wrap0(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 744
    const-string/jumbo v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error while creating images directory for file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void

    .line 701
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v18    # "now":J
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 747
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v18    # "now":J
    :cond_4
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 749
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 751
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 752
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v14, "imageFile":Ljava/io/FileOutputStream;
    :try_start_6
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 756
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 795
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_5
    :goto_3
    return-void

    .line 753
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catch_1
    move-exception v8

    .line 754
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string/jumbo v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "saveImage: unable to save "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 756
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 755
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v21

    .line 756
    :goto_5
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 755
    throw v21

    .line 758
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_6
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 760
    const/16 v17, 0x0

    .line 761
    .local v17, "stringWriter":Ljava/io/StringWriter;
    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v20, v0

    .line 763
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    monitor-enter v22

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 764
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v21, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v21, :cond_7

    .line 768
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v17

    .end local v17    # "stringWriter":Ljava/io/StringWriter;
    :cond_7
    :goto_6
    monitor-exit v22

    .line 763
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 774
    if-eqz v17, :cond_5

    .line 776
    const/4 v11, 0x0

    .line 777
    .local v11, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 779
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_a
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v21, Ljava/io/File;

    .line 780
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v22

    .line 781
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "_task.xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 779
    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 782
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_b
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    move-result-object v11

    .line 783
    .local v11, "file":Ljava/io/FileOutputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 784
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 785
    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    .line 786
    .end local v11    # "file":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 787
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    :goto_7
    if-eqz v11, :cond_8

    .line 788
    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 790
    :cond_8
    const-string/jumbo v21, "TaskPersister"

    .line 791
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unable to open "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " for persisting. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 790
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 763
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v17    # "stringWriter":Ljava/io/StringWriter;
    :catchall_2
    move-exception v21

    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v21

    .line 786
    .end local v17    # "stringWriter":Ljava/io/StringWriter;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v11, "file":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 769
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v17    # "stringWriter":Ljava/io/StringWriter;
    :catch_4
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 770
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_6

    .line 755
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v17    # "stringWriter":Ljava/io/StringWriter;
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_3
    move-exception v21

    move-object v13, v14

    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 753
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 732
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_7
    move-exception v9

    .restart local v9    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 653
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 654
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 660
    .local v0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    monitor-enter v6

    .line 661
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v5, v5, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "probablyDone":Z
    monitor-exit v6

    .line 663
    if-eqz v1, :cond_4

    .line 665
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 666
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 668
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 669
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 672
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 673
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v5, :cond_0

    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_2

    .line 674
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 673
    if-eqz v5, :cond_2

    .line 676
    :cond_1
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 668
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 660
    .end local v1    # "probablyDone":Z
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "taskNdx":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 682
    .restart local v1    # "probablyDone":Z
    .restart local v4    # "taskNdx":I
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 683
    iget-object v7, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v7}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v7

    .line 682
    invoke-virtual {v5, v0, v7}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 666
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 685
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5, v0}, Lcom/android/server/am/TaskPersister;->-wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 687
    .end local v4    # "taskNdx":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-wrap3(Lcom/android/server/am/TaskPersister;)V

    .line 689
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->processNextItem()V

    goto :goto_0

    .line 666
    :catchall_1
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method
