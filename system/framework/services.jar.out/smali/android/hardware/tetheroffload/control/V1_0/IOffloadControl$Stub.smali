.class public abstract Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;
.super Landroid/os/HwBinder;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 487
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 529
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 530
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 531
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 532
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

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 506
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 507
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 505
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 506
    nop

    :array_0
    .array-data 1
        0x44t
        0x7bt
        0x0t
        0x30t
        0x6bt
        -0x37t
        0x5at
        0x7at
        -0x51t
        -0x14t
        0x1dt
        0x66t
        0xft
        0x6ft
        0x3et
        -0x61t
        0x76t
        -0x54t
        -0x75t
        -0x40t
        0x35t
        0x31t
        -0x6dt
        0x43t
        0x5et
        0x55t
        0x79t
        -0x55t
        -0x7dt
        0x3dt
        -0x5at
        0x19t
    .end array-data

    .line 507
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
    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 493
    const-string/jumbo v2, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 494
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 492
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    const-string/jumbo v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 537
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 538
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 30
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
    .line 566
    sparse-switch p1, :sswitch_data_0

    .line 804
    :goto_0
    :sswitch_0
    return-void

    .line 569
    :sswitch_1
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;

    move-result-object v20

    .line 572
    .local v20, "cb":Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V

    goto :goto_0

    .line 585
    .end local v20    # "cb":Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V

    goto :goto_0

    .line 600
    :sswitch_3
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v25

    .line 603
    .local v25, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V

    goto :goto_0

    .line 616
    .end local v25    # "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 619
    .local v26, "upstream":Ljava/lang/String;
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V

    goto :goto_0

    .line 632
    .end local v26    # "upstream":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 635
    .restart local v26    # "upstream":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v22

    .line 636
    .local v22, "limit":J
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V

    goto/16 :goto_0

    .line 649
    .end local v22    # "limit":J
    .end local v26    # "upstream":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, "iface":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, "v4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 654
    .local v7, "v4Gw":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v8

    .line 655
    .local v8, "v6Gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V

    goto/16 :goto_0

    .line 668
    .end local v5    # "iface":Ljava/lang/String;
    .end local v6    # "v4Addr":Ljava/lang/String;
    .end local v7    # "v4Gw":Ljava/lang/String;
    .end local v8    # "v6Gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 671
    .restart local v5    # "iface":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 672
    .local v24, "prefix":Ljava/lang/String;
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V

    goto/16 :goto_0

    .line 685
    .end local v5    # "iface":Ljava/lang/String;
    .end local v24    # "prefix":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 688
    .restart local v5    # "iface":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 689
    .restart local v24    # "prefix":Ljava/lang/String;
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V

    goto/16 :goto_0

    .line 702
    .end local v5    # "iface":Ljava/lang/String;
    .end local v24    # "prefix":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v16

    .line 705
    .local v16, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 713
    .end local v16    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 722
    :sswitch_b
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v15

    .line 725
    .local v15, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 726
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 733
    .end local v15    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v17

    .line 736
    .local v17, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    new-instance v12, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v12, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 740
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 741
    .local v19, "_hidl_vec_size":I
    const-wide/16 v28, 0x8

    move-wide/from16 v0, v28

    move/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 742
    const-wide/16 v28, 0xc

    const/4 v4, 0x0

    move-wide/from16 v0, v28

    invoke-virtual {v12, v0, v1, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 743
    new-instance v21, Landroid/os/HwBlob;

    mul-int/lit8 v4, v19, 0x20

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 744
    .local v21, "childBlob":Landroid/os/HwBlob;
    const/4 v13, 0x0

    .local v13, "_hidl_index_0":I
    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_1

    .line 746
    mul-int/lit8 v4, v13, 0x20

    int-to-long v10, v4

    .line 747
    .local v10, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_2
    const/16 v4, 0x20

    if-ge v14, v4, :cond_0

    .line 748
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 749
    const-wide/16 v28, 0x1

    add-long v10, v10, v28

    .line 747
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 744
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 753
    .end local v10    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 755
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 763
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_index_0":I
    .end local v17    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v19    # "_hidl_vec_size":I
    .end local v21    # "childBlob":Landroid/os/HwBlob;
    :sswitch_d
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 781
    :sswitch_e
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v18

    .line 784
    .local v18, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 792
    .end local v18    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_f
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_a
        0xf445343 -> :sswitch_b
        0xf485348 -> :sswitch_c
        0xf494e54 -> :sswitch_d
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_e
        0xf535953 -> :sswitch_f
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 548
    const-string/jumbo v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    return-object p0

    .line 551
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
    .line 555
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->registerService(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 542
    const/4 v0, 0x1

    return v0
.end method
