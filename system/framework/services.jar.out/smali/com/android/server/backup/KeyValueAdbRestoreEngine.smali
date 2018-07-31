.class public Lcom/android/server/backup/KeyValueAdbRestoreEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbRestoreEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyValueAdbRestoreEngine"


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field private final mDataDir:Ljava/io/File;

.field mInFD:Landroid/os/ParcelFileDescriptor;

.field mInfo:Lcom/android/server/backup/FileMetadata;

.field mRestoreTask:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

.field mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerServiceInterface;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "inFD"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "agent"    # Landroid/app/IBackupAgent;
    .param p6, "token"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 53
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 54
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 55
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    .line 56
    iput-object p5, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 57
    iput p6, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    .line 58
    return-void
.end method

.method private copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .locals 8
    .param p1, "in"    # Landroid/app/backup/BackupDataInput;
    .param p2, "out"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 132
    .local v4, "size":I
    if-gez v4, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 136
    :cond_0
    new-array v5, v4, [B

    .line 137
    .local v5, "value":[B
    invoke-virtual {p1, v5, v7, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 138
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "size":I
    .end local v5    # "value":[B
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 142
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .restart local v1    # "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 144
    .restart local v5    # "value":[B
    array-length v6, v5

    invoke-virtual {p2, v1, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 145
    array-length v6, v5

    invoke-virtual {p2, v5, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_1

    .line 147
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":[B
    :cond_2
    return-void
.end method

.method private invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;I)V
    .locals 10
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p3, "restoreData"    # Ljava/io/File;
    .param p4, "versionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v9, p2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 87
    .local v9, "pkg":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".new"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v8, "newStateName":Ljava/io/File;
    const/high16 v0, 0x10000000

    :try_start_0
    invoke-static {p3, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 92
    .local v1, "backupData":Landroid/os/ParcelFileDescriptor;
    const/high16 v0, 0x3c000000    # 0.0078125f

    .line 91
    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 98
    .local v3, "newState":Landroid/os/ParcelFileDescriptor;
    iget v4, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    .line 99
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v5

    move-object v0, p1

    move v2, p4

    .line 98
    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "newState":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v6

    .line 103
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyValueAdbRestoreEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception calling doRestore on agent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 101
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "KeyValueAdbRestoreEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception opening file. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 11
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p2, "inFD"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 74
    .local v9, "pkg":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v8, "restoreDataName":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".sorted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v10, "sortedDataName":Ljava/io/File;
    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    iget v3, p1, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v6, p1, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 80
    invoke-direct {p0, v8, v10}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->sortKeyValueData(Ljava/io/File;Ljava/io/File;)V

    .line 81
    return-object v10
.end method

.method private sortKeyValueData(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "restoreData"    # Ljava/io/File;
    .param p2, "sortedData"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "inputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 111
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Landroid/app/backup/BackupDataInput;

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 114
    .local v4, "reader":Landroid/app/backup/BackupDataInput;
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 115
    .local v5, "writer":Landroid/app/backup/BackupDataOutput;
    invoke-direct {p0, v4, v5}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    if-eqz v1, :cond_0

    .line 118
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 120
    :cond_0
    if-eqz v3, :cond_1

    .line 121
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 124
    :cond_1
    return-void

    .line 116
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "reader":Landroid/app/backup/BackupDataInput;
    .end local v5    # "writer":Landroid/app/backup/BackupDataOutput;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 117
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v0, :cond_2

    .line 118
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 120
    :cond_2
    if-eqz v2, :cond_3

    .line 121
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 116
    :cond_3
    throw v6

    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .local v0, "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v1

    .line 66
    .local v1, "restoreData":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "restoreData":Ljava/io/File;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
