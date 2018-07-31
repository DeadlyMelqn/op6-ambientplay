.class Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-get0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-set0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-wrap0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-set0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-get1(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-wrap0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    .line 122
    :cond_0
    return-void
.end method
