.class public final Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 135
    return-void
.end method


# virtual methods
.method public addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 286
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v3, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 290
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 292
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 293
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 294
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 296
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 297
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p3, v1, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;->onValues(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 302
    return-void

    .line 299
    .end local v0    # "_hidl_out_errMsg":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :catchall_0
    move-exception v4

    .line 300
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 299
    throw v4
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 446
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 450
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 451
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 452
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 454
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 455
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 456
    return-object v0

    .line 457
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v3

    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 457
    throw v3
.end method

.method public getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    .locals 9
    .param p1, "upstream"    # Ljava/lang/String;
    .param p2, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 219
    .local v5, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v6, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 222
    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    .line 224
    .local v4, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v6, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 225
    invoke-virtual {v4}, Landroid/os/HwParcel;->verifySuccess()V

    .line 226
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 228
    invoke-virtual {v4}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 229
    .local v0, "_hidl_out_rxBytes":J
    invoke-virtual {v4}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 230
    .local v2, "_hidl_out_txBytes":J
    invoke-interface {p2, v0, v1, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;->onValues(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    .line 234
    return-void

    .line 231
    .end local v0    # "_hidl_out_rxBytes":J
    .end local v2    # "_hidl_out_txBytes":J
    :catchall_0
    move-exception v6

    .line 232
    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    .line 231
    throw v6
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    .line 369
    .local v16, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 373
    .local v3, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 374
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 375
    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 377
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v15, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 381
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    .line 383
    .local v18, "_hidl_vec_size":I
    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 384
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 382
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    .line 386
    .local v19, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 387
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 388
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 390
    .local v17, "_hidl_vec_element":[B
    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    .line 391
    .local v12, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_1
    const/16 v4, 0x20

    if-ge v14, v4, :cond_0

    .line 392
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    .line 393
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    .line 391
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 396
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 402
    .end local v12    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    .end local v17    # "_hidl_vec_element":[B
    :cond_1
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 400
    return-object v15

    .line 401
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v15    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "_hidl_vec_size":I
    .end local v19    # "childBlob":Landroid/os/HwBlob;
    :catchall_0
    move-exception v4

    .line 402
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 401
    throw v4
.end method

.method public initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    .locals 7
    .param p1, "cb"    # Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
    .param p2, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 156
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 157
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v5, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v3, v5}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 160
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 162
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 163
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 164
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 166
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 167
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p2, v1, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;->onValues(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 172
    return-void

    .line 158
    .end local v0    # "_hidl_out_errMsg":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    .end local v2    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_0
    invoke-interface {p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v4

    goto :goto_0

    .line 169
    .restart local v2    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_0
    move-exception v4

    .line 170
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 169
    throw v4
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 331
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 335
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 336
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 337
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 339
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 342
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 340
    return-object v0

    .line 341
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 342
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 341
    throw v3
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 350
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 354
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 355
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 356
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 358
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 361
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 359
    return-object v0

    .line 360
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 361
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 360
    throw v3
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 2
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 466
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 470
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 471
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 475
    return-void

    .line 472
    :catchall_0
    move-exception v2

    .line 473
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 472
    throw v2
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 430
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 432
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 434
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 435
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 436
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 440
    return-void

    .line 437
    :catchall_0
    move-exception v2

    .line 438
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 437
    throw v2
.end method

.method public removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 308
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 312
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 314
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 315
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 316
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 318
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 319
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p3, v1, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;->onValues(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 324
    return-void

    .line 321
    .end local v0    # "_hidl_out_errMsg":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :catchall_0
    move-exception v4

    .line 322
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 321
    throw v4
.end method

.method public setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    .locals 8
    .param p1, "upstream"    # Ljava/lang/String;
    .param p2, "limit"    # J
    .param p4, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 240
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 244
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 246
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 247
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 248
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 250
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 251
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p4, v1, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;->onValues(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 256
    return-void

    .line 253
    .end local v0    # "_hidl_out_errMsg":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :catchall_0
    move-exception v4

    .line 254
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 253
    throw v4
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 410
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 414
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 415
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 419
    return-void

    .line 416
    :catchall_0
    move-exception v2

    .line 417
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 416
    throw v2
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    .locals 7
    .param p2, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 198
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 201
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 203
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 204
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 205
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 207
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 208
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p2, v1, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;->onValues(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 213
    return-void

    .line 210
    .end local v0    # "_hidl_out_errMsg":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :catchall_0
    move-exception v4

    .line 211
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 210
    throw v4
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "v4Addr"    # Ljava/lang/String;
    .param p3, "v4Gw"    # Ljava/lang/String;
    .param p5, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    .local p4, "v6Gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 262
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v3, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3, p4}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 268
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 270
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 271
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 272
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 274
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 275
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p5, v1, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;->onValues(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 280
    return-void

    .line 277
    .end local v0    # "_hidl_out_errMsg":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :catchall_0
    move-exception v4

    .line 278
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 277
    throw v4
.end method

.method public stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    .locals 7
    .param p1, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 178
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 182
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 183
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 184
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 186
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 187
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;->onValues(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 192
    return-void

    .line 189
    .end local v0    # "_hidl_out_errMsg":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :catchall_0
    move-exception v4

    .line 190
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 189
    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "[class or subclass of android.hardware.tetheroffload.control@1.0::IOffloadControl]@Proxy"

    return-object v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
