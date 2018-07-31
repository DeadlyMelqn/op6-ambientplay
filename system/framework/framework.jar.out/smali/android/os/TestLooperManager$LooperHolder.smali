.class Landroid/os/TestLooperManager$LooperHolder;
.super Ljava/lang/Object;
.source "TestLooperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TestLooperManager;


# direct methods
.method private constructor <init>(Landroid/os/TestLooperManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/TestLooperManager;

    .prologue
    .line 177
    iput-object p1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager$LooperHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/TestLooperManager;
    .param p2, "-this1"    # Landroid/os/TestLooperManager$LooperHolder;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;)V

    return-void
.end method

.method private processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    .locals 3
    .param p1, "mex"    # Landroid/os/TestLooperManager$MessageExecution;

    .prologue
    .line 199
    monitor-enter p1

    .line 201
    :try_start_0
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->-get0(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->-get0(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 202
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/os/TestLooperManager$MessageExecution;->-set1(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/TestLooperManager$MessageExecution;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    .line 208
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->-set1(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 180
    iget-object v3, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v3

    .line 181
    :try_start_0
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/TestLooperManager;->-set0(Landroid/os/TestLooperManager;Z)Z

    .line 182
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-virtual {v2}, Landroid/os/TestLooperManager;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 184
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v2}, Landroid/os/TestLooperManager;->-get1(Landroid/os/TestLooperManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    :try_start_1
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v2}, Landroid/os/TestLooperManager;->-get0(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TestLooperManager$MessageExecution;

    .line 187
    .local v1, "take":Landroid/os/TestLooperManager$MessageExecution;
    invoke-static {v1}, Landroid/os/TestLooperManager$MessageExecution;->-get0(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    invoke-direct {p0, v1}, Landroid/os/TestLooperManager$LooperHolder;->processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    .end local v1    # "take":Landroid/os/TestLooperManager$MessageExecution;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 193
    :cond_1
    iget-object v3, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v3

    .line 194
    :try_start_2
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/TestLooperManager;->-set0(Landroid/os/TestLooperManager;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 196
    return-void

    .line 193
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
