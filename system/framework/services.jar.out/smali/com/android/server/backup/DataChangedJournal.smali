.class public final Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/DataChangedJournal$Consumer;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2000

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 51
    return-void
.end method

.method static listJournals(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/DataChangedJournal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 138
    .local v0, "file":Ljava/io/File;
    new-instance v5, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v5, v0}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method static newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;
    .locals 3
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/android/server/backup/DataChangedJournal;

    .line 129
    const-string/jumbo v1, "journal"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 60
    const/4 v0, 0x0

    .local v0, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v4, "rws"

    invoke-direct {v1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 63
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .end local v0    # "out":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    if-eqz v3, :cond_3

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_3

    :cond_2
    if-eq v3, v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    throw v2

    .line 64
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_4
    return-void

    .line 63
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v0, "out":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 96
    instance-of v2, p1, Lcom/android/server/backup/DataChangedJournal;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 97
    check-cast v1, Lcom/android/server/backup/DataChangedJournal;

    .line 99
    .local v1, "that":Lcom/android/server/backup/DataChangedJournal;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "exception":Ljava/io/IOException;
    return v4

    .line 104
    .end local v0    # "exception":Ljava/io/IOException;
    .end local v1    # "that":Lcom/android/server/backup/DataChangedJournal;
    :cond_0
    return v4
.end method

.method public forEach(Lcom/android/server/backup/DataChangedJournal$Consumer;)V
    .locals 9
    .param p1, "consumer"    # Lcom/android/server/backup/DataChangedJournal$Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 73
    const/4 v0, 0x0

    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 74
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 75
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x2000

    .line 74
    invoke-direct {v1, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 78
    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .local v3, "dataInputStream":Ljava/io/DataInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-lez v5, :cond_4

    .line 79
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {p1, v4}, Lcom/android/server/backup/DataChangedJournal$Consumer;->accept(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 82
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    :goto_1
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_2
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    move-object v7, v6

    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    move-object v6, v7

    :cond_3
    :goto_4
    if-eqz v6, :cond_8

    throw v6

    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "dataInputStream":Ljava/io/DataInputStream;
    :cond_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    move-object v5, v6

    :cond_7
    :goto_6
    if-eqz v5, :cond_9

    throw v5

    :catch_1
    move-exception v6

    goto :goto_5

    :catch_2
    move-exception v5

    if-eqz v6, :cond_7

    if-eq v6, v5, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v6

    goto :goto_6

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    :catch_3
    move-exception v7

    if-eqz v6, :cond_1

    if-eq v6, v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v6

    goto :goto_3

    :catch_4
    move-exception v6

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_4

    :cond_8
    throw v5

    .line 83
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "dataInputStream":Ljava/io/DataInputStream;
    :cond_9
    return-void

    .line 82
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v5

    goto :goto_2

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v5

    move-object v2, v3

    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    :catch_5
    move-exception v5

    goto :goto_1

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
