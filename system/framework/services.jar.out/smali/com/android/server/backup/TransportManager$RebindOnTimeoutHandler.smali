.class Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;
.super Landroid/os/Handler;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebindOnTimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/TransportManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/TransportManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    .line 455
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 456
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 460
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 461
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 463
    .local v0, "componentShortString":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 464
    .local v2, "transportComponent":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 465
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get0(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    const-string/jumbo v3, "BackupTransportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Explicit rebinding timeout passed, but already bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 467
    const-string/jumbo v6, " so not attempting to rebind"

    .line 466
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 468
    return-void

    .line 470
    :cond_0
    :try_start_1
    const-string/jumbo v3, "BackupTransportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Explicit rebinding timeout passed, attempting rebinding to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get5(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportConnection;

    .line 474
    .local v1, "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    if-eqz v1, :cond_1

    .line 475
    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get1(Lcom/android/server/backup/TransportManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 476
    const-string/jumbo v3, "BackupTransportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unbinding the existing (broken) connection to transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 481
    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3, v2}, Lcom/android/server/backup/TransportManager;->-wrap1(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;)V

    .line 486
    .end local v0    # "componentShortString":Ljava/lang/String;
    .end local v1    # "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    .end local v2    # "transportComponent":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 464
    .restart local v0    # "componentShortString":Ljava/lang/String;
    .restart local v2    # "transportComponent":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 483
    .end local v0    # "componentShortString":Ljava/lang/String;
    .end local v2    # "transportComponent":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v3, "BackupTransportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message sent to RebindOnTimeoutHandler, msg.what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 484
    iget v5, p1, Landroid/os/Message;->what:I

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
