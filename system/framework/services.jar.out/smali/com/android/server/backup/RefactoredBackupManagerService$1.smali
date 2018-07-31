.class Lcom/android/server/backup/RefactoredBackupManagerService$1;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 983
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 985
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v3, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 986
    .local v3, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 987
    .local v2, "bufOut":Ljava/io/DataOutputStream;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 996
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get5(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 997
    .local v0, "N":I
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 999
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 1000
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get5(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1001
    .local v5, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v8, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1002
    iget-wide v10, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 999
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1004
    .end local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1006
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get6(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1007
    .local v1, "af":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    .line 1008
    .local v7, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1009
    invoke-virtual {v1, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "N":I
    .end local v1    # "af":Landroid/util/AtomicFile;
    .end local v2    # "bufOut":Ljava/io/DataOutputStream;
    .end local v3    # "bufStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "i":I
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :goto_1
    monitor-exit v9

    .line 1014
    return-void

    .line 1010
    :catch_0
    move-exception v4

    .line 1011
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "BackupManagerService"

    const-string/jumbo v10, "Unable to write backup schedule!"

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 983
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
