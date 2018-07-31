.class Landroid/service/autofill/AutofillService$1;
.super Landroid/service/autofill/IAutoFillService$Stub;
.source "AutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/AutofillService;


# direct methods
.method constructor <init>(Landroid/service/autofill/AutofillService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/autofill/AutofillService;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    .line 475
    invoke-direct {p0}, Landroid/service/autofill/IAutoFillService$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onConnectedStateChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 478
    if-eqz p1, :cond_0

    .line 479
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-get0(Landroid/service/autofill/AutofillService;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-get0(Landroid/service/autofill/AutofillService;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    .locals 5
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "callback"    # Landroid/service/autofill/IFillCallback;

    .prologue
    .line 487
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 489
    .local v1, "transport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p2, v1}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v2}, Landroid/service/autofill/AutofillService;->-get0(Landroid/service/autofill/AutofillService;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v2

    .line 494
    invoke-static {v1}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v3

    .line 493
    const/4 v4, 0x3

    invoke-virtual {v2, v4, p1, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 496
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;
    .param p2, "callback"    # Landroid/service/autofill/ISaveCallback;

    .prologue
    .line 500
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-get0(Landroid/service/autofill/AutofillService;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 502
    return-void
.end method
