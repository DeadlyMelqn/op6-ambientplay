.class public final Landroid/service/autofill/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCalled:Z

.field private final mRequestId:I


# direct methods
.method public constructor <init>(Landroid/service/autofill/IFillCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/service/autofill/IFillCallback;
    .param p2, "requestId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    .line 35
    iput p2, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    .line 36
    return-void
.end method

.method private assertNotCalled()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v1, p1}, Landroid/service/autofill/IFillCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 2
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget v1, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-virtual {p1, v1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 56
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v1, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_0
.end method
