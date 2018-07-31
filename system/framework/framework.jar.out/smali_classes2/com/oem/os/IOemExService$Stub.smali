.class public abstract Lcom/oem/os/IOemExService$Stub;
.super Landroid/os/Binder;
.source "IOemExService.java"

# interfaces
.implements Lcom/oem/os/IOemExService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oem/os/IOemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oem/os/IOemExService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oem.os.IOemExService"

.field static final TRANSACTION_addThreeKeyPolicy:I = 0x16

.field static final TRANSACTION_disableDefaultThreeKey:I = 0x14

.field static final TRANSACTION_dumpLightBugreport:I = 0x4

.field static final TRANSACTION_enalbeDefaultThreeKey:I = 0x15

.field static final TRANSACTION_fetchOnlineConfig:I = 0x2

.field static final TRANSACTION_getConfigValues:I = 0x3

.field static final TRANSACTION_getThreeKeyStatus:I = 0x19

.field static final TRANSACTION_monitorSceneChanging:I = 0x5

.field static final TRANSACTION_pauseExInputEvent:I = 0x9

.field static final TRANSACTION_preEvaluateModeStatus:I = 0x6

.field static final TRANSACTION_registerInputEvent:I = 0x7

.field static final TRANSACTION_removeThreeKeyPolicy:I = 0x17

.field static final TRANSACTION_resetThreeKey:I = 0x18

.field static final TRANSACTION_resumeExInputEvent:I = 0xa

.field static final TRANSACTION_setGammaData:I = 0x11

.field static final TRANSACTION_setHomeUpLock:I = 0x10

.field static final TRANSACTION_setInteractive:I = 0xd

.field static final TRANSACTION_setKeyMode:I = 0xf

.field static final TRANSACTION_setLaserSensorCrossTalk:I = 0x13

.field static final TRANSACTION_setLaserSensorOffset:I = 0x12

.field static final TRANSACTION_setSystemProperties:I = 0xe

.field static final TRANSACTION_startApkInstall:I = 0x1

.field static final TRANSACTION_startUevent:I = 0xb

.field static final TRANSACTION_stopUevent:I = 0xc

