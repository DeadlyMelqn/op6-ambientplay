.class Lcom/android/server/am/ActivityManagerService$33;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$33;->val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$33;->val$myProc:Lcom/android/server/am/ProcessRecord;

    .line 23788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 23791
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 23793
    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 23796
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 23794
    const/4 v4, 0x3

    .line 23791
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 23797
    const/4 v5, 0x0

    .line 23799
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$33;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 23800
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$33;->val$heapdumpFile:Ljava/io/File;

    .line 23801
    const/high16 v2, 0x2e000000

    .line 23800
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 23805
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$33;->val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23806
    .local v0, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    .line 23808
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get3()Ljava/lang/String;

    move-result-object v1

    .line 23809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requesting dump heap from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23810
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$33;->val$myProc:Lcom/android/server/am/ProcessRecord;

    .line 23809
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23810
    const-string/jumbo v3, " to "

    .line 23809
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23810
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$33;->val$heapdumpFile:Ljava/io/File;

    .line 23809
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23808
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23813
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$33;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23811
    const/4 v1, 0x1

    .line 23812
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 23811
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23820
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 23822
    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23827
    .end local v0    # "thread":Landroid/app/IApplicationThread;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_1
    return-void

    .line 23823
    .restart local v0    # "thread":Landroid/app/IApplicationThread;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    goto :goto_1

    .line 23817
    .end local v0    # "thread":Landroid/app/IApplicationThread;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 23818
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23820
    if-eqz v5, :cond_2

    .line 23822
    :try_start_4
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 23823
    :catch_2
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 23819
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 23820
    if-eqz v5, :cond_3

    .line 23822
    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 23819
    :cond_3
    :goto_2
    throw v1

    .line 23823
    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 23814
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "thread":Landroid/app/IApplicationThread;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
