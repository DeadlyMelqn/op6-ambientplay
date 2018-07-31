.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_cancelDragAndDrop:I = 0x13

.field static final TRANSACTION_dragRecipientEntered:I = 0x14

.field static final TRANSACTION_dragRecipientExited:I = 0x15

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getWindowId:I = 0x1c

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1b

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDrag:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_pokeDrawLock:I = 0x1d

.field static final TRANSACTION_prepareDrag:I = 0x10

.field static final TRANSACTION_prepareToReplaceWindows:I = 0x7

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x12

.field static final TRANSACTION_sendWallpaperCommand:I = 0x19

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x18

.field static final TRANSACTION_setWallpaperPosition:I = 0x16

.field static final TRANSACTION_startMovingTask:I = 0x1e

.field static final TRANSACTION_updatePointerIcon:I = 0x1f

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1a

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
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
    const-string/jumbo v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 76
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

    .line 720
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    return v3

    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 56
    .local v4, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 58
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 67
    .local v7, "_arg3":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v8, "_arg4":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v9, "_arg5":Landroid/graphics/Rect;
    new-instance v10, Landroid/view/InputChannel;

    invoke-direct {v10}, Landroid/view/InputChannel;-><init>()V

    .local v10, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v3, p0

    .line 72
    invoke-virtual/range {v3 .. v10}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v71

    .line 73
    .local v71, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    if-eqz v8, :cond_1

    .line 76
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    :goto_1
    if-eqz v9, :cond_2

    .line 83
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :goto_2
    if-eqz v10, :cond_3

    .line 90
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v3}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_3
    const/4 v3, 0x1

    return v3

    .line 62
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v10    # "_arg6":Landroid/view/InputChannel;
    .end local v71    # "_result":I
    :cond_0
    const/4 v6, 0x0

    .local v6, "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 80
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v10    # "_arg6":Landroid/view/InputChannel;
    .restart local v71    # "_result":I
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 87
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 94
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 100
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v10    # "_arg6":Landroid/view/InputChannel;
    .end local v71    # "_result":I
    :sswitch_2
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 104
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 113
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 115
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 117
    .local v16, "_arg4":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v18, "_arg6":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .local v19, "_arg7":Landroid/graphics/Rect;
    new-instance v20, Landroid/view/InputChannel;

    invoke-direct/range {v20 .. v20}, Landroid/view/InputChannel;-><init>()V

    .local v20, "_arg8":Landroid/view/InputChannel;
    move-object/from16 v11, p0

    move-object v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v17, v9

    .line 124
    invoke-virtual/range {v11 .. v20}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v71

    .line 125
    .restart local v71    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    if-eqz v9, :cond_5

    .line 128
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_5
    if-eqz v18, :cond_6

    .line 135
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_6
    if-eqz v19, :cond_7

    .line 142
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_7
    if-eqz v20, :cond_8

    .line 149
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_8
    const/4 v3, 0x1

    return v3

    .line 110
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v20    # "_arg8":Landroid/view/InputChannel;
    .end local v71    # "_result":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    .line 132
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v16    # "_arg4":I
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    .restart local v20    # "_arg8":Landroid/view/InputChannel;
    .restart local v71    # "_result":I
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 139
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 146
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 153
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 159
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v20    # "_arg8":Landroid/view/InputChannel;
    .end local v71    # "_result":I
    :sswitch_3
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 163
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 166
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 172
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 174
    .restart local v7    # "_arg3":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 176
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v3, p0

    .line 177
    invoke-virtual/range {v3 .. v9}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v71

    .line 178
    .restart local v71    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    if-eqz v8, :cond_a

    .line 181
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_a
    if-eqz v9, :cond_b

    .line 188
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    :goto_b
    const/4 v3, 0x1

    return v3

    .line 169
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v71    # "_result":I
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    .line 185
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v71    # "_result":I
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 192
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 198
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v71    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 202
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 204
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 205
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 211
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 213
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 215
    .restart local v16    # "_arg4":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v11, p0

    move-object v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v17, v9

    .line 218
    invoke-virtual/range {v11 .. v18}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v71

    .line 219
    .restart local v71    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    if-eqz v9, :cond_d

    .line 222
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    :goto_d
    if-eqz v18, :cond_e

    .line 229
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    :goto_e
    const/4 v3, 0x1

    return v3

    .line 208
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v71    # "_result":I
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    .line 226
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v16    # "_arg4":I
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    .restart local v71    # "_result":I
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 233
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 239
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v71    # "_result":I
    :sswitch_5
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 242
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v3, 0x1

    return v3

    .line 248
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_6
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 252
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 255
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 261
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 263
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 265
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 267
    .local v27, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 269
    .local v28, "_arg6":I
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v30, "_arg8":Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 275
    .local v31, "_arg9":Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 277
    .local v32, "_arg10":Landroid/graphics/Rect;
    new-instance v33, Landroid/graphics/Rect;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Rect;-><init>()V

    .line 279
    .local v33, "_arg11":Landroid/graphics/Rect;
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 281
    .local v34, "_arg12":Landroid/graphics/Rect;
    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .local v35, "_arg13":Landroid/graphics/Rect;
    new-instance v36, Landroid/util/MergedConfiguration;

    invoke-direct/range {v36 .. v36}, Landroid/util/MergedConfiguration;-><init>()V

    .line 285
    .local v36, "_arg14":Landroid/util/MergedConfiguration;
    new-instance v37, Landroid/view/Surface;

    invoke-direct/range {v37 .. v37}, Landroid/view/Surface;-><init>()V

    .local v37, "_arg15":Landroid/view/Surface;
    move-object/from16 v21, p0

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v16

    move-object/from16 v29, v19

    .line 286
    invoke-virtual/range {v21 .. v37}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v71

    .line 287
    .restart local v71    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move-object/from16 v0, p3

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    if-eqz v19, :cond_10

    .line 290
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    :goto_10
    if-eqz v30, :cond_11

    .line 297
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v3, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 303
    :goto_11
    if-eqz v31, :cond_12

    .line 304
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 310
    :goto_12
    if-eqz v32, :cond_13

    .line 311
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v3, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    :goto_13
    if-eqz v33, :cond_14

    .line 318
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v3, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 324
    :goto_14
    if-eqz v34, :cond_15

    .line 325
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v3, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    :goto_15
    if-eqz v35, :cond_16

    .line 332
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v3, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 338
    :goto_16
    if-eqz v36, :cond_17

    .line 339
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v3, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/util/MergedConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 345
    :goto_17
    if-eqz v37, :cond_18

    .line 346
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v3, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 352
    :goto_18
    const/4 v3, 0x1

    return v3

    .line 258
    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v30    # "_arg8":Landroid/graphics/Rect;
    .end local v31    # "_arg9":Landroid/graphics/Rect;
    .end local v32    # "_arg10":Landroid/graphics/Rect;
    .end local v33    # "_arg11":Landroid/graphics/Rect;
    .end local v34    # "_arg12":Landroid/graphics/Rect;
    .end local v35    # "_arg13":Landroid/graphics/Rect;
    .end local v36    # "_arg14":Landroid/util/MergedConfiguration;
    .end local v37    # "_arg15":Landroid/view/Surface;
    .end local v71    # "_result":I
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_f

    .line 294
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v16    # "_arg4":I
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    .restart local v27    # "_arg5":I
    .restart local v28    # "_arg6":I
    .restart local v30    # "_arg8":Landroid/graphics/Rect;
    .restart local v31    # "_arg9":Landroid/graphics/Rect;
    .restart local v32    # "_arg10":Landroid/graphics/Rect;
    .restart local v33    # "_arg11":Landroid/graphics/Rect;
    .restart local v34    # "_arg12":Landroid/graphics/Rect;
    .restart local v35    # "_arg13":Landroid/graphics/Rect;
    .restart local v36    # "_arg14":Landroid/util/MergedConfiguration;
    .restart local v37    # "_arg15":Landroid/view/Surface;
    .restart local v71    # "_result":I
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    .line 301
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_11

    .line 308
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 315
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 322
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 329
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 336
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 343
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 350
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 356
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v30    # "_arg8":Landroid/graphics/Rect;
    .end local v31    # "_arg9":Landroid/graphics/Rect;
    .end local v32    # "_arg10":Landroid/graphics/Rect;
    .end local v33    # "_arg11":Landroid/graphics/Rect;
    .end local v34    # "_arg12":Landroid/graphics/Rect;
    .end local v35    # "_arg13":Landroid/graphics/Rect;
    .end local v36    # "_arg14":Landroid/util/MergedConfiguration;
    .end local v37    # "_arg15":Landroid/view/Surface;
    .end local v71    # "_result":I
    :sswitch_7
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 360
    .local v54, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    const/16 v69, 0x1

    .line 361
    .local v69, "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v3, 0x1

    return v3

    .line 360
    .end local v69    # "_arg1":Z
    :cond_19
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_19

    .line 367
    .end local v54    # "_arg0":Landroid/os/IBinder;
    .end local v69    # "_arg1":Z
    :sswitch_8
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 370
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v75

    .line 371
    .local v75, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v75, :cond_1a

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v3, 0x1

    return v3

    .line 372
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1a

    .line 377
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v75    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 381
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 382
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/graphics/Region;

    .line 387
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v3, 0x1

    return v3

    .line 385
    :cond_1b
    const/16 v67, 0x0

    .local v67, "_arg1":Landroid/graphics/Region;
    goto :goto_1b

    .line 393
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v67    # "_arg1":Landroid/graphics/Region;
    :sswitch_a
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 397
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 399
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 400
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 406
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 407
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/graphics/Rect;

    .line 413
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 414
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Region;

    :goto_1e
    move-object/from16 v21, p0

    move-object/from16 v22, v4

    move/from16 v23, v5

    .line 419
    invoke-virtual/range {v21 .. v26}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    const/4 v3, 0x1

    return v3

    .line 403
    :cond_1c
    const/16 v24, 0x0

    .local v24, "_arg2":Landroid/graphics/Rect;
    goto :goto_1c

    .line 410
    .end local v24    # "_arg2":Landroid/graphics/Rect;
    :cond_1d
    const/16 v25, 0x0

    .local v25, "_arg3":Landroid/graphics/Rect;
    goto :goto_1d

    .line 417
    .end local v25    # "_arg3":Landroid/graphics/Rect;
    :cond_1e
    const/16 v26, 0x0

    .local v26, "_arg4":Landroid/graphics/Region;
    goto :goto_1e

    .line 425
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v26    # "_arg4":Landroid/graphics/Region;
    :sswitch_b
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 429
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    new-instance v66, Landroid/graphics/Rect;

    invoke-direct/range {v66 .. v66}, Landroid/graphics/Rect;-><init>()V

    .line 430
    .local v66, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v66, :cond_1f

    .line 433
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v3, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 439
    :goto_1f
    const/4 v3, 0x1

    return v3

    .line 437
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 443
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v66    # "_arg1":Landroid/graphics/Rect;
    :sswitch_c
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 446
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v3, 0x1

    return v3

    .line 452
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_d
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    const/16 v65, 0x1

    .line 455
    .local v65, "_arg0":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v3, 0x1

    return v3

    .line 454
    .end local v65    # "_arg0":Z
    :cond_20
    const/16 v65, 0x0

    .restart local v65    # "_arg0":Z
    goto :goto_20

    .line 461
    .end local v65    # "_arg0":Z
    :sswitch_e
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v75

    .line 463
    .restart local v75    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v75, :cond_21

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    const/4 v3, 0x1

    return v3

    .line 464
    :cond_21
    const/4 v3, 0x0

    goto :goto_21

    .line 469
    .end local v75    # "_result":Z
    :sswitch_f
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 473
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 475
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    const/16 v70, 0x1

    .line 476
    .local v70, "_arg2":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v75

    .line 477
    .restart local v75    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v75, :cond_23

    const/4 v3, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v3, 0x1

    return v3

    .line 475
    .end local v70    # "_arg2":Z
    .end local v75    # "_result":Z
    :cond_22
    const/16 v70, 0x0

    .restart local v70    # "_arg2":Z
    goto :goto_22

    .line 478
    .restart local v75    # "_result":Z
    :cond_23
    const/4 v3, 0x0

    goto :goto_23

    .line 483
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v70    # "_arg2":Z
    .end local v75    # "_result":Z
    :sswitch_10
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 487
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 489
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 491
    .local v41, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 493
    .restart local v7    # "_arg3":I
    new-instance v43, Landroid/view/Surface;

    invoke-direct/range {v43 .. v43}, Landroid/view/Surface;-><init>()V

    .local v43, "_arg4":Landroid/view/Surface;
    move-object/from16 v38, p0

    move-object/from16 v39, v4

    move/from16 v40, v5

    move/from16 v42, v7

    .line 494
    invoke-virtual/range {v38 .. v43}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v73

    .line 495
    .local v73, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object/from16 v0, p3

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 497
    if-eqz v43, :cond_24

    .line 498
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v3, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 504
    :goto_24
    const/4 v3, 0x1

    return v3

    .line 502
    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 508
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v41    # "_arg2":I
    .end local v43    # "_arg4":Landroid/view/Surface;
    .end local v73    # "_result":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 512
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 514
    .local v46, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 516
    .restart local v41    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v48

    .line 518
    .local v48, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v49

    .line 520
    .local v49, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v50

    .line 522
    .local v50, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v51

    .line 524
    .local v51, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 525
    sget-object v3, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/ClipData;

    :goto_25
    move-object/from16 v44, p0

    move-object/from16 v45, v4

    move/from16 v47, v41

    .line 530
    invoke-virtual/range {v44 .. v52}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v75

    .line 531
    .restart local v75    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v75, :cond_26

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v3, 0x1

    return v3

    .line 528
    .end local v75    # "_result":Z
    :cond_25
    const/16 v52, 0x0

    .local v52, "_arg7":Landroid/content/ClipData;
    goto :goto_25

    .line 532
    .end local v52    # "_arg7":Landroid/content/ClipData;
    .restart local v75    # "_result":Z
    :cond_26
    const/4 v3, 0x0

    goto :goto_26

    .line 537
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v41    # "_arg2":I
    .end local v46    # "_arg1":Landroid/os/IBinder;
    .end local v48    # "_arg3":F
    .end local v49    # "_arg4":F
    .end local v50    # "_arg5":F
    .end local v51    # "_arg6":F
    .end local v75    # "_result":Z
    :sswitch_12
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 541
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    const/16 v69, 0x1

    .line 542
    .restart local v69    # "_arg1":Z
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    const/4 v3, 0x1

    return v3

    .line 541
    .end local v69    # "_arg1":Z
    :cond_27
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_27

    .line 548
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v69    # "_arg1":Z
    :sswitch_13
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 551
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v3, 0x1

    return v3

    .line 557
    .end local v54    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 560
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/4 v3, 0x1

    return v3

    .line 566
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_15
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 569
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v3, 0x1

    return v3

    .line 575
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_16
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 579
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v55

    .line 581
    .local v55, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v56

    .line 583
    .local v56, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v48

    .line 585
    .restart local v48    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v49

    .restart local v49    # "_arg4":F
    move-object/from16 v53, p0

    move/from16 v57, v48

    move/from16 v58, v49

    .line 586
    invoke-virtual/range {v53 .. v58}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    const/4 v3, 0x1

    return v3

    .line 592
    .end local v48    # "_arg3":F
    .end local v49    # "_arg4":F
    .end local v54    # "_arg0":Landroid/os/IBinder;
    .end local v55    # "_arg1":F
    .end local v56    # "_arg2":F
    :sswitch_17
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 595
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v3, 0x1

    return v3

    .line 601
    .end local v54    # "_arg0":Landroid/os/IBinder;
    :sswitch_18
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 605
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 607
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 608
    .restart local v41    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v3, 0x1

    return v3

    .line 614
    .end local v5    # "_arg1":I
    .end local v41    # "_arg2":I
    .end local v54    # "_arg0":Landroid/os/IBinder;
    :sswitch_19
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 618
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    .line 620
    .local v59, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 622
    .restart local v41    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 624
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 626
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    .line 627
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/os/Bundle;

    .line 633
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    const/16 v64, 0x1

    .local v64, "_arg6":Z
    :goto_29
    move-object/from16 v57, p0

    move-object/from16 v58, v54

    move/from16 v60, v41

    move/from16 v61, v7

    move/from16 v62, v16

    .line 634
    invoke-virtual/range {v57 .. v64}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v72

    .line 635
    .local v72, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v72, :cond_2a

    .line 637
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/4 v3, 0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 643
    :goto_2a
    const/4 v3, 0x1

    return v3

    .line 630
    .end local v64    # "_arg6":Z
    .end local v72    # "_result":Landroid/os/Bundle;
    :cond_28
    const/16 v63, 0x0

    .local v63, "_arg5":Landroid/os/Bundle;
    goto :goto_28

    .line 633
    .end local v63    # "_arg5":Landroid/os/Bundle;
    :cond_29
    const/16 v64, 0x0

    .restart local v64    # "_arg6":Z
    goto :goto_29

    .line 641
    .restart local v72    # "_result":Landroid/os/Bundle;
    :cond_2a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 647
    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v41    # "_arg2":I
    .end local v54    # "_arg0":Landroid/os/IBinder;
    .end local v59    # "_arg1":Ljava/lang/String;
    .end local v64    # "_arg6":Z
    .end local v72    # "_result":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 651
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 652
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/os/Bundle;

    .line 657
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v3, 0x1

    return v3

    .line 655
    :cond_2b
    const/16 v68, 0x0

    .local v68, "_arg1":Landroid/os/Bundle;
    goto :goto_2b

    .line 663
    .end local v54    # "_arg0":Landroid/os/IBinder;
    .end local v68    # "_arg1":Landroid/os/Bundle;
    :sswitch_1b
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 667
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 668
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/graphics/Rect;

    .line 673
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v3, 0x1

    return v3

    .line 671
    :cond_2c
    const/16 v66, 0x0

    .local v66, "_arg1":Landroid/graphics/Rect;
    goto :goto_2c

    .line 679
    .end local v54    # "_arg0":Landroid/os/IBinder;
    .end local v66    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1c
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 682
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v74

    .line 683
    .local v74, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    if-eqz v74, :cond_2d

    invoke-interface/range {v74 .. v74}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 685
    const/4 v3, 0x1

    return v3

    .line 684
    :cond_2d
    const/4 v3, 0x0

    goto :goto_2d

    .line 689
    .end local v54    # "_arg0":Landroid/os/IBinder;
    .end local v74    # "_result":Landroid/view/IWindowId;
    :sswitch_1d
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 692
    .restart local v54    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/4 v3, 0x1

    return v3

    .line 698
    .end local v54    # "_arg0":Landroid/os/IBinder;
    :sswitch_1e
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 702
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v55

    .line 704
    .restart local v55    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v56

    .line 705
    .restart local v56    # "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v75

    .line 706
    .restart local v75    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    if-eqz v75, :cond_2e

    const/4 v3, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    const/4 v3, 0x1

    return v3

    .line 707
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2e

    .line 712
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v55    # "_arg1":F
    .end local v56    # "_arg2":F
    .end local v75    # "_result":Z
    :sswitch_1f
    const-string/jumbo v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 715
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    const/4 v3, 0x1

    return v3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
