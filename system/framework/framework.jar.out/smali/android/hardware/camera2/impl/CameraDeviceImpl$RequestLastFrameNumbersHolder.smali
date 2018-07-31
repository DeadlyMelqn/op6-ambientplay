.class Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestLastFrameNumbersHolder"
.end annotation


# instance fields
.field private final mLastRegularFrameNumber:J

.field private final mLastReprocessFrameNumber:J

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "lastRegularFrameNumber"    # J

    .prologue
    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1444
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1445
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1446
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .locals 12
    .param p2, "requestInfo"    # Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1402
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    const-wide/16 v4, -0x1

    .line 1404
    .local v4, "lastRegularFrameNumber":J
    const-wide/16 v6, -0x1

    .line 1405
    .local v6, "lastReprocessFrameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v0

    .line 1407
    .local v0, "frameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 1408
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 1409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lastFrameNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1410
    const-string/jumbo v10, " should be at least "

    .line 1409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1410
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1410
    const-string/jumbo v10, " for the number of "

    .line 1409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1411
    const-string/jumbo v10, " requests in the list: "

    .line 1409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1411
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1408
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1415
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1416
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    .line 1417
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1418
    const-wide/16 v8, -0x1

    .line 1417
    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 1419
    move-wide v6, v0

    .line 1425
    :cond_1
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 1426
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_4

    .line 1433
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    iput-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1434
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1435
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v8

    iput v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1436
    return-void

    .line 1420
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1421
    const-wide/16 v8, -0x1

    .line 1420
    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 1422
    move-wide v4, v0

    goto :goto_1

    .line 1430
    :cond_4
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 1415
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastFrameNumber()J
    .locals 4

    .prologue
    .line 1468
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRegularFrameNumber()J
    .locals 2

    .prologue
    .line 1453
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    return-wide v0
.end method

.method public getLastReprocessFrameNumber()J
    .locals 2

    .prologue
    .line 1461
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 1475
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    return v0
.end method
