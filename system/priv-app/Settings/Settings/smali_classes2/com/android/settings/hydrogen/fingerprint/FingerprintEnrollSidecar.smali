.class public Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings/InstrumentedFragment;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$1;,
        Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$2;,
        Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;
    }
.end annotation


# instance fields
.field private mDone:Z

.field private mEnrolling:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .prologue
    iget v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .prologue
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;)V

    .line 146
    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 177
    new-instance v0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method private startEnrollment()V
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 109
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 110
    iget v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 113
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "zhuyang--startEnrollment--enroll"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 115
    iget v4, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v3, 0x0

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 117
    return-void
.end method


# virtual methods
.method cancelEnrollment()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 123
    iput-boolean v2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    return v2
.end method

.method public getEnrollmentRemaining()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0xf5

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return v0
.end method

.method public isEnrolling()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "zhuyang--onAttach"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "hw_auth_token"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->setRetainInstance(Z)V

    .line 54
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStart()V

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    .line 72
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 80
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;

    .line 132
    return-void
.end method
