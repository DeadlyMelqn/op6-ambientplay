.class Lcom/android/server/job/JobSchedulerService$2;
.super Landroid/app/IUidObserver$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 617
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .prologue
    .line 639
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 624
    if-eqz p2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v1, "uid gone"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)V

    .line 627
    :cond_0
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 633
    if-eqz p2, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v1, "app uid idle"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)V

    .line 636
    :cond_0
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 620
    return-void
.end method
