.class Lcom/android/server/pm/PackageInstallerSession$3;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 279
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 302
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 281
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-get0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-wrap0(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_1
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "completeMsg":Ljava/lang/String;
    const-string/jumbo v2, "PackageInstaller"

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Commit of session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-wrap1(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v5, 0x0

    invoke-static {v2, v4, v0, v5}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 281
    .end local v0    # "completeMsg":Ljava/lang/String;
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 295
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerException;

    .line 297
    .restart local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v3, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
