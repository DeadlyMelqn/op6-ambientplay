.class Landroid/app/SharedPreferencesImpl$2;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;

.field final synthetic val$isFromSyncCommit:Z

.field final synthetic val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

.field final synthetic val$postWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    iput-boolean p3, p0, Landroid/app/SharedPreferencesImpl$2;->val$isFromSyncCommit:Z

    iput-object p4, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 598
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-get5(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 599
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    iget-boolean v3, p0, Landroid/app/SharedPreferencesImpl$2;->val$isFromSyncCommit:Z

    invoke-static {v0, v2, v3}, Landroid/app/SharedPreferencesImpl;->-wrap2(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 601
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-get3(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 602
    :try_start_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-get1(Landroid/app/SharedPreferencesImpl;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Landroid/app/SharedPreferencesImpl;->-set1(Landroid/app/SharedPreferencesImpl;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 604
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 607
    :cond_0
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 601
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
