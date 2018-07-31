.class public Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$1;,
        Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;
    }
.end annotation


# static fields
.field private static final ERROR_TIMEOUT:J = 0x514L


# instance fields
.field private mCallback:Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIcon:Landroid/widget/ImageView;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;I)V
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "errorTextView"    # Landroid/widget/TextView;
    .param p3, "callback"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;
    .param p4, "userId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 113
    new-instance v0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$1;-><init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;)V

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 45
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    .line 46
    iput-object p2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 47
    iput-object p3, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;

    .line 48
    iput p4, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mUserId:I

    .line 49
    return-void
.end method

.method private isListening()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFingerprintIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;->onFingerprintIconVisibilityChanged(Z)V

    .line 77
    return-void

    .line 75
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    invoke-direct {p0, p2}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 83
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f0f1051

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper$Callback;->onAuthenticated()V

    .line 100
    return-void
.end method

.method public startListening()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 55
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 57
    iget-object v2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget v6, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mUserId:I

    move-object v4, p0

    move-object v5, v1

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 66
    iput-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 68
    :cond_0
    return-void
.end method
