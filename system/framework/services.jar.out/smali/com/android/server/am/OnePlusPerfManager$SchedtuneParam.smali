.class public Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedtuneParam"
.end annotation


# instance fields
.field private mItemSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    .line 586
    return-void
.end method

.method private writeSchedtuneValue(ZLjava/lang/String;)Z
    .locals 15
    .param p1, "acquire"    # Z
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 606
    const/4 v5, 0x0

    .line 607
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 608
    .local v3, "f":Ljava/io/File;
    const/4 v9, 0x1

    .line 610
    .local v9, "ret":Z
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    monitor-enter v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :try_start_1
    iget-object v11, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .local v8, "item$iterator":Ljava/util/Iterator;
    move-object v4, v3

    .local v4, "f":Ljava/io/File;
    move-object v6, v5

    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .line 612
    .local v7, "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 613
    .end local v4    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 614
    const-string/jumbo v11, "OPPerf"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception : file not exits :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 615
    const/4 v11, 0x0

    .line 629
    if-eqz v6, :cond_7

    .line 630
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 631
    const/4 v5, 0x0

    .line 615
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return v11

    .line 633
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 634
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v12, "OPPerf"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IO close failed : level = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",ex->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v9, 0x0

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 617
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_6
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 618
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {v7}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getParam()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "cmd":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 620
    .local v10, "statebuffer":[B
    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 621
    sget-boolean v11, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "OPPerf"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "writeSchedtuneValue : level ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    move-object v6, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 618
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "statebuffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getDefaultParam()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_2

    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 629
    if-eqz v6, :cond_6

    .line 630
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 631
    const/4 v5, 0x0

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    move-object v3, v4

    .line 638
    .end local v4    # "f":Ljava/io/File;
    .end local v8    # "item$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    return v9

    .line 610
    :catchall_0
    move-exception v11

    :goto_5
    :try_start_a
    monitor-exit v12

    throw v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 624
    :catch_1
    move-exception v2

    .line 625
    .restart local v2    # "ex":Ljava/io/IOException;
    :goto_6
    :try_start_b
    const-string/jumbo v11, "OPPerf"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "writeSchedtuneValue failed : level = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",ex->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 626
    const/4 v9, 0x0

    .line 629
    if-eqz v5, :cond_4

    .line 630
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 631
    const/4 v5, 0x0

    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 633
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "item$iterator":Ljava/util/Iterator;
    :catch_2
    move-exception v2

    .line 634
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v11, "OPPerf"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IO close failed : level = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",ex->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v9, 0x0

    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 633
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "item$iterator":Ljava/util/Iterator;
    :catch_3
    move-exception v2

    .line 634
    const-string/jumbo v11, "OPPerf"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IO close failed : level = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",ex->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 627
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    .line 629
    :goto_7
    if-eqz v5, :cond_5

    .line 630
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 631
    const/4 v5, 0x0

    .line 627
    :cond_5
    :goto_8
    throw v11

    .line 633
    :catch_4
    move-exception v2

    .line 634
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v12, "OPPerf"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IO close failed : level = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",ex->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v9, 0x0

    goto :goto_8

    .line 627
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .restart local v8    # "item$iterator":Ljava/util/Iterator;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 624
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    :catch_5
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 610
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v11

    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    :catchall_5
    move-exception v11

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    :cond_7
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method public addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 591
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetPerfFiles(Ljava/lang/String;)Z
    .locals 1
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writePerfFiles(Ljava/lang/String;)Z
    .locals 3
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 594
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    .line 596
    return v1

    .line 598
    :cond_0
    return v2
.end method
