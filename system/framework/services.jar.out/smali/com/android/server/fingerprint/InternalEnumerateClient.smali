.class public abstract Lcom/android/server/fingerprint/InternalEnumerateClient;
.super Lcom/android/server/fingerprint/EnumerateClient;
.source "InternalEnumerateClient.java"


# instance fields
.field private mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mEnumeratedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "groupId"    # I
    .param p7, "userId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/os/IBinder;",
            "Landroid/hardware/fingerprint/IFingerprintServiceReceiver;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p10, "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 39
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/EnumerateClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnumeratedList:Ljava/util/List;

    .line 40
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 41
    return-void
.end method

.method private doFingerprintCleanup()V
    .locals 6

    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "f$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 69
    .local v0, "f":Landroid/hardware/fingerprint/Fingerprint;
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Internal Enumerate: Removing dangling enrolled fingerprint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    const-string/jumbo v4, " "

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    const-string/jumbo v4, " "

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 71
    const-string/jumbo v4, " "

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 71
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    .line 69
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 74
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getTargetUserId()I

    move-result v5

    .line 73
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    goto :goto_0

    .line 76
    .end local v0    # "f":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    return-void
.end method

.method private handleEnumeratedFingerprint(III)V
    .locals 8
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    .line 45
    const/4 v7, 0x0

    .line 46
    .local v7, "matched":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    const/4 v7, 0x1

    .line 50
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Matched fingerprint fid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    if-nez v7, :cond_1

    if-eqz p1, :cond_1

    .line 57
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getHalDeviceId()J

    move-result-wide v4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 58
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnumeratedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v0    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    return-void

    .line 46
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEnumeratedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnumeratedList:Ljava/util/List;

    return-object v0
.end method

.method public onEnumerationResult(III)Z
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/InternalEnumerateClient;->handleEnumeratedFingerprint(III)V

    .line 87
    if-nez p3, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->doFingerprintCleanup()V

    .line 91
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
