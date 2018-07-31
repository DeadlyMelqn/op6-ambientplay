.class Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .line 646
    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->finish()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 662
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 663
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->-wrap3(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    .line 666
    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->finish()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 652
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->-wrap4(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 655
    :cond_1
    return-void
.end method
