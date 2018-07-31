.class public abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 631
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 673
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 674
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 675
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 676
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

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 650
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 651
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 649
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 650
    nop

    :array_0
    .array-data 1
        -0x16t
        -0x44t
        0x0t
        0x20t
        0x76t
        0x59t
        -0x1at
        -0x6ft
        -0x4bt
        -0x4t
        0x6bt
        0x50t
        0x5bt
        -0xct
        -0x4ct
        0x7ft
        0x38t
        -0x50t
        -0x7dt
        0x5at
        -0x24t
        -0x18t
        -0x51t
        0xat
        0x43t
        -0x6dt
        -0x4et
        0x30t
        0x51t
        0x23t
        0x3at
        0x23t
    .end array-data

    .line 651
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
    .line 636
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 637
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 638
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 636
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 681
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 682
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 40
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
    .line 710
    sparse-switch p1, :sswitch_data_0

    .line 1026
    :goto_0
    :sswitch_0
    return-void

    .line 713
    :sswitch_1
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v27

    .line 716
    .local v27, "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v22

    .line 717
    .local v22, "_hidl_out_deviceId":J
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 718
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 725
    .end local v22    # "_hidl_out_deviceId":J
    .end local v27    # "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    :sswitch_2
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->preEnroll()J

    move-result-wide v16

    .line 728
    .local v16, "_hidl_out_authChallenge":J
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 729
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 736
    .end local v16    # "_hidl_out_authChallenge":J
    :sswitch_3
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    const/16 v37, 0x45

    move/from16 v0, v37

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 740
    .local v31, "hat":[B
    const-wide/16 v38, 0x45

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 742
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 743
    .local v6, "_hidl_array_offset_0":J
    const/4 v11, 0x0

    .local v11, "_hidl_index_0_0":I
    :goto_1
    const/16 v37, 0x45

    move/from16 v0, v37

    if-ge v11, v0, :cond_0

    .line 744
    invoke-virtual {v5, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v37

    aput-byte v37, v31, v11

    .line 745
    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    .line 743
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 749
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    .line 750
    .local v30, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v36

    .line 751
    .local v36, "timeoutSec":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enroll([BII)I

    move-result v18

    .line 752
    .local v18, "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 760
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    .end local v11    # "_hidl_index_0_0":I
    .end local v18    # "_hidl_out_debugErrno":I
    .end local v30    # "gid":I
    .end local v31    # "hat":[B
    .end local v36    # "timeoutSec":I
    :sswitch_4
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->postEnroll()I

    move-result v18

    .line 763
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 771
    .end local v18    # "_hidl_out_debugErrno":I
    :sswitch_5
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getAuthenticatorId()J

    move-result-wide v14

    .line 774
    .local v14, "_hidl_out_AuthenticatorId":J
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 775
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 782
    .end local v14    # "_hidl_out_AuthenticatorId":J
    :sswitch_6
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->cancel()I

    move-result v18

    .line 785
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 786
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 793
    .end local v18    # "_hidl_out_debugErrno":I
    :sswitch_7
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enumerate()I

    move-result v18

    .line 796
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 804
    .end local v18    # "_hidl_out_debugErrno":I
    :sswitch_8
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    .line 807
    .restart local v30    # "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    .line 808
    .local v29, "fid":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->remove(II)I

    move-result v18

    .line 809
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 810
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 817
    .end local v18    # "_hidl_out_debugErrno":I
    .end local v29    # "fid":I
    .end local v30    # "gid":I
    :sswitch_9
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    .line 820
    .restart local v30    # "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 821
    .local v35, "storePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setActiveGroup(ILjava/lang/String;)I

    move-result v18

    .line 822
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 830
    .end local v18    # "_hidl_out_debugErrno":I
    .end local v30    # "gid":I
    .end local v35    # "storePath":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v32

    .line 833
    .local v32, "operationId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    .line 834
    .restart local v30    # "gid":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->authenticate(JI)I

    move-result v18

    .line 835
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 843
    .end local v18    # "_hidl_out_debugErrno":I
    .end local v30    # "gid":I
    .end local v32    # "operationId":J
    :sswitch_b
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v34

    .line 846
    .local v34, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->updateStatus(I)I

    move-result v18

    .line 847
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 848
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 855
    .end local v18    # "_hidl_out_debugErrno":I
    .end local v34    # "status":I
    :sswitch_c
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getStatus()I

    move-result v18

    .line 858
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 866
    .end local v18    # "_hidl_out_debugErrno":I
    :sswitch_d
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getEngTest()Ljava/util/ArrayList;

    move-result-object v13

    .line 869
    .local v13, "_hidl_out_FpTests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FpTest;>;"
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    move-object/from16 v0, p3

    invoke-static {v0, v13}, Landroid/hardware/biometrics/fingerprint/V2_1/FpTest;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 877
    .end local v13    # "_hidl_out_FpTests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FpTest;>;"
    :sswitch_e
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFpEngCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFpEngCallback;

    move-result-object v4

    .line 880
    .local v4, "Callback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFpEngCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setEngCallback(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFpEngCallback;)I

    move-result v18

    .line 881
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 882
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 889
    .end local v4    # "Callback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFpEngCallback;
    .end local v18    # "_hidl_out_debugErrno":I
    :sswitch_f
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    .line 892
    .local v28, "cmdId":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->startEngTest(I)I

    move-result v18

    .line 893
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 901
    .end local v18    # "_hidl_out_debugErrno":I
    .end local v28    # "cmdId":I
    :sswitch_10
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    .line 904
    .restart local v28    # "cmdId":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->stopEngTest(I)I

    move-result v18

    .line 905
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 913
    .end local v18    # "_hidl_out_debugErrno":I
    .end local v28    # "cmdId":I
    :sswitch_11
    const-string/jumbo v37, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->stopAllEngTest()I

    move-result v18

    .line 916
    .restart local v18    # "_hidl_out_debugErrno":I
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 917
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 924
    .end local v18    # "_hidl_out_debugErrno":I
    :sswitch_12
    const-string/jumbo v37, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v20

    .line 927
    .local v20, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 935
    .end local v20    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_13
    const-string/jumbo v37, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 944
    :sswitch_14
    const-string/jumbo v37, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v19

    .line 947
    .local v19, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 955
    .end local v19    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v37, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v21

    .line 958
    .local v21, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    new-instance v5, Landroid/os/HwBlob;

    const/16 v37, 0x10

    move/from16 v0, v37

    invoke-direct {v5, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 962
    .restart local v5    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 963
    .local v25, "_hidl_vec_size":I
    const-wide/16 v38, 0x8

    move-wide/from16 v0, v38

    move/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 964
    const-wide/16 v38, 0xc

    const/16 v37, 0x0

    move-wide/from16 v0, v38

    move/from16 v2, v37

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 965
    new-instance v26, Landroid/os/HwBlob;

    mul-int/lit8 v37, v25, 0x20

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 966
    .local v26, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_2
    move/from16 v0, v25

    if-ge v10, v0, :cond_2

    .line 968
    mul-int/lit8 v37, v10, 0x20

    move/from16 v0, v37

    int-to-long v8, v0

    .line 969
    .local v8, "_hidl_array_offset_1":J
    const/4 v12, 0x0

    .local v12, "_hidl_index_1_0":I
    :goto_3
    const/16 v37, 0x20

    move/from16 v0, v37

    if-ge v12, v0, :cond_1

    .line 970
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [B

    aget-byte v37, v37, v12

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 971
    const-wide/16 v38, 0x1

    add-long v8, v8, v38

    .line 969
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 966
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 975
    .end local v8    # "_hidl_array_offset_1":J
    .end local v12    # "_hidl_index_1_0":I
    :cond_2
    const-wide/16 v38, 0x0

    move-wide/from16 v0, v38

    move-object/from16 v2, v26

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 977
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 985
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v21    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v25    # "_hidl_vec_size":I
    .end local v26    # "childBlob":Landroid/os/HwBlob;
    :sswitch_16
    const-string/jumbo v37, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 1003
    :sswitch_17
    const-string/jumbo v37, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v24

    .line 1006
    .local v24, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1007
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1014
    .end local v24    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_18
    const-string/jumbo v37, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 710
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0xf43484e -> :sswitch_12
        0xf444247 -> :sswitch_13
        0xf445343 -> :sswitch_14
        0xf485348 -> :sswitch_15
        0xf494e54 -> :sswitch_16
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_18
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    return-object p0

    .line 695
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
    .line 699
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->registerService(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 686
    const/4 v0, 0x1

    return v0
.end method
