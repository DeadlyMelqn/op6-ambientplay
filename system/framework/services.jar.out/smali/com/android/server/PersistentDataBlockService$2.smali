.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getFrpCredentialHandle()[B
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 640
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 641
    return-object v12

    .line 646
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    .line 647
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 646
    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .local v3, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 655
    :try_start_2
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    .line 656
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 657
    .local v4, "length":I
    if-lez v4, :cond_1

    const/16 v5, 0x3e4

    if-le v4, v5, :cond_2

    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 658
    return-object v12

    .line 648
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "partition not available"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-object v12

    .line 660
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "length":I
    :cond_2
    :try_start_4
    new-array v0, v4, [B

    .line 661
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 662
    return-object v0

    .line 654
    .end local v0    # "bytes":[B
    .end local v4    # "length":I
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6

    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 664
    :catch_1
    move-exception v2

    .line 665
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unable to access persistent partition"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 666
    return-object v12

    .line 667
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    throw v5
.end method

.method public setFrpCredentialHandle([B)V
    .locals 12
    .param p1, "handle"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 594
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_3

    :cond_0
    move v5, v6

    .line 595
    :goto_0
    const-string/jumbo v8, "handle must be null or non-empty"

    .line 594
    invoke-static {v5, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 596
    if-eqz p1, :cond_1

    .line 597
    array-length v5, p1

    const/16 v8, 0x3e4

    if-gt v5, v8, :cond_4

    .line 598
    :cond_1
    :goto_1
    const-string/jumbo v5, "handle must not be longer than 996"

    .line 596
    invoke-static {v6, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 602
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 609
    .local v1, "data":Ljava/nio/ByteBuffer;
    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 610
    if-eqz p1, :cond_2

    .line 611
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 613
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 615
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 616
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 617
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    .line 618
    return-void

    .end local v1    # "data":Ljava/nio/ByteBuffer;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_3
    move v5, v7

    .line 594
    goto :goto_0

    :cond_4
    move v6, v7

    .line 597
    goto :goto_1

    .line 603
    :catch_0
    move-exception v2

    .line 604
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "partition not available"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    return-void

    .line 609
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "data":Ljava/nio/ByteBuffer;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5
    array-length v7, p1

    goto :goto_2

    .line 622
    :cond_6
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 624
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 625
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 626
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 631
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 634
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    .line 636
    return-void

    .line 627
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v3

    .line 628
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "unable to access persistent partition"

    invoke-static {v5, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 631
    :try_start_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v6

    .line 629
    return-void

    .line 630
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 631
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 630
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 615
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method
