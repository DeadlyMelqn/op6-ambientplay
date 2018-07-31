.class public abstract Lcom/oneplus/os/IOnePlusService$Stub;
.super Landroid/os/Binder;
.source "IOnePlusService.java"

# interfaces
.implements Lcom/oneplus/os/IOnePlusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/os/IOnePlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/os/IOnePlusService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.os.IOnePlusService"

.field static final TRANSACTION_getAllAppControlModes:I = 0x1

.field static final TRANSACTION_getAppControlMode:I = 0x5

.field static final TRANSACTION_getAppControlState:I = 0x7

.field static final TRANSACTION_getBgPowerHungryList:I = 0xb

.field static final TRANSACTION_getGeneralUsedPackageList:I = 0x3

.field static final TRANSACTION_getHighUsedPackageList:I = 0x4

.field static final TRANSACTION_getLowUsedPackageList:I = 0x2

.field static final TRANSACTION_getPermissionService:I = 0xf

.field static final TRANSACTION_isNotificationLedEnabled:I = 0xa

.field static final TRANSACTION_isRequestPermission:I = 0xd

.field static final TRANSACTION_setAppControlMode:I = 0x6

.field static final TRANSACTION_setAppControlState:I = 0x8

.field static final TRANSACTION_setNotificationLedStatus:I = 0x9

.field static final TRANSACTION_setPermissionServiceBinderProxy:I = 0xe

.field static final TRANSACTION_stopBgPowerHungryApp:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.oneplus.os.IOnePlusService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/os/IOnePlusService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;
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
    const-string/jumbo v1, "com.oneplus.os.IOnePlusService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/os/IOnePlusService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/oneplus/os/IOnePlusService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/oneplus/os/IOnePlusService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/os/IOnePlusService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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

    .line 199
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 43
    :sswitch_0
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v14, 0x1

    return v14

    .line 48
    :sswitch_1
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOnePlusService$Stub;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v10

    .line 52
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    const/4 v14, 0x1

    return v14

    .line 58
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    :sswitch_2
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->getLowUsedPackageList()Ljava/util/List;

    move-result-object v12

    .line 60
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 62
    const/4 v14, 0x1

    return v14

    .line 66
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->getGeneralUsedPackageList()Ljava/util/List;

    move-result-object v12

    .line 68
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 70
    const/4 v14, 0x1

    return v14

    .line 74
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->getHighUsedPackageList()Ljava/util/List;

    move-result-object v12

    .line 76
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 78
    const/4 v14, 0x1

    return v14

    .line 82
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 87
    .local v5, "_arg1":I
    invoke-virtual {p0, v3, v5}, Lcom/oneplus/os/IOnePlusService$Stub;->getAppControlMode(Ljava/lang/String;I)I

    move-result v8

    .line 88
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v14, 0x1

    return v14

    .line 94
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_6
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 100
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 101
    .local v7, "_arg2":I
    invoke-virtual {p0, v3, v5, v7}, Lcom/oneplus/os/IOnePlusService$Stub;->setAppControlMode(Ljava/lang/String;II)I

    move-result v8

    .line 102
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v14, 0x1

    return v14

    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_result":I
    :sswitch_7
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOnePlusService$Stub;->getAppControlState(I)I

    move-result v8

    .line 112
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v14, 0x1

    return v14

    .line 118
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_8
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 123
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v1, v5}, Lcom/oneplus/os/IOnePlusService$Stub;->setAppControlState(II)I

    move-result v8

    .line 124
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v14, 0x1

    return v14

    .line 130
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_9
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    const/4 v6, 0x1

    .line 135
    .local v6, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v3, v6}, Lcom/oneplus/os/IOnePlusService$Stub;->setNotificationLedStatus(Ljava/lang/String;Z)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v14, 0x1

    return v14

    .line 134
    .end local v6    # "_arg1":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Z
    goto :goto_0

    .line 141
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    :sswitch_a
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/oneplus/os/IOnePlusService$Stub;->isNotificationLedEnabled(Ljava/lang/String;)Z

    move-result v13

    .line 145
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v13, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v14, 0x1

    return v14

    .line 146
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 151
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_b
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v11

    .line 153
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/highpower/HighPowerApp;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 155
    const/4 v14, 0x1

    return v14

    .line 159
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/highpower/HighPowerApp;>;"
    :sswitch_c
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 164
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v3, v5}, Lcom/oneplus/os/IOnePlusService$Stub;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v14, 0x1

    return v14

    .line 170
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_d
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v4, 0x1

    .line 173
    .local v4, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v4}, Lcom/oneplus/os/IOnePlusService$Stub;->isRequestPermission(Z)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v14, 0x1

    return v14

    .line 172
    .end local v4    # "_arg0":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_2

    .line 179
    .end local v4    # "_arg0":Z
    :sswitch_e
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 183
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 184
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v2, v5}, Lcom/oneplus/os/IOnePlusService$Stub;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v14, 0x1

    return v14

    .line 190
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":I
    :sswitch_f
    const-string/jumbo v14, "com.oneplus.os.IOnePlusService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOnePlusService$Stub;->getPermissionService(I)Landroid/os/IBinder;

    move-result-object v9

    .line 194
    .local v9, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 196
    const/4 v14, 0x1

    return v14

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