.field static final TRANSACTION_unregisterInputEvent:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.oem.os.IOemExService"

    invoke-virtual {p0, p0, v0}, Lcom/oem/os/IOemExService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;
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
    const-string/jumbo v1, "com.oem.os.IOemExService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oem/os/IOemExService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/oem/os/IOemExService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/oem/os/IOemExService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oem/os/IOemExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 17
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

    .line 278
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v16

    return v16

    .line 43
    :sswitch_0
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v16, 0x1

    return v16

    .line 48
    :sswitch_1
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oem/os/IOemExService$Stub;->startApkInstall(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/16 v16, 0x1

    return v16

    .line 57
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 60
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oem/os/IOemExService$Stub;->fetchOnlineConfig(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/16 v16, 0x1

    return v16

    .line 66
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 69
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oem/os/IOemExService$Stub;->getConfigValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 70
    .local v14, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 72
    const/16 v16, 0x1

    return v16

    .line 76
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/util/Map;
    :sswitch_4
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oem/os/IOemExService$Stub;->dumpLightBugreport(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/16 v16, 0x1

    return v16

    .line 85
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_0

    const/4 v7, 0x1

    .line 88
    .local v7, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oem/os/IOemExService$Stub;->monitorSceneChanging(Z)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    const/16 v16, 0x1

    return v16

    .line 87
    .end local v7    # "_arg0":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_0

    .line 94
    .end local v7    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 99
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/oem/os/IOemExService$Stub;->preEvaluateModeStatus(II)Z

    move-result v15

    .line 100
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v15, :cond_1

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/16 v16, 0x1

    return v16

    .line 101
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 106
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_7
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    .line 110
    .local v3, "_arg0":Lcom/oem/os/IOemExInputCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 111
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/oem/os/IOemExService$Stub;->registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z

    move-result v15

    .line 112
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v15, :cond_2

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/16 v16, 0x1

    return v16

    .line 113
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 118
    .end local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    .end local v8    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_8
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    .line 121
    .restart local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oem/os/IOemExService$Stub;->unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/16 v16, 0x1

    return v16

    .line 127
    .end local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    :sswitch_9
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->pauseExInputEvent()V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/16 v16, 0x1

    return v16

    .line 134
    :sswitch_a
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->resumeExInputEvent()V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/16 v16, 0x1

    return v16

    .line 141
    :sswitch_b
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v9

    .line 146
    .local v9, "_arg1":Lcom/oem/os/IOemUeventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/oem/os/IOemExService$Stub;->startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z

    move-result v15

    .line 147
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v15, :cond_3

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/16 v16, 0x1

    return v16

    .line 148
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 153
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Lcom/oem/os/IOemUeventCallback;
    .end local v15    # "_result":Z
    :sswitch_c
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v4

    .line 156
    .local v4, "_arg0":Lcom/oem/os/IOemUeventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oem/os/IOemExService$Stub;->stopUevent(Lcom/oem/os/IOemUeventCallback;)Z

    move-result v15

    .line 157
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v15, :cond_4

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/16 v16, 0x1

    return v16

    .line 158
    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    .line 163
    .end local v4    # "_arg0":Lcom/oem/os/IOemUeventCallback;
    .end local v15    # "_result":Z
    :sswitch_d
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_5

    const/4 v7, 0x1

    .line 167
    .restart local v7    # "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 168
    .local v10, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v11}, Lcom/oem/os/IOemExService$Stub;->setInteractive(ZJ)Z

    move-result v15

    .line 169
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v15, :cond_6

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/16 v16, 0x1

    return v16

    .line 165
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":J
    .end local v15    # "_result":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_5

    .line 170
    .restart local v10    # "_arg1":J
    .restart local v15    # "_result":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_6

    .line 175
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":J
    .end local v15    # "_result":Z
    :sswitch_e
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 179
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/oem/os/IOemExService$Stub;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 181
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v15, :cond_7

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/16 v16, 0x1

    return v16

    .line 182
    :cond_7
    const/16 v16, 0x0

    goto :goto_7

    .line 187
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_f
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setKeyMode(I)Z

    move-result v15

    .line 191
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v15, :cond_8

    const/16 v16, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/16 v16, 0x1

    return v16

    .line 192
    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 197
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Z
    :sswitch_10
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->setHomeUpLock()Z

    move-result v15

    .line 199
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v15, :cond_9

    const/16 v16, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/16 v16, 0x1

    return v16

    .line 200
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 205
    .end local v15    # "_result":Z
    :sswitch_11
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setGammaData(I)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/16 v16, 0x1

    return v16

    .line 214
    .end local v2    # "_arg0":I
    :sswitch_12
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorOffset(I)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/16 v16, 0x1

    return v16

    .line 223
    .end local v2    # "_arg0":I
    :sswitch_13
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorCrossTalk(I)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/16 v16, 0x1

    return v16

    .line 232
    .end local v2    # "_arg0":I
    :sswitch_14
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->disableDefaultThreeKey()V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/16 v16, 0x1

    return v16

    .line 239
    :sswitch_15
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->enalbeDefaultThreeKey()V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/16 v16, 0x1

    return v16

    .line 246
    :sswitch_16
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v5

    .line 249
    .local v5, "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oem/os/IOemExService$Stub;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/16 v16, 0x1

    return v16

    .line 255
    .end local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_17
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v5

    .line 258
    .restart local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oem/os/IOemExService$Stub;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/16 v16, 0x1

    return v16

    .line 264
    .end local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_18
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->resetThreeKey()V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/16 v16, 0x1

    return v16

    .line 271
    :sswitch_19
    const-string/jumbo v16, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->getThreeKeyStatus()I

    move-result v13

    .line 273
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/16 v16, 0x1

    return v16

    .line 39
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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
