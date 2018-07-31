.class Lcom/android/server/am/RestartProcessManager$1;
.super Ljava/lang/Thread;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/RestartProcessManager;->writeRecord(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/RestartProcessManager;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/android/server/am/RestartProcessManager;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/RestartProcessManager;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    iput-wide p3, p0, Lcom/android/server/am/RestartProcessManager$1;->val$now:J

    .line 295
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/RestartProcessManager$1;->val$now:J

    invoke-static {v14, v15}, Lcom/android/server/am/RestartProcessManager;->-set4(J)J

    .line 299
    const/4 v11, 0x0

    .line 300
    .local v11, "stream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager;->-get3(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "record.txt"

    invoke-direct {v3, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    .local v3, "currentFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 305
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager;->-get3(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "record_backup.txt"

    invoke-direct {v2, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    .local v2, "backupFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 308
    :cond_0
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 311
    .end local v2    # "backupFile":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    new-instance v14, Landroid/util/AtomicFile;

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/RestartProcessManager;->-get3(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;

    move-result-object v16

    const-string/jumbo v17, "record.txt"

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v14, v15}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v13, v14}, Lcom/android/server/am/RestartProcessManager;->-set0(Lcom/android/server/am/RestartProcessManager;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager;->-get4(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11

    .line 314
    .local v11, "stream":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "HasWarmUp : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get7()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "hasWarmUp":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "WarmUpTime : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get8()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 316
    .local v12, "warmUpTime":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 317
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 320
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get5()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 321
    .local v9, "key":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get5()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 322
    .local v8, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "dr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 323
    .local v4, "dr":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get1(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get3(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v4, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set7(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 330
    .end local v4    # "dr":Lcom/android/server/am/RestartProcessManager$DayRecord;
    .end local v5    # "dr$iterator":Ljava/util/Iterator;
    .end local v7    # "hasWarmUp":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v11    # "stream":Ljava/io/FileOutputStream;
    .end local v12    # "warmUpTime":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 331
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v13, "RestartProcessManager"

    const-string/jumbo v14, "Error writing process statistics"

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager;->-get4(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager;->-set6(Z)Z

    .line 336
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 325
    .restart local v5    # "dr$iterator":Ljava/util/Iterator;
    .restart local v7    # "hasWarmUp":Ljava/lang/String;
    .restart local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "key$iterator":Ljava/util/Iterator;
    .restart local v11    # "stream":Ljava/io/FileOutputStream;
    .restart local v12    # "warmUpTime":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->toRecord()[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 333
    .end local v5    # "dr$iterator":Ljava/util/Iterator;
    .end local v7    # "hasWarmUp":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v11    # "stream":Ljava/io/FileOutputStream;
    .end local v12    # "warmUpTime":Ljava/lang/String;
    :catchall_0
    move-exception v13

    .line 334
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/server/am/RestartProcessManager;->-set6(Z)Z

    .line 333
    throw v13

    .line 327
    .restart local v7    # "hasWarmUp":Ljava/lang/String;
    .restart local v10    # "key$iterator":Ljava/util/Iterator;
    .restart local v11    # "stream":Ljava/io/FileOutputStream;
    .restart local v12    # "warmUpTime":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager;->-get4(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 329
    const-string/jumbo v13, "RestartProcessManager"

    const-string/jumbo v14, "Finishing writting old record"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager;->-set6(Z)Z

    goto :goto_2
.end method
