.class final Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
.super Landroid/print/IPrintSpoolerClient$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintSpoolerClient"
.end annotation


# instance fields
.field private final mWeakSpooler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/print/RemotePrintSpooler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 1
    .param p1, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;

    .prologue
    .line 921
    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    .line 922
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    .line 923
    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "printService"    # Landroid/content/ComponentName;

    .prologue
    .line 940
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    .line 941
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    .line 942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 944
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->-get0(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 945
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 946
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 945
    throw v3
.end method

.method public onAllPrintJobsHandled()V
    .locals 4

    .prologue
    .line 953
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    .line 954
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    .line 955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 957
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->-wrap1(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 958
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 958
    throw v3
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 927
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    .line 928
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    .line 929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 931
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->-get0(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 932
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    throw v3
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 966
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    .line 967
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 970
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->-wrap2(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 975
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 971
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 971
    throw v3
.end method
