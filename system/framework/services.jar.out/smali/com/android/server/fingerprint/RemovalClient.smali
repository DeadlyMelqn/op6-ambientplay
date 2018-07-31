.class public abstract Lcom/android/server/fingerprint/RemovalClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private mFingerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "fingerId"    # I
    .param p7, "groupId"    # I
    .param p8, "userId"    # I
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    .prologue
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 38
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 39
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    .line 40
    return-void
.end method

.method private sendRemoved(III)Z
    .locals 8
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    .line 92
    .local v1, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getHalDeviceId()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to notify Removed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    move v2, v7

    .line 98
    goto :goto_1
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 118
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    .prologue
    .line 112
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    .line 124
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(III)Z
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getTargetUserId()I

    move-result v2

    .line 104
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/fingerprint/RemovalClient;->sendRemoved(III)Z

    move-result v0

    return v0
.end method

.method public start()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 47
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v3

    iget v4, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-interface {v0, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result v2

    .line 48
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 49
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRemove with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "fingerprintd_remove_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/fingerprint/RemovalClient;->onError(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return v2

    .line 54
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "startRemove failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v6
.end method

.method public stop(Z)I
    .locals 8
    .param p1, "initiatedByClient"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 62
    iget-boolean v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    if-eqz v3, :cond_0

    .line 63
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopRemove: already cancelled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v6

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 67
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_1

    .line 68
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopRemoval: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v7

    .line 72
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v2

    .line 73
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 74
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRemoval failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v2

    .line 77
    :cond_2
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is no longer removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    .line 83
    return v6

    .line 78
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopRemoval failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return v7
.end method
