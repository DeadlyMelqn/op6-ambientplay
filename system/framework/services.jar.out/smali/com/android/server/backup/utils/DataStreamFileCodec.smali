.class public final Lcom/android/server/backup/utils/DataStreamFileCodec;
.super Ljava/lang/Object;
.source "DataStreamFileCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCodec:Lcom/android/server/backup/utils/DataStreamCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/backup/utils/DataStreamCodec",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/backup/utils/DataStreamCodec",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p2, "codec":Lcom/android/server/backup/utils/DataStreamCodec;, "Lcom/android/server/backup/utils/DataStreamCodec<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    .line 44
    iput-object p2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    .line 45
    return-void
.end method


# virtual methods
.method public deserialize()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    const/4 v5, 0x0

    .line 54
    const/4 v2, 0x0

    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 55
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 58
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    .end local v0    # "dataInputStream":Ljava/io/DataInputStream;
    invoke-interface {v4, v1}, Lcom/android/server/backup/utils/DataStreamCodec;->deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v6

    .line 59
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    move-object v4, v5

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    throw v4

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v4

    if-eqz v5, :cond_2

    if-eq v5, v4, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_1

    .line 58
    :cond_3
    return-object v6

    .line 59
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .end local v0    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object v6, v5

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    move-object v5, v6

    :cond_7
    :goto_5
    if-eqz v5, :cond_8

    throw v5

    :catch_3
    move-exception v6

    if-eqz v5, :cond_5

    if-eq v5, v6, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v5

    goto :goto_4

    :catch_4
    move-exception v5

    if-eqz v6, :cond_7

    if-eq v6, v5, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v6

    goto :goto_5

    :cond_8
    throw v4

    .restart local v0    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    goto :goto_3

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v4

    move-object v0, v1

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public serialize(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 69
    const/4 v4, 0x0

    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .local v0, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 70
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    .local v1, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 74
    .local v3, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    invoke-interface {v6, p1, v3}, Lcom/android/server/backup/utils/DataStreamCodec;->serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V

    .line 75
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 76
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    move-object v7, v6

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    move-object v6, v7

    :cond_4
    :goto_2
    if-eqz v6, :cond_c

    throw v6

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v7

    if-eqz v6, :cond_2

    if-eq v6, v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v6

    goto :goto_1

    :catch_2
    move-exception v6

    if-eqz v7, :cond_4

    if-eq v7, v6, :cond_3

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_2

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    move-object v8, v7

    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    :cond_8
    move-object v7, v8

    :cond_9
    :goto_7
    if-eqz v7, :cond_b

    throw v7

    :catch_4
    move-exception v8

    if-nez v7, :cond_a

    move-object v7, v8

    goto :goto_5

    :cond_a
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_5
    move-exception v8

    if-eqz v7, :cond_7

    if-eq v7, v8, :cond_6

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v7

    goto :goto_6

    :catch_6
    move-exception v7

    if-eqz v8, :cond_9

    if-eq v8, v7, :cond_8

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v8

    goto :goto_7

    :cond_b
    throw v6

    .line 77
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_c
    return-void

    .line 76
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .local v0, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v6

    move-object v2, v3

    .end local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v0, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .local v0, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v2, v3

    .end local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
