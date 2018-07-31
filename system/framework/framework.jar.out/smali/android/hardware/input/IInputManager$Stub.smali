.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_cancelVibrate:I = 0x19

.field static final TRANSACTION_createInputForwarder:I = 0x1d

.field static final TRANSACTION_disableInputDevice:I = 0x5

.field static final TRANSACTION_enableInputDevice:I = 0x4

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x10

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xd

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x13

.field static final TRANSACTION_getKeyboardLayouts:I = 0xb

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x9

.field static final TRANSACTION_hasKeys:I = 0x6

.field static final TRANSACTION_injectInputEvent:I = 0x8

.field static final TRANSACTION_isInTabletMode:I = 0x16

.field static final TRANSACTION_isInputDeviceEnabled:I = 0x3

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x15

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x17

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x12

.field static final TRANSACTION_requestPointerCapture:I = 0x1c

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_setCustomPointerIcon:I = 0x1b

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x14

.field static final TRANSACTION_setPointerIconType:I = 0x1a

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0xa

.field static final TRANSACTION_tryPointerSpeed:I = 0x7

.field static final TRANSACTION_vibrate:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
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
    const-string/jumbo v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/input/IInputManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 37
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

    .line 462
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v36

    return v36

    .line 43
    :sswitch_0
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v36, 0x1

    return v36

    .line 48
    :sswitch_1
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v30

    .line 52
    .local v30, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v30, :cond_0

    .line 54
    const/16 v36, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/16 v36, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_0
    const/16 v36, 0x1

    return v36

    .line 58
    :cond_0
    const/16 v36, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v4    # "_arg0":I
    .end local v30    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v33

    .line 66
    .local v33, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    const/16 v36, 0x1

    return v36

    .line 72
    .end local v33    # "_result":[I
    :sswitch_3
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 75
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->isInputDeviceEnabled(I)Z

    move-result v32

    .line 76
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v32, :cond_1

    const/16 v36, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/16 v36, 0x1

    return v36

    .line 77
    :cond_1
    const/16 v36, 0x0

    goto :goto_1

    .line 82
    .end local v4    # "_arg0":I
    .end local v32    # "_result":Z
    :sswitch_4
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/16 v36, 0x1

    return v36

    .line 91
    .end local v4    # "_arg0":I
    :sswitch_5
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/16 v36, 0x1

    return v36

    .line 100
    .end local v4    # "_arg0":I
    :sswitch_6
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 106
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 108
    .local v21, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 109
    .local v25, "_arg3_length":I
    if-gez v25, :cond_2

    .line 110
    const/16 v24, 0x0

    .line 115
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v32

    .line 116
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v32, :cond_3

    const/16 v36, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 119
    const/16 v36, 0x1

    return v36

    .line 113
    .end local v32    # "_result":Z
    :cond_2
    move/from16 v0, v25

    new-array v0, v0, [Z

    move-object/from16 v24, v0

    .local v24, "_arg3":[Z
    goto :goto_2

    .line 117
    .end local v24    # "_arg3":[Z
    .restart local v32    # "_result":Z
    :cond_3
    const/16 v36, 0x0

    goto :goto_3

    .line 123
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v21    # "_arg2":[I
    .end local v25    # "_arg3_length":I
    .end local v32    # "_result":Z
    :sswitch_7
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 126
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/16 v36, 0x1

    return v36

    .line 132
    .end local v4    # "_arg0":I
    :sswitch_8
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_4

    .line 135
    sget-object v36, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InputEvent;

    .line 141
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 142
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v32

    .line 143
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v32, :cond_5

    const/16 v36, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/16 v36, 0x1

    return v36

    .line 138
    .end local v12    # "_arg1":I
    .end local v32    # "_result":Z
    :cond_4
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/view/InputEvent;
    goto :goto_4

    .line 144
    .end local v9    # "_arg0":Landroid/view/InputEvent;
    .restart local v12    # "_arg1":I
    .restart local v32    # "_result":Z
    :cond_5
    const/16 v36, 0x0

    goto :goto_5

    .line 149
    .end local v12    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_9
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 154
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v29

    .line 155
    .local v29, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v29, :cond_6

    .line 157
    const/16 v36, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    :goto_6
    const/16 v36, 0x1

    return v36

    .line 161
    :cond_6
    const/16 v36, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 167
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v29    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_a
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 171
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 173
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_7

    .line 174
    sget-object v36, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/input/TouchCalibration;

    .line 179
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v12, v1}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/16 v36, 0x1

    return v36

    .line 177
    :cond_7
    const/16 v19, 0x0

    .local v19, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_7

    .line 185
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v19    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_b
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v34

    .line 187
    .local v34, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/16 v36, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 189
    const/16 v36, 0x1

    return v36

    .line 193
    .end local v34    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_c
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_8

    .line 196
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 201
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v34

    .line 202
    .restart local v34    # "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/16 v36, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 204
    const/16 v36, 0x1

    return v36

    .line 199
    .end local v34    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :cond_8
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_8

    .line 208
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 211
    .restart local v11    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v28

    .line 212
    .local v28, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v28, :cond_9

    .line 214
    const/16 v36, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/16 v36, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    :goto_9
    const/16 v36, 0x1

    return v36

    .line 218
    :cond_9
    const/16 v36, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 224
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_e
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_a

    .line 227
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 232
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v31

    .line 233
    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    const/16 v36, 0x1

    return v36

    .line 230
    .end local v31    # "_result":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    .line 239
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_b

    .line 242
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 248
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 249
    .local v15, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/16 v36, 0x1

    return v36

    .line 245
    .end local v15    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_b

    .line 255
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_10
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_c

    .line 258
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 263
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v35

    .line 264
    .local v35, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 266
    const/16 v36, 0x1

    return v36

    .line 261
    .end local v35    # "_result":[Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_c

    .line 270
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_11
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_d

    .line 273
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 279
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 280
    .restart local v15    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/16 v36, 0x1

    return v36

    .line 276
    .end local v15    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_d

    .line 286
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_12
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_e

    .line 289
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 295
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 296
    .restart local v15    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/16 v36, 0x1

    return v36

    .line 292
    .end local v15    # "_arg1":Ljava/lang/String;
    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_e

    .line 302
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_13
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_f

    .line 305
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 311
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_10

    .line 312
    sget-object v36, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 318
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_11

    .line 319
    sget-object v36, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodSubtype;

    .line 324
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v14, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v28

    .line 325
    .restart local v28    # "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v28, :cond_12

    .line 327
    const/16 v36, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/16 v36, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    :goto_12
    const/16 v36, 0x1

    return v36

    .line 308
    .end local v28    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_f

    .line 315
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_10
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_10

    .line 322
    .end local v14    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_11
    const/16 v20, 0x0

    .local v20, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_11

    .line 331
    .end local v20    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v28    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_12
    const/16 v36, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 337
    .end local v28    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_14
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_13

    .line 340
    sget-object v36, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 346
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_14

    .line 347
    sget-object v36, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 353
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_15

    .line 354
    sget-object v36, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodSubtype;

    .line 360
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 361
    .local v23, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v7, v14, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/16 v36, 0x1

    return v36

    .line 343
    .end local v23    # "_arg3":Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_13

    .line 350
    .end local v7    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_14
    const/4 v14, 0x0

    .restart local v14    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_14

    .line 357
    .end local v14    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_15
    const/16 v20, 0x0

    .restart local v20    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_15

    .line 367
    .end local v20    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_15
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v5

    .line 370
    .local v5, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/16 v36, 0x1

    return v36

    .line 376
    .end local v5    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_16
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v26

    .line 378
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/16 v36, 0x1

    return v36

    .line 384
    .end local v26    # "_result":I
    :sswitch_17
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v6

    .line 387
    .local v6, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/16 v36, 0x1

    return v36

    .line 393
    .end local v6    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :sswitch_18
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 397
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v17

    .line 399
    .local v17, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 401
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    .line 402
    .local v22, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/16 v36, 0x1

    return v36

    .line 408
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":[J
    .end local v18    # "_arg2":I
    .end local v22    # "_arg3":Landroid/os/IBinder;
    :sswitch_19
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 412
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 413
    .local v13, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/16 v36, 0x1

    return v36

    .line 419
    .end local v4    # "_arg0":I
    .end local v13    # "_arg1":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/16 v36, 0x1

    return v36

    .line 428
    .end local v4    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_16

    .line 431
    sget-object v36, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/PointerIcon;

    .line 436
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/16 v36, 0x1

    return v36

    .line 434
    :cond_16
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/view/PointerIcon;
    goto :goto_16

    .line 442
    .end local v10    # "_arg0":Landroid/view/PointerIcon;
    :sswitch_1c
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 446
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    if-eqz v36, :cond_17

    const/16 v16, 0x1

    .line 447
    .local v16, "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/16 v36, 0x1

    return v36

    .line 446
    .end local v16    # "_arg1":Z
    :cond_17
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_17

    .line 453
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":Z
    :sswitch_1d
    const-string/jumbo v36, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 456
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v27

    .line 457
    .local v27, "_result":Landroid/app/IInputForwarder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v27, :cond_18

    invoke-interface/range {v27 .. v27}, Landroid/app/IInputForwarder;->asBinder()Landroid/os/IBinder;

    move-result-object v36

    :goto_18
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 459
    const/16 v36, 0x1

    return v36

    .line 458
    :cond_18
    const/16 v36, 0x0

    goto :goto_18

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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
