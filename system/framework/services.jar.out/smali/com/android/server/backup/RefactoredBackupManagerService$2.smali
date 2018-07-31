.class Lcom/android/server/backup/RefactoredBackupManagerService$2;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/TransportManager$TransportBoundListener;


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
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTransportBound(Lcom/android/internal/backup/IBackupTransport;)Z
    .locals 14
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1155
    const/4 v4, 0x0

    .line 1157
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v4

    .line 1158
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v6

    .line 1159
    .local v6, "transportDirName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get3(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1160
    .local v5, "stateDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1162
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "_need_init_"

    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1163
    .local v3, "initSentinel":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1164
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :try_start_1
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get8(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1168
    const-wide/32 v0, 0xea60

    .line 1169
    .local v0, "delay":J
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get0(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v7

    .line 1170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1168
    const-wide/32 v12, 0xea60

    .line 1170
    add-long/2addr v10, v12

    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get10(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1169
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v10, v11, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 1173
    .end local v0    # "delay":J
    :cond_0
    const/4 v7, 0x1

    return v7

    .line 1164
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1174
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stateDir":Ljava/io/File;
    .end local v6    # "transportDirName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1176
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to regiser transport: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v7, 0x0

    return v7
.end method
