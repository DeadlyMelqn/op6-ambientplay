.class public abstract Landroid/view/autofill/IAutoFillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManagerClient"

.field static final TRANSACTION_authenticate:I = 0x3

.field static final TRANSACTION_autofill:I = 0x2

.field static final TRANSACTION_notifyNoFillUi:I = 0x7

.field static final TRANSACTION_requestHideFillUi:I = 0x6

.field static final TRANSACTION_requestShowFillUi:I = 0x5

.field static final TRANSACTION_setSaveUiState:I = 0x9

.field static final TRANSACTION_setSessionFinished:I = 0xa

.field static final TRANSACTION_setState:I = 0x1

.field static final TRANSACTION_setTrackedViews:I = 0x4

.field static final TRANSACTION_startIntentSender:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;
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
    const-string/jumbo v1, "android.view.autofill.IAutoFillManagerClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/autofill/IAutoFillManagerClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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

    .line 211
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v12, 0x1

    .line 56
    .local v12, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v16, 0x1

    .line 58
    .local v16, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v20, 0x1

    .line 59
    .local v20, "_arg2":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setState(ZZZ)V

    .line 60
    const/4 v4, 0x1

    return v4

    .line 54
    .end local v12    # "_arg0":Z
    .end local v16    # "_arg1":Z
    .end local v20    # "_arg2":Z
    :cond_0
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Z
    goto :goto_0

    .line 56
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_1

    .line 58
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "_arg2":Z
    goto :goto_2

    .line 64
    .end local v12    # "_arg0":Z
    .end local v16    # "_arg1":Z
    .end local v20    # "_arg2":Z
    :sswitch_2
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 68
    .local v5, "_arg0":I
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 70
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v4, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v19

    .line 71
    .local v19, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v15, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;)V

    .line 72
    const/4 v4, 0x1

    return v4

    .line 76
    .end local v5    # "_arg0":I
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    :sswitch_3
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 80
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 82
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/IntentSender;

    .line 89
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    .line 95
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v13, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 96
    const/4 v4, 0x1

    return v4

    .line 86
    :cond_3
    const/16 v18, 0x0

    .local v18, "_arg2":Landroid/content/IntentSender;
    goto :goto_3

    .line 93
    .end local v18    # "_arg2":Landroid/content/IntentSender;
    :cond_4
    const/16 v21, 0x0

    .local v21, "_arg3":Landroid/content/Intent;
    goto :goto_4

    .line 100
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v21    # "_arg3":Landroid/content/Intent;
    :sswitch_4
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 104
    .restart local v5    # "_arg0":I
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/view/autofill/AutofillId;

    .line 106
    .local v17, "_arg1":[Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v20, 0x1

    .line 108
    .restart local v20    # "_arg2":Z
    :goto_5
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/view/autofill/AutofillId;

    .line 109
    .local v22, "_arg3":[Landroid/view/autofill/AutofillId;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    .line 110
    const/4 v4, 0x1

    return v4

    .line 106
    .end local v20    # "_arg2":Z
    .end local v22    # "_arg3":[Landroid/view/autofill/AutofillId;
    :cond_5
    const/16 v20, 0x0

    .restart local v20    # "_arg2":Z
    goto :goto_5

    .line 114
    .end local v5    # "_arg0":I
    .end local v17    # "_arg1":[Landroid/view/autofill/AutofillId;
    .end local v20    # "_arg2":Z
    :sswitch_5
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 118
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 119
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 125
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 127
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 129
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 130
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 136
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v10

    .local v10, "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    move-object/from16 v4, p0

    .line 137
    invoke-virtual/range {v4 .. v10}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 138
    const/4 v4, 0x1

    return v4

    .line 122
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/view/autofill/AutofillId;
    goto :goto_6

    .line 133
    .end local v6    # "_arg1":Landroid/view/autofill/AutofillId;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    :cond_7
    const/4 v9, 0x0

    .local v9, "_arg4":Landroid/graphics/Rect;
    goto :goto_7

    .line 142
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    :sswitch_6
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 147
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 152
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 153
    const/4 v4, 0x1

    return v4

    .line 150
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/view/autofill/AutofillId;
    goto :goto_8

    .line 157
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/view/autofill/AutofillId;
    :sswitch_7
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 161
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 162
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 168
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v20, 0x1

    .line 169
    .restart local v20    # "_arg2":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V

    .line 170
    const/4 v4, 0x1

    return v4

    .line 165
    .end local v20    # "_arg2":Z
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/view/autofill/AutofillId;
    goto :goto_9

    .line 168
    .end local v6    # "_arg1":Landroid/view/autofill/AutofillId;
    :cond_a
    const/16 v20, 0x0

    .restart local v20    # "_arg2":Z
    goto :goto_a

    .line 174
    .end local v5    # "_arg0":I
    .end local v20    # "_arg2":Z
    :sswitch_8
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 177
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentSender;

    .line 183
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 184
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 189
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 190
    const/4 v4, 0x1

    return v4

    .line 180
    :cond_b
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/content/IntentSender;
    goto :goto_b

    .line 187
    .end local v11    # "_arg0":Landroid/content/IntentSender;
    :cond_c
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/content/Intent;
    goto :goto_c

    .line 194
    .end local v14    # "_arg1":Landroid/content/Intent;
    :sswitch_9
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v16, 0x1

    .line 199
    .restart local v16    # "_arg1":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSaveUiState(IZ)V

    .line 200
    const/4 v4, 0x1

    return v4

    .line 198
    .end local v16    # "_arg1":Z
    :cond_d
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_d

    .line 204
    .end local v5    # "_arg0":I
    .end local v16    # "_arg1":Z
    :sswitch_a
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 207
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSessionFinished(I)V

    .line 208
    const/4 v4, 0x1

    return v4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
