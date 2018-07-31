.class Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p2, "-this1"    # Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 354
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-get4(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-get1(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 358
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-get3(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v5}, Lcom/android/server/autofill/RemoteFillService;->-get7(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-void

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "RemoteFillService"

    const-string/jumbo v5, "Service not registered "

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 363
    return-void

    .line 367
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4, v7}, Lcom/android/server/autofill/RemoteFillService;->-set1(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 368
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p2}, Landroid/service/autofill/IAutoFillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/autofill/RemoteFillService;->-set0(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    .line 370
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :try_start_2
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-get0(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 381
    :goto_0
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-get6(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 382
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-get6(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v2

    .line 383
    .local v2, "pendingRequest":Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4, v8}, Lcom/android/server/autofill/RemoteFillService;->-set2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 384
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4, v2}, Lcom/android/server/autofill/RemoteFillService;->-wrap7(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 387
    .end local v2    # "pendingRequest":Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    :cond_2
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4, v7}, Lcom/android/server/autofill/RemoteFillService;->-set3(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 388
    return-void

    .line 371
    :catch_1
    move-exception v3

    .line 372
    .local v3, "re":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-wrap5(Lcom/android/server/autofill/RemoteFillService;)V

    .line 373
    return-void

    .line 377
    .end local v3    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "RemoteFillService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception calling onConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->-set1(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 393
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->-set0(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    .line 394
    return-void
.end method
