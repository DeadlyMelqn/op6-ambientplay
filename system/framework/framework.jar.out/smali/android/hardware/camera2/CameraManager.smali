.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 342
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v11, 0x0

    .line 344
    .local v11, "device":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 346
    const/4 v10, 0x0

    .line 349
    .local v10, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 349
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;I)V

    .line 356
    .local v2, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 359
    .local v8, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v9

    .line 362
    .local v9, "cameraService":Landroid/hardware/ICameraService;
    if-nez v9, :cond_0

    .line 363
    new-instance v3, Landroid/os/ServiceSpecificException;

    .line 365
    const-string/jumbo v4, "Camera service is currently unavailable"

    .line 364
    const/4 v5, 0x4

    .line 363
    invoke-direct {v3, v5, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    .end local v9    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v13

    .line 383
    .local v13, "e":Landroid/os/ServiceSpecificException;
    :try_start_2
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 384
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Should\'ve gone down the shim path"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v8    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v10    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v13    # "e":Landroid/os/ServiceSpecificException;
    :catchall_0
    move-exception v3

    monitor-exit v17

    throw v3

    .line 368
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v8    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v9    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v10    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 367
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v9, v8, v0, v3, v1}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 419
    .end local v9    # "cameraService":Landroid/hardware/ICameraService;
    .end local v10    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v2, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 420
    move-object v11, v2

    .local v11, "device":Landroid/hardware/camera2/CameraDevice;
    monitor-exit v17

    .line 423
    return-object v2

    .line 373
    .restart local v10    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v11, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v15

    .line 379
    .local v15, "id":I
    :try_start_6
    const-string/jumbo v3, "CameraManager"

    const-string/jumbo v4, "Using legacy camera HAL."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v8, v15}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move-result-object v10

    .local v10, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 374
    .end local v15    # "id":I
    .local v10, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_1
    move-exception v14

    .line 375
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 405
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v12

    .line 407
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    new-instance v16, Landroid/os/ServiceSpecificException;

    .line 409
    const-string/jumbo v3, "Camera service is currently unavailable"

    .line 408
    const/4 v4, 0x4

    .line 407
    move-object/from16 v0, v16

    invoke-direct {v0, v4, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 410
    .local v16, "sse":Landroid/os/ServiceSpecificException;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 411
    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 385
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v16    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v13    # "e":Landroid/os/ServiceSpecificException;
    :cond_3
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_4

    .line 386
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 393
    :cond_4
    invoke-virtual {v2, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 395
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    .line 396
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 399
    :cond_5
    :goto_1
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 387
    :cond_6
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    .line 388
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 389
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    .line 403
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 397
    :cond_7
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    goto :goto_1
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 751
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v5, 0x0

    .line 773
    const-string/jumbo v3, "msm8998"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 774
    const/4 v3, 0x2

    if-ne v3, p2, :cond_1

    .line 775
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 777
    const-string/jumbo v3, "android.camera.cts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 778
    const-string/jumbo v3, "com.android.cts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 777
    if-nez v3, :cond_0

    .line 779
    const-string/jumbo v3, "com.android.cts.verifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 777
    if-nez v3, :cond_0

    .line 780
    const-string/jumbo v3, "android.camera.cts.api25test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 777
    if-nez v3, :cond_0

    .line 781
    const-string/jumbo v3, "com.android.cts.managedprofile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 777
    if-nez v3, :cond_0

    .line 782
    const-string/jumbo v3, "com.vsco.cam"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 777
    if-eqz v3, :cond_1

    .line 783
    :cond_0
    return v5

    .line 791
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 793
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_2

    return v5

    .line 795
    :cond_2
    invoke-interface {v0, p1, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 796
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 799
    .local v1, "e":Landroid/os/RemoteException;
    return v5
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 701
    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 702
    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 703
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, 0x3

    .line 704
    .local v2, "reason":I
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_0

    .line 728
    :pswitch_0
    const/4 v2, 0x3

    .line 730
    :goto_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 706
    :pswitch_1
    const/4 v2, 0x2

    .line 707
    goto :goto_0

    .line 709
    :pswitch_2
    const/4 v2, 0x1

    .line 710
    goto :goto_0

    .line 712
    :pswitch_3
    const/4 v2, 0x4

    .line 713
    goto :goto_0

    .line 715
    :pswitch_4
    const/4 v2, 0x5

    .line 716
    goto :goto_0

    .line 718
    :pswitch_5
    const/16 v2, 0x3e8

    .line 719
    goto :goto_0

    .line 722
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 724
    :pswitch_7
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 731
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "reason":I
    :cond_0
    instance-of v3, p0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1

    .line 732
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    .line 733
    const-string/jumbo v4, "Camera service has died unexpectedly"

    .line 732
    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 735
    :cond_1
    instance-of v3, p0, Landroid/os/RemoteException;

    if-eqz v3, :cond_2

    .line 736
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 738
    :cond_2
    instance-of v3, p0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 739
    check-cast v1, Ljava/lang/RuntimeException;

    .line 740
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 742
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 25
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v5, 0x0

    .line 220
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v21, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v21, :cond_0

    .line 221
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "No cameras available on device"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 223
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 228
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v3

    .line 229
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    if-nez v3, :cond_1

    .line 230
    new-instance v21, Landroid/hardware/camera2/CameraAccessException;

    .line 231
    const-string/jumbo v23, "Camera service is currently unavailable"

    .line 230
    const/16 v24, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 234
    .restart local v3    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 237
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 239
    .local v10, "id":I
    invoke-interface {v3, v10}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v18

    .line 241
    .local v18, "parameters":Ljava/lang/String;
    invoke-interface {v3, v10}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v11

    .line 243
    .local v11, "info":Landroid/hardware/CameraInfo;
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .end local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "id":I
    .end local v11    # "info":Landroid/hardware/CameraInfo;
    .end local v18    # "parameters":Ljava/lang/String;
    :goto_0
    monitor-exit v22

    .line 312
    return-object v5

    .line 246
    .restart local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v12

    .line 249
    .local v12, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v17

    .line 250
    .local v17, "packageName":Ljava/lang/String;
    const-string/jumbo v21, "sdm845"

    const-string/jumbo v23, "ro.board.platform"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 251
    if-eqz v17, :cond_3

    const-string/jumbo v21, "com.oneplus.camera"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 252
    const-string/jumbo v21, "CameraManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "packageName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 254
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 253
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 258
    :cond_3
    if-eqz v17, :cond_8

    .line 259
    const-string/jumbo v21, "sdm845"

    const-string/jumbo v23, "ro.board.platform"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    .line 258
    if-eqz v21, :cond_8

    .line 260
    const-string/jumbo v21, "com.android.cts.verifier"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_4

    const-string/jumbo v21, "android.camera.cts"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 261
    :cond_4
    const-string/jumbo v21, "CameraManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "packageName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 263
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 262
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 264
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 266
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    .line 267
    .local v16, "oldCapabilities":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, "capabilitiesTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    .line 270
    aget v21, v16, v9

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 271
    aget v21, v16, v9

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 272
    aget v21, v16, v9

    const/16 v23, 0x6

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 273
    aget v21, v16, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 276
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v14, v0, [I

    .line 277
    .local v14, "newCapabilities":[I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 278
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aput v21, v14, v13

    .line 277
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 280
    :cond_7
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 284
    .end local v4    # "capabilitiesTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    .end local v13    # "j":I
    .end local v14    # "newCapabilities":[I
    .end local v16    # "oldCapabilities":[I
    :cond_8
    if-eqz v17, :cond_c

    .line 285
    const-string/jumbo v21, "com.jiochat.jiochatapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    .line 287
    const-string/jumbo v21, "sdm845"

    const-string/jumbo v23, "ro.board.platform"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 284
    if-eqz v21, :cond_c

    .line 288
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 289
    .local v19, "sizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v20, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_a

    .line 292
    aget-object v21, v19, v9

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v21

    const/16 v23, 0xfa0

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    .line 293
    aget-object v21, v19, v9

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 295
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v15, v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 296
    .local v15, "newSizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_4
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_b

    .line 297
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v21, v15, v13

    .line 296
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 299
    :cond_b
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 302
    .end local v9    # "i":I
    .end local v13    # "j":I
    .end local v15    # "newSizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v19    # "sizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v20    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :cond_c
    new-instance v6, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v6, v12}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v5, v6

    .end local v6    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto/16 :goto_0

    .line 306
    .end local v12    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v17    # "packageName":Ljava/lang/String;
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v7

    .line 308
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v21, Landroid/hardware/camera2/CameraAccessException;

    .line 309
    const-string/jumbo v23, "Camera service is currently unavailable"

    .line 308
    const/16 v24, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 304
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 305
    .local v8, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v8}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 493
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    .line 494
    return-void
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "cameraId was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_0
    if-nez p2, :cond_1

    .line 519
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_1
    if-nez p3, :cond_2

    .line 521
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 522
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 528
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    sget-boolean v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v2, :cond_4

    .line 529
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No cameras available on device"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 525
    const-string/jumbo v3, "Handler argument is null, but no looper exists in the calling thread"

    .line 524
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xc

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 535
    new-instance v0, Landroid/util/Permission;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 536
    .local v0, "requester":Landroid/util/Permission;
    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v1

    .line 537
    .local v1, "result":Z
    if-nez v1, :cond_5

    .line 538
    return-void

    .line 544
    .end local v0    # "requester":Landroid/util/Permission;
    .end local v1    # "result":Z
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    .line 545
    return-void
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 132
    if-nez p2, :cond_1

    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 134
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 136
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 135
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 142
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 179
    if-nez p2, :cond_1

    .line 180
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 181
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 183
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 182
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 188
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 588
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 592
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 153
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 154
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 199
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 200
    return-void
.end method
