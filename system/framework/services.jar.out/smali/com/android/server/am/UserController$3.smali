.class Lcom/android/server/am/UserController$3;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->restartUser(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$foreground:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    iput-boolean p2, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    .line 522
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_am_UserController$3_23778(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    return-void
.end method

.method public userStopAborted(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 530
    return-void
.end method

.method public userStopped(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;

    iget-boolean v2, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p1, p0}, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;-><init>(BZILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    return-void
.end method
