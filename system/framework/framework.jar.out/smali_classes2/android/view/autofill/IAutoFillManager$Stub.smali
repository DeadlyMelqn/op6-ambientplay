.class public abstract Landroid/view/autofill/IAutoFillManager$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManager.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManager"

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_cancelSession:I = 0x9

.field static final TRANSACTION_disableOwnedAutofillServices:I = 0xc

.field static final TRANSACTION_finishSession:I = 0x8

.field static final TRANSACTION_getFillEventHistory:I = 0x4

.field static final TRANSACTION_isServiceEnabled:I = 0xe

.field static final TRANSACTION_isServiceSupported:I = 0xd

.field static final TRANSACTION_onPendingSaveUi:I = 0xf

.field static final TRANSACTION_removeClient:I = 0x2

.field static final TRANSACTION_restoreSession:I = 0x5

.field static final TRANSACTION_setAuthenticationResult:I = 0xa

.field static final TRANSACTION_setHasCallback:I = 0xb

.field static final TRANSACTION_startSession:I = 0x3

.field static final TRANSACTION_updateOrRestartSession:I = 0x7

.field static final TRANSACTION_updateSession:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.autofill.IAutoFillManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.view.autofill.IAutoFillManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/autofill/IAutoFillManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 46
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 331
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x1

    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v36

    .line 56
    .local v36, "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 57
    .local v37, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I

    move-result v43

    .line 58
    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 v5, 0x1

    return v5

    .line 64
    .end local v36    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v37    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_2
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v36

    .line 68
    .restart local v36    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 69
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v5, 0x1

    return v5

    .line 75
    .end local v36    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v37    # "_arg1":I
    :sswitch_3
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 79
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 81
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    sget-object v5, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 88
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 95
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillValue;

    .line 102
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 104
    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v12, 0x1

    .line 106
    .local v12, "_arg6":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 108
    .local v13, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 109
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    :goto_4
    move-object/from16 v5, p0

    .line 114
    invoke-virtual/range {v5 .. v14}, Landroid/view/autofill/IAutoFillManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;)I

    move-result v43

    .line 115
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v5, 0x1

    return v5

    .line 85
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Z
    .end local v13    # "_arg7":I
    .end local v43    # "_result":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/view/autofill/AutofillId;
    goto :goto_0

    .line 92
    .end local v8    # "_arg2":Landroid/view/autofill/AutofillId;
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg3":Landroid/graphics/Rect;
    goto :goto_1

    .line 99
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    .local v10, "_arg4":Landroid/view/autofill/AutofillValue;
    goto :goto_2

    .line 104
    .end local v10    # "_arg4":Landroid/view/autofill/AutofillValue;
    .restart local v11    # "_arg5":I
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "_arg6":Z
    goto :goto_3

    .line 112
    .restart local v13    # "_arg7":I
    :cond_4
    const/4 v14, 0x0

    .local v14, "_arg8":Landroid/content/ComponentName;
    goto :goto_4

    .line 121
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Z
    .end local v13    # "_arg7":I
    .end local v14    # "_arg8":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v44

    .line 123
    .local v44, "_result":Landroid/service/autofill/FillEventHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v44, :cond_5

    .line 125
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v5, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/service/autofill/FillEventHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 129
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 135
    .end local v44    # "_result":Landroid/service/autofill/FillEventHistory;
    :sswitch_5
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 139
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 141
    .restart local v7    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v40

    .line 142
    .local v40, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v45

    .line 143
    .local v45, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v45, :cond_6

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v5, 0x1

    return v5

    .line 144
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 149
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v16    # "_arg0":I
    .end local v40    # "_arg2":Landroid/os/IBinder;
    .end local v45    # "_result":Z
    :sswitch_6
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 153
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 154
    sget-object v5, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/autofill/AutofillId;

    .line 160
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 161
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    .line 167
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 168
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/autofill/AutofillValue;

    .line 174
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 176
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 178
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg6":I
    move-object/from16 v15, p0

    move/from16 v21, v11

    .line 179
    invoke-virtual/range {v15 .. v22}, Landroid/view/autofill/IAutoFillManager$Stub;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v5, 0x1

    return v5

    .line 157
    .end local v11    # "_arg5":I
    .end local v20    # "_arg4":I
    .end local v22    # "_arg6":I
    :cond_7
    const/16 v17, 0x0

    .local v17, "_arg1":Landroid/view/autofill/AutofillId;
    goto :goto_7

    .line 164
    .end local v17    # "_arg1":Landroid/view/autofill/AutofillId;
    :cond_8
    const/16 v18, 0x0

    .local v18, "_arg2":Landroid/graphics/Rect;
    goto :goto_8

    .line 171
    .end local v18    # "_arg2":Landroid/graphics/Rect;
    :cond_9
    const/16 v19, 0x0

    .local v19, "_arg3":Landroid/view/autofill/AutofillValue;
    goto :goto_9

    .line 185
    .end local v16    # "_arg0":I
    .end local v19    # "_arg3":Landroid/view/autofill/AutofillValue;
    :sswitch_7
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 189
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 191
    .restart local v7    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 192
    sget-object v5, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 198
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 199
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 205
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 206
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillValue;

    .line 212
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 214
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v12, 0x1

    .line 216
    .restart local v12    # "_arg6":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 218
    .restart local v13    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 219
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    .line 225
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 227
    .local v33, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, "_arg10":I
    move-object/from16 v23, p0

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v32, v14

    .line 228
    invoke-virtual/range {v23 .. v34}, Landroid/view/autofill/IAutoFillManager$Stub;->updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;II)I

    move-result v43

    .line 229
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v5, 0x1

    return v5

    .line 195
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Z
    .end local v13    # "_arg7":I
    .end local v33    # "_arg9":I
    .end local v34    # "_arg10":I
    .end local v43    # "_result":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/view/autofill/AutofillId;
    goto :goto_a

    .line 202
    .end local v8    # "_arg2":Landroid/view/autofill/AutofillId;
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Landroid/graphics/Rect;
    goto :goto_b

    .line 209
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    :cond_c
    const/4 v10, 0x0

    .restart local v10    # "_arg4":Landroid/view/autofill/AutofillValue;
    goto :goto_c

    .line 214
    .end local v10    # "_arg4":Landroid/view/autofill/AutofillValue;
    .restart local v11    # "_arg5":I
    :cond_d
    const/4 v12, 0x0

    .restart local v12    # "_arg6":Z
    goto :goto_d

    .line 222
    .restart local v13    # "_arg7":I
    :cond_e
    const/4 v14, 0x0

    .restart local v14    # "_arg8":Landroid/content/ComponentName;
    goto :goto_e

    .line 235
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Z
    .end local v13    # "_arg7":I
    .end local v14    # "_arg8":Landroid/content/ComponentName;
    :sswitch_8
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 239
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 240
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->finishSession(II)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/4 v5, 0x1

    return v5

    .line 246
    .end local v16    # "_arg0":I
    .end local v37    # "_arg1":I
    :sswitch_9
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 250
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 251
    .restart local v37    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->cancelSession(II)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    const/4 v5, 0x1

    return v5

    .line 257
    .end local v16    # "_arg0":I
    .end local v37    # "_arg1":I
    :sswitch_a
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 260
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/Bundle;

    .line 266
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 268
    .restart local v37    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 270
    .local v39, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 271
    .local v42, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v37

    move/from16 v3, v39

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->setAuthenticationResult(Landroid/os/Bundle;III)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v5, 0x1

    return v5

    .line 263
    .end local v37    # "_arg1":I
    .end local v39    # "_arg2":I
    .end local v42    # "_arg3":I
    :cond_f
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/os/Bundle;
    goto :goto_f

    .line 277
    .end local v35    # "_arg0":Landroid/os/Bundle;
    :sswitch_b
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 281
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 283
    .restart local v37    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v41, 0x1

    .line 284
    .local v41, "_arg2":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v37

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setHasCallback(IIZ)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v5, 0x1

    return v5

    .line 283
    .end local v41    # "_arg2":Z
    :cond_10
    const/16 v41, 0x0

    .restart local v41    # "_arg2":Z
    goto :goto_10

    .line 290
    .end local v16    # "_arg0":I
    .end local v37    # "_arg1":I
    .end local v41    # "_arg2":Z
    :sswitch_c
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 293
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->disableOwnedAutofillServices(I)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v5, 0x1

    return v5

    .line 299
    .end local v16    # "_arg0":I
    :sswitch_d
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 302
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceSupported(I)Z

    move-result v45

    .line 303
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v45, :cond_11

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v5, 0x1

    return v5

    .line 304
    :cond_11
    const/4 v5, 0x0

    goto :goto_11

    .line 309
    .end local v16    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_e
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 313
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 314
    .local v38, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceEnabled(ILjava/lang/String;)Z

    move-result v45

    .line 315
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v45, :cond_12

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v5, 0x1

    return v5

    .line 316
    :cond_12
    const/4 v5, 0x0

    goto :goto_12

    .line 321
    .end local v16    # "_arg0":I
    .end local v38    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_f
    const-string/jumbo v5, "android.view.autofill.IAutoFillManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 325
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 326
    .restart local v7    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Landroid/view/autofill/IAutoFillManager$Stub;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v5, 0x1

    return v5

    .line 43
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
