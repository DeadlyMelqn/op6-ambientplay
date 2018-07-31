.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x6

.field static final TRANSACTION_clearLastInputMethodWindowForTransition:I = 0x1e

.field static final TRANSACTION_createInputContentUriToken:I = 0x1f

.field static final TRANSACTION_finishInput:I = 0x8

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x16

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x3

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x1d

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x4

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x5

.field static final TRANSACTION_hideMySoftInput:I = 0x10

.field static final TRANSACTION_hideSoftInput:I = 0xa

.field static final TRANSACTION_hideSoftInputForLongshot:I = 0x22

.field static final TRANSACTION_notifySuggestionPicked:I = 0x15

.field static final TRANSACTION_notifyUserAction:I = 0x21

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x14

.field static final TRANSACTION_removeClient:I = 0x7

.field static final TRANSACTION_reportFullscreenMode:I = 0x20

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1c

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x17

.field static final TRANSACTION_setImeWindowStatus:I = 0x13

.field static final TRANSACTION_setInputMethod:I = 0xe

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0xf

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1b

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1a

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xd

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xc

.field static final TRANSACTION_showMySoftInput:I = 0x11

.field static final TRANSACTION_showSoftInput:I = 0x9

.field static final TRANSACTION_startInputOrWindowGainedFocus:I = 0xb

.field static final TRANSACTION_switchToLastInputMethod:I = 0x18

.field static final TRANSACTION_switchToNextInputMethod:I = 0x19

