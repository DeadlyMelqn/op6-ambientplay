.class public abstract Landroid/hardware/usb/V1_0/IUsb$Stub;
.super Landroid/os/HwBinder;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/V1_0/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_0/IUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 304
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 346
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 347
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 348
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 349
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 323
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 324
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 322
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 323
    nop

    :array_0
    .array-data 1
        0x4et
        -0xbt
        0x74t
        -0x67t
        0x27t
        0x3ft
        0x38t
        -0x43t
        -0x43t
        -0x30t
        -0x3ft
        0x5et
        0x56t
        -0x12t
        0x7at
        0x4bt
        -0x3bt
        -0xft
        -0x76t
        0x56t
        0x44t
        0x9t
        0x21t
        0x70t
        -0x5bt
        0x31t
        -0x21t
        0x35t
        0x41t
        -0x27t
        -0x20t
        0x15t
    .end array-data

    .line 324
    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 310
    const-string/jumbo v2, "android.hardware.usb@1.0::IUsb"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 311
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 309
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const-string/jumbo v0, "android.hardware.usb@1.0::IUsb"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 354
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 355
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 21
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    sparse-switch p1, :sswitch_data_0

    .line 516
    :goto_0
    :sswitch_0
    return-void

    .line 386
    :sswitch_1
    const-string/jumbo v18, "android.hardware.usb@1.0::IUsb"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 389
    .local v16, "portName":Ljava/lang/String;
    new-instance v17, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 390
    .local v17, "role":Landroid/hardware/usb/V1_0/PortRole;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/V1_0/IUsb$Stub;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V

    goto :goto_0

    .line 397
    .end local v16    # "portName":Ljava/lang/String;
    .end local v17    # "role":Landroid/hardware/usb/V1_0/PortRole;
    :sswitch_2
    const-string/jumbo v18, "android.hardware.usb@1.0::IUsb"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/hardware/usb/V1_0/IUsbCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsbCallback;

    move-result-object v14

    .line 400
    .local v14, "callback":Landroid/hardware/usb/V1_0/IUsbCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/hardware/usb/V1_0/IUsb$Stub;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    goto :goto_0

    .line 406
    .end local v14    # "callback":Landroid/hardware/usb/V1_0/IUsbCallback;
    :sswitch_3
    const-string/jumbo v18, "android.hardware.usb@1.0::IUsb"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->queryPortStatus()V

    goto :goto_0

    .line 414
    :sswitch_4
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    .line 417
    .local v10, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 418
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 425
    .end local v10    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_5
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 434
    :sswitch_6
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    .line 437
    .local v9, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 438
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 445
    .end local v9    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    .line 448
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 450
    new-instance v6, Landroid/os/HwBlob;

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 452
    .local v6, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 453
    .local v13, "_hidl_vec_size":I
    const-wide/16 v18, 0x8

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 454
    const-wide/16 v18, 0xc

    const/16 v20, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 455
    new-instance v15, Landroid/os/HwBlob;

    mul-int/lit8 v18, v13, 0x20

    move/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 456
    .local v15, "childBlob":Landroid/os/HwBlob;
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_1
    if-ge v7, v13, :cond_1

    .line 458
    mul-int/lit8 v18, v7, 0x20

    move/from16 v0, v18

    int-to-long v4, v0

    .line 459
    .local v4, "_hidl_array_offset_1":J
    const/4 v8, 0x0

    .local v8, "_hidl_index_1_0":I
    :goto_2
    const/16 v18, 0x20

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 460
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    aget-byte v18, v18, v8

    move/from16 v0, v18

    invoke-virtual {v15, v4, v5, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 461
    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    .line 459
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 456
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 465
    .end local v4    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1, v15}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 467
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 475
    .end local v6    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v13    # "_hidl_vec_size":I
    .end local v15    # "childBlob":Landroid/os/HwBlob;
    :sswitch_8
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 493
    :sswitch_9
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    .line 496
    .local v12, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 497
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 504
    .end local v12    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_a
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xf43484e -> :sswitch_4
        0xf444247 -> :sswitch_5
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_7
        0xf494e54 -> :sswitch_8
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_9
        0xf535953 -> :sswitch_a
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 365
    const-string/jumbo v0, "android.hardware.usb@1.0::IUsb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    return-object p0

    .line 368
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_0/IUsb$Stub;->registerService(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .prologue
    .line 359
    const/4 v0, 0x1

    return v0
.end method
