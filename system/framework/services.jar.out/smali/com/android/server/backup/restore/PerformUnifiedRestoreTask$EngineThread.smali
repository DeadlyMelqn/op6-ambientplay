.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;
.super Ljava/lang/Object;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngineThread"
.end annotation


# instance fields
.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEngineStream:Ljava/io/FileInputStream;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .param p2, "engine"    # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p3, "engineSocket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, 0x1

    .line 996
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 998
    invoke-virtual {p2, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 1002
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    .line 1003
    return-void
.end method


# virtual methods
.method public handleTimeout()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->handleTimeout()V

    .line 1032
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 1016
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v3, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 1019
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v4, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-boolean v5, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget v6, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 1020
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v7, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 1018
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    .line 1025
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1022
    throw v0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1027
    return-void
.end method

.method public waitForResult()I
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->waitForResult()I

    move-result v0

    return v0
.end method