.field static final TRANSACTION_updateStatusIcon:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 40
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 495
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 48
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x1

    return v4

    .line 53
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    move-result-object v37

    .line 55
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v4, 0x1

    return v4

    .line 61
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v37

    .line 63
    .restart local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    const/4 v4, 0x1

    return v4

    .line 69
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 73
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v26, 0x1

    .line 74
    .local v26, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v38

    .line 75
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 77
    const/4 v4, 0x1

    return v4

    .line 73
    .end local v26    # "_arg1":Z
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_0

    .line 81
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v33

    .line 83
    .local v33, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v33, :cond_1

    .line 85
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 89
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 95
    .end local v33    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v36

    .line 97
    .local v36, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 99
    const/4 v4, 0x1

    return v4

    .line 103
    .end local v36    # "_result":Ljava/util/List;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 107
    .local v17, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v24

    .line 109
    .local v24, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 111
    .local v28, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 112
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v4, 0x1

    return v4

    .line 118
    .end local v8    # "_arg3":I
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v24    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v28    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 121
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v4, 0x1

    return v4

    .line 127
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 130
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v4, 0x1

    return v4

    .line 136
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 140
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 142
    .local v20, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/ResultReceiver;

    .line 148
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v39

    .line 149
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v39, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v4, 0x1

    return v4

    .line 146
    .end local v39    # "_result":Z
    :cond_2
    const/16 v29, 0x0

    .local v29, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_2

    .line 150
    .end local v29    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v39    # "_result":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 155
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    .end local v39    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 159
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 161
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/ResultReceiver;

    .line 167
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v39

    .line 168
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v39, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v4, 0x1

    return v4

    .line 165
    .end local v39    # "_result":Z
    :cond_4
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_4

    .line 169
    .end local v29    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v39    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 174
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    .end local v39    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v6

    .line 180
    .local v6, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 182
    .local v7, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 184
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 186
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 188
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 189
    sget-object v4, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    .line 195
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v12

    .line 197
    .local v12, "_arg7":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg8":I
    move-object/from16 v4, p0

    .line 198
    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v35

    .line 199
    .local v35, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v35, :cond_7

    .line 201
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v4, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 192
    .end local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_arg8":I
    .end local v35    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_6
    const/4 v11, 0x0

    .local v11, "_arg6":Landroid/view/inputmethod/EditorInfo;
    goto :goto_6

    .line 205
    .end local v11    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .restart local v13    # "_arg8":I
    .restart local v35    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 211
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_arg8":I
    .end local v35    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 215
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 216
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v4, 0x1

    return v4

    .line 222
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 226
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 227
    .local v25, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v4, 0x1

    return v4

    .line 233
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v25    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 237
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 238
    .restart local v25    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v4, 0x1

    return v4

    .line 244
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 248
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 250
    .restart local v25    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 251
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/inputmethod/InputMethodSubtype;

    .line 256
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v4, 0x1

    return v4

    .line 254
    :cond_8
    const/16 v30, 0x0

    .local v30, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_8

    .line 262
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 266
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 267
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v4, 0x1

    return v4

    .line 273
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 277
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 278
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v4, 0x1

    return v4

    .line 284
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 288
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 290
    .restart local v25    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 291
    .restart local v28    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v4, 0x1

    return v4

    .line 297
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":I
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 301
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    .line 303
    .local v22, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 305
    .restart local v28    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 306
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v0, v14, v1, v2, v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v4, 0x1

    return v4

    .line 312
    .end local v8    # "_arg3":I
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v22    # "_arg1":Landroid/os/IBinder;
    .end local v28    # "_arg2":I
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    sget-object v4, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/SuggestionSpan;

    .line 315
    .local v19, "_arg0":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v4, 0x1

    return v4

    .line 321
    .end local v19    # "_arg0":[Landroid/text/style/SuggestionSpan;
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 324
    sget-object v4, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/text/style/SuggestionSpan;

    .line 330
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 332
    .restart local v25    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 333
    .restart local v28    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    move-result v39

    .line 334
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    if-eqz v39, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v4, 0x1

    return v4

    .line 327
    .end local v25    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":I
    .end local v39    # "_result":Z
    :cond_9
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/text/style/SuggestionSpan;
    goto :goto_9

    .line 335
    .end local v15    # "_arg0":Landroid/text/style/SuggestionSpan;
    .restart local v25    # "_arg1":Ljava/lang/String;
    .restart local v28    # "_arg2":I
    .restart local v39    # "_result":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 340
    .end local v25    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":I
    .end local v39    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v33

    .line 342
    .restart local v33    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v33, :cond_b

    .line 344
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 350
    :goto_b
    const/4 v4, 0x1

    return v4

    .line 348
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 354
    .end local v33    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 357
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 362
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v39

    .line 363
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v39, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v4, 0x1

    return v4

    .line 360
    .end local v39    # "_result":Z
    :cond_c
    const/16 v16, 0x0

    .local v16, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_c

    .line 364
    .end local v16    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v39    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 369
    .end local v39    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 372
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    move-result v39

    .line 373
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v39, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v4, 0x1

    return v4

    .line 374
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 379
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v39    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 383
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v26, 0x1

    .line 384
    .restart local v26    # "_arg1":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v39

    .line 385
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v39, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v4, 0x1

    return v4

    .line 383
    .end local v26    # "_arg1":Z
    .end local v39    # "_result":Z
    :cond_f
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_f

    .line 386
    .restart local v39    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    .line 391
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_arg1":Z
    .end local v39    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 394
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v39

    .line 395
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v39, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v4, 0x1

    return v4

    .line 396
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 401
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v39    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 405
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v26, 0x1

    .line 406
    .restart local v26    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    move-result v39

    .line 407
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v39, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v4, 0x1

    return v4

    .line 405
    .end local v26    # "_arg1":Z
    .end local v39    # "_result":Z
    :cond_12
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_12

    .line 408
    .restart local v39    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 413
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Z
    .end local v39    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 417
    .restart local v18    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 418
    .local v27, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v4, 0x1

    return v4

    .line 424
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight()I

    move-result v32

    .line 426
    .local v32, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v4, 0x1

    return v4

    .line 432
    .end local v32    # "_result":I
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 435
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v4, 0x1

    return v4

    .line 441
    .end local v14    # "_arg0":Landroid/os/IBinder;
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 445
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 446
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 452
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 453
    .local v31, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v34

    .line 454
    .local v34, "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v34, :cond_15

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 456
    const/4 v4, 0x1

    return v4

    .line 449
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v34    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :cond_14
    const/16 v21, 0x0

    .local v21, "_arg1":Landroid/net/Uri;
    goto :goto_14

    .line 455
    .end local v21    # "_arg1":Landroid/net/Uri;
    .restart local v31    # "_arg2":Ljava/lang/String;
    .restart local v34    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 460
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v34    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 464
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/16 v26, 0x1

    .line 465
    .restart local v26    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    const/4 v4, 0x1

    return v4

    .line 464
    .end local v26    # "_arg1":Z
    :cond_16
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_16

    .line 471
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_arg1":Z
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 474
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifyUserAction(I)V

    .line 475
    const/4 v4, 0x1

    return v4

    .line 479
    .end local v5    # "_arg0":I
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 483
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 484
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ResultReceiver;

    .line 489
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z

    move-result v39

    .line 490
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v39, :cond_18

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    const/4 v4, 0x1

    return v4

    .line 487
    .end local v39    # "_result":Z
    :cond_17
    const/16 v23, 0x0

    .local v23, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_17

    .line 491
    .end local v23    # "_arg1":Landroid/os/ResultReceiver;
    .restart local v39    # "_result":Z
    :cond_18
    const/4 v4, 0x0

    goto :goto_18

    .line 44
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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
