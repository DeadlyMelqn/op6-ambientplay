.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_onAccessibilityButtonAvailabilityChanged:I = 0xd

.field static final TRANSACTION_onAccessibilityButtonClicked:I = 0xc

.field static final TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final TRANSACTION_onFingerprintCapturingGesturesChanged:I = 0xa

.field static final TRANSACTION_onFingerprintGesture:I = 0xb

.field static final TRANSACTION_onGesture:I = 0x4

.field static final TRANSACTION_onInterrupt:I = 0x3

.field static final TRANSACTION_onKeyEvent:I = 0x6

.field static final TRANSACTION_onMagnificationChanged:I = 0x7

.field static final TRANSACTION_onPerformGestureResult:I = 0x9

.field static final TRANSACTION_onSoftKeyboardShowModeChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
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
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 180
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 47
    :sswitch_0
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v13, 0x1

    return v13

    .line 52
    :sswitch_1
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 56
    .local v2, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 58
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 59
    .local v11, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v8, v11}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 60
    const/4 v13, 0x1

    return v13

    .line 64
    .end local v2    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v8    # "_arg1":I
    .end local v11    # "_arg2":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    .line 67
    sget-object v13, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityEvent;

    .line 73
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v9, 0x1

    .line 74
    .local v9, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v5, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 75
    const/4 v13, 0x1

    return v13

    .line 70
    .end local v9    # "_arg1":Z
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    .line 73
    .end local v5    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_1

    .line 79
    .end local v9    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    .line 81
    const/4 v13, 0x1

    return v13

    .line 85
    :sswitch_4
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(I)V

    .line 89
    const/4 v13, 0x1

    return v13

    .line 93
    .end local v1    # "_arg0":I
    :sswitch_5
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    .line 95
    const/4 v13, 0x1

    return v13

    .line 99
    :sswitch_6
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    .line 102
    sget-object v13, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 108
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 109
    .restart local v8    # "_arg1":I
    invoke-virtual {p0, v4, v8}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 110
    const/4 v13, 0x1

    return v13

    .line 105
    .end local v8    # "_arg1":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/view/KeyEvent;
    goto :goto_2

    .line 114
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_7
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    .line 117
    sget-object v13, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 123
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 125
    .local v7, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 127
    .local v10, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 128
    .local v12, "_arg3":F
    invoke-virtual {p0, v3, v7, v10, v12}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(Landroid/graphics/Region;FFF)V

    .line 129
    const/4 v13, 0x1

    return v13

    .line 120
    .end local v7    # "_arg1":F
    .end local v10    # "_arg2":F
    .end local v12    # "_arg3":F
    :cond_3
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/graphics/Region;
    goto :goto_3

    .line 133
    .end local v3    # "_arg0":Landroid/graphics/Region;
    :sswitch_8
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 136
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    .line 137
    const/4 v13, 0x1

    return v13

    .line 141
    .end local v1    # "_arg0":I
    :sswitch_9
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x1

    .line 146
    .restart local v9    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v1, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    .line 147
    const/4 v13, 0x1

    return v13

    .line 145
    .end local v9    # "_arg1":Z
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_4

    .line 151
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":Z
    :sswitch_a
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v6, 0x1

    .line 154
    .local v6, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintCapturingGesturesChanged(Z)V

    .line 155
    const/4 v13, 0x1

    return v13

    .line 153
    .end local v6    # "_arg0":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_5

    .line 159
    .end local v6    # "_arg0":Z
    :sswitch_b
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintGesture(I)V

    .line 163
    const/4 v13, 0x1

    return v13

    .line 167
    .end local v1    # "_arg0":I
    :sswitch_c
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonClicked()V

    .line 169
    const/4 v13, 0x1

    return v13

    .line 173
    :sswitch_d
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v6, 0x1

    .line 176
    .restart local v6    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 177
    const/4 v13, 0x1

    return v13

    .line 175
    .end local v6    # "_arg0":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_6

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
