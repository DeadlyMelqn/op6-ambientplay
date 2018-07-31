.class public abstract Landroid/hardware/radio/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/radio/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITuner"

.field static final TRANSACTION_cancel:I = 0xa

.field static final TRANSACTION_cancelAnnouncement:I = 0xb

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getImage:I = 0xd

.field static final TRANSACTION_getProgramInformation:I = 0xc

.field static final TRANSACTION_getProgramList:I = 0xf

.field static final TRANSACTION_isAnalogForced:I = 0x10

.field static final TRANSACTION_isAntennaConnected:I = 0x12

.field static final TRANSACTION_isClosed:I = 0x2

.field static final TRANSACTION_isMuted:I = 0x6

.field static final TRANSACTION_scan:I = 0x8

.field static final TRANSACTION_setAnalogForced:I = 0x11

.field static final TRANSACTION_setConfiguration:I = 0x3

.field static final TRANSACTION_setMuted:I = 0x5

.field static final TRANSACTION_startBackgroundScan:I = 0xe

.field static final TRANSACTION_step:I = 0x7

.field static final TRANSACTION_tune:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.radio.ITuner"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITuner;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.hardware.radio.ITuner"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/ITuner;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/radio/ITuner;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/radio/ITuner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 231
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 43
    :sswitch_0
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v13, 0x1

    return v13

    .line 48
    :sswitch_1
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->close()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v13, 0x1

    return v13

    .line 55
    :sswitch_2
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isClosed()Z

    move-result v11

    .line 57
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v11, :cond_0

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v13, 0x1

    return v13

    .line 58
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 63
    .end local v11    # "_result":Z
    :sswitch_3
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    .line 66
    sget-object v13, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 71
    :goto_1
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITuner$Stub;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v13, 0x1

    return v13

    .line 69
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    goto :goto_1

    .line 77
    .end local v3    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :sswitch_4
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v8

    .line 79
    .local v8, "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v8, :cond_2

    .line 81
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v13}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_2
    const/4 v13, 0x1

    return v13

    .line 85
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 91
    .end local v8    # "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    :sswitch_5
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v5, 0x1

    .line 94
    .local v5, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v5}, Landroid/hardware/radio/ITuner$Stub;->setMuted(Z)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v13, 0x1

    return v13

    .line 93
    .end local v5    # "_arg0":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_3

    .line 100
    .end local v5    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isMuted()Z

    move-result v11

    .line 102
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v11, :cond_4

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v13, 0x1

    return v13

    .line 103
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 108
    .end local v11    # "_result":Z
    :sswitch_7
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v5, 0x1

    .line 112
    .restart local v5    # "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v6, 0x1

    .line 113
    .local v6, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v5, v6}, Landroid/hardware/radio/ITuner$Stub;->step(ZZ)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v13, 0x1

    return v13

    .line 110
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_5

    .line 112
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Z
    goto :goto_6

    .line 119
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :sswitch_8
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_7

    const/4 v5, 0x1

    .line 123
    .restart local v5    # "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_8

    const/4 v6, 0x1

    .line 124
    .restart local v6    # "_arg1":Z
    :goto_8
    invoke-virtual {p0, v5, v6}, Landroid/hardware/radio/ITuner$Stub;->scan(ZZ)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v13, 0x1

    return v13

    .line 121
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_7

    .line 123
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Z
    goto :goto_8

    .line 130
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_9

    .line 133
    sget-object v13, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    .line 138
    :goto_9
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->tune(Landroid/hardware/radio/ProgramSelector;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v13, 0x1

    return v13

    .line 136
    :cond_9
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/hardware/radio/ProgramSelector;
    goto :goto_9

    .line 144
    .end local v2    # "_arg0":Landroid/hardware/radio/ProgramSelector;
    :sswitch_a
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancel()V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v13, 0x1

    return v13

    .line 151
    :sswitch_b
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancelAnnouncement()V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v13, 0x1

    return v13

    .line 158
    :sswitch_c
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v9

    .line 160
    .local v9, "_result":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v9, :cond_a

    .line 162
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v13}, Landroid/hardware/radio/RadioManager$ProgramInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    :goto_a
    const/4 v13, 0x1

    return v13

    .line 166
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 172
    .end local v9    # "_result":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :sswitch_d
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITuner$Stub;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 176
    .local v7, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v7, :cond_b

    .line 178
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v13}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    :goto_b
    const/4 v13, 0x1

    return v13

    .line 182
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 188
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/graphics/Bitmap;
    :sswitch_e
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->startBackgroundScan()Z

    move-result v11

    .line 190
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v11, :cond_c

    const/4 v13, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v13, 0x1

    return v13

    .line 191
    :cond_c
    const/4 v13, 0x0

    goto :goto_c

    .line 196
    .end local v11    # "_result":Z
    :sswitch_f
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 199
    .local v12, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 200
    .local v4, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v4}, Landroid/hardware/radio/ITuner$Stub;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 201
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 203
    const/4 v13, 0x1

    return v13

    .line 207
    .end local v4    # "_arg0":Ljava/util/Map;
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .end local v12    # "cl":Ljava/lang/ClassLoader;
    :sswitch_10
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isAnalogForced()Z

    move-result v11

    .line 209
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v11, :cond_d

    const/4 v13, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v13, 0x1

    return v13

    .line 210
    :cond_d
    const/4 v13, 0x0

    goto :goto_d

    .line 215
    .end local v11    # "_result":Z
    :sswitch_11
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_e

    const/4 v5, 0x1

    .line 218
    .restart local v5    # "_arg0":Z
    :goto_e
    invoke-virtual {p0, v5}, Landroid/hardware/radio/ITuner$Stub;->setAnalogForced(Z)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v13, 0x1

    return v13

    .line 217
    .end local v5    # "_arg0":Z
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_e

    .line 224
    .end local v5    # "_arg0":Z
    :sswitch_12
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isAntennaConnected()Z

    move-result v11

    .line 226
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v11, :cond_f

    const/4 v13, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v13, 0x1

    return v13

    .line 227
    :cond_f
    const/4 v13, 0x0

    goto :goto_f

    .line 39
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
