.class Landroid/telephony/MbmsDownloadSession$3;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsDownloadSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/MbmsDownloadSession;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    .line 277
    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    move-result-object v0

    .line 280
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :try_start_0
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v4}, Landroid/telephony/MbmsDownloadSession;->-get4(Landroid/telephony/MbmsDownloadSession;)I

    move-result v4

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v5}, Landroid/telephony/MbmsDownloadSession;->-get2(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 293
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 294
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const-string/jumbo v5, "Error returned during initialization"

    invoke-static {v4, v3, v5}, Landroid/telephony/MbmsDownloadSession;->-wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 295
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    return-void

    .line 285
    .end local v3    # "result":I
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Runtime exception during initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 289
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    const/16 v6, 0x67

    .line 287
    invoke-static {v4, v6, v5}, Landroid/telephony/MbmsDownloadSession;->-wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 290
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    return-void

    .line 281
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Service died before initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    return-void

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "result":I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v5}, Landroid/telephony/MbmsDownloadSession;->-get1(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 306
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v4}, Landroid/telephony/MbmsDownloadSession;->-get3(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 307
    return-void

    .line 300
    :catch_2
    move-exception v1

    .line 301
    .restart local v1    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 302
    const-string/jumbo v5, "Middleware lost during initialization"

    .line 301
    const/4 v6, 0x3

    invoke-static {v4, v6, v5}, Landroid/telephony/MbmsDownloadSession;->-wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 303
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 311
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-get3(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 313
    return-void
.end method
