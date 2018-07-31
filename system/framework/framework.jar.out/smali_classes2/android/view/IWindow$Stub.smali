.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_dispatchAppVisibility:I = 0x4

.field static final TRANSACTION_dispatchDragEvent:I = 0xa

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x5

.field static final TRANSACTION_dispatchPointerCaptureChanged:I = 0xf

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xc

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_dispatchWindowShown:I = 0xd

.field static final TRANSACTION_enterNotchLimit:I = 0x11

.field static final TRANSACTION_enterScreenCompatMode:I = 0x10

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0xe

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_updatePointerIcon:I = 0xb

.field static final TRANSACTION_windowFocusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
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
    const-string/jumbo v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/IWindow;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 38
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

    .line 310
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 48
    :sswitch_0
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v5, 0x1

    return v5

    .line 53
    :sswitch_1
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 57
    .local v25, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 59
    .local v35, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/ParcelFileDescriptor;

    .line 65
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 66
    const/4 v5, 0x1

    return v5

    .line 63
    :cond_0
    const/16 v37, 0x0

    .local v37, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 70
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v35    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 79
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 86
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 93
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 100
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 101
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 107
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 108
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 114
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v12, 0x1

    .line 116
    .local v12, "_arg6":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 117
    sget-object v5, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/MergedConfiguration;

    .line 123
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 124
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 130
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v15, 0x1

    .line 132
    .local v15, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v16, 0x1

    .line 134
    .local v16, "_arg10":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg11":I
    move-object/from16 v5, p0

    .line 135
    invoke-virtual/range {v5 .. v17}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V

    .line 136
    const/4 v5, 0x1

    return v5

    .line 76
    .end local v12    # "_arg6":Z
    .end local v15    # "_arg9":Z
    .end local v16    # "_arg10":Z
    .end local v17    # "_arg11":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 83
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :cond_2
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 90
    .end local v7    # "_arg1":Landroid/graphics/Rect;
    :cond_3
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/graphics/Rect;
    goto :goto_3

    .line 97
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    :cond_4
    const/4 v9, 0x0

    .local v9, "_arg3":Landroid/graphics/Rect;
    goto :goto_4

    .line 104
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    :cond_5
    const/4 v10, 0x0

    .local v10, "_arg4":Landroid/graphics/Rect;
    goto :goto_5

    .line 111
    .end local v10    # "_arg4":Landroid/graphics/Rect;
    :cond_6
    const/4 v11, 0x0

    .local v11, "_arg5":Landroid/graphics/Rect;
    goto :goto_6

    .line 114
    .end local v11    # "_arg5":Landroid/graphics/Rect;
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "_arg6":Z
    goto :goto_7

    .line 120
    :cond_8
    const/4 v13, 0x0

    .local v13, "_arg7":Landroid/util/MergedConfiguration;
    goto :goto_8

    .line 127
    .end local v13    # "_arg7":Landroid/util/MergedConfiguration;
    :cond_9
    const/4 v14, 0x0

    .local v14, "_arg8":Landroid/graphics/Rect;
    goto :goto_9

    .line 130
    .end local v14    # "_arg8":Landroid/graphics/Rect;
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "_arg9":Z
    goto :goto_a

    .line 132
    :cond_b
    const/16 v16, 0x0

    .restart local v16    # "_arg10":Z
    goto :goto_b

    .line 140
    .end local v12    # "_arg6":Z
    .end local v15    # "_arg9":Z
    .end local v16    # "_arg10":Z
    :sswitch_3
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 144
    .local v31, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 145
    .local v26, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    .line 146
    const/4 v5, 0x1

    return v5

    .line 150
    .end local v26    # "_arg1":I
    .end local v31    # "_arg0":I
    :sswitch_4
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v34, 0x1

    .line 153
    .local v34, "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    .line 154
    const/4 v5, 0x1

    return v5

    .line 152
    .end local v34    # "_arg0":Z
    :cond_c
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_c

    .line 158
    .end local v34    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    .line 160
    const/4 v5, 0x1

    return v5

    .line 164
    :sswitch_6
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v34, 0x1

    .line 168
    .restart local v34    # "_arg0":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v36, 0x1

    .line 169
    .local v36, "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    .line 170
    const/4 v5, 0x1

    return v5

    .line 166
    .end local v34    # "_arg0":Z
    .end local v36    # "_arg1":Z
    :cond_d
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_d

    .line 168
    :cond_e
    const/16 v36, 0x0

    .restart local v36    # "_arg1":Z
    goto :goto_e

    .line 174
    .end local v34    # "_arg0":Z
    .end local v36    # "_arg1":Z
    :sswitch_7
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 177
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 178
    const/4 v5, 0x1

    return v5

    .line 182
    .end local v25    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 186
    .local v19, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 188
    .local v20, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 190
    .local v21, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 192
    .local v22, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v23, 0x1

    .local v23, "_arg4":Z
    :goto_f
    move-object/from16 v18, p0

    .line 193
    invoke-virtual/range {v18 .. v23}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    .line 194
    const/4 v5, 0x1

    return v5

    .line 192
    .end local v23    # "_arg4":Z
    :cond_f
    const/16 v23, 0x0

    .restart local v23    # "_arg4":Z
    goto :goto_f

    .line 198
    .end local v19    # "_arg0":F
    .end local v20    # "_arg1":F
    .end local v21    # "_arg2":F
    .end local v22    # "_arg3":F
    .end local v23    # "_arg4":Z
    :sswitch_9
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 202
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 204
    .restart local v26    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 206
    .local v27, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 208
    .local v28, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 209
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Bundle;

    .line 215
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v30, 0x1

    .local v30, "_arg5":Z
    :goto_11
    move-object/from16 v24, p0

    .line 216
    invoke-virtual/range {v24 .. v30}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 217
    const/4 v5, 0x1

    return v5

    .line 212
    .end local v30    # "_arg5":Z
    :cond_10
    const/16 v29, 0x0

    .local v29, "_arg4":Landroid/os/Bundle;
    goto :goto_10

    .line 215
    .end local v29    # "_arg4":Landroid/os/Bundle;
    :cond_11
    const/16 v30, 0x0

    .restart local v30    # "_arg5":Z
    goto :goto_11

    .line 221
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":I
    .end local v27    # "_arg2":I
    .end local v28    # "_arg3":I
    .end local v30    # "_arg5":Z
    :sswitch_a
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 224
    sget-object v5, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/DragEvent;

    .line 229
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 230
    const/4 v5, 0x1

    return v5

    .line 227
    :cond_12
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/view/DragEvent;
    goto :goto_12

    .line 234
    .end local v32    # "_arg0":Landroid/view/DragEvent;
    :sswitch_b
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 238
    .restart local v19    # "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 239
    .restart local v20    # "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    .line 240
    const/4 v5, 0x1

    return v5

    .line 244
    .end local v19    # "_arg0":F
    .end local v20    # "_arg1":F
    :sswitch_c
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 248
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 250
    .restart local v26    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 252
    .restart local v27    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 253
    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    .line 254
    const/4 v5, 0x1

    return v5

    .line 258
    .end local v26    # "_arg1":I
    .end local v27    # "_arg2":I
    .end local v28    # "_arg3":I
    .end local v31    # "_arg0":I
    :sswitch_d
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    .line 260
    const/4 v5, 0x1

    return v5

    .line 264
    :sswitch_e
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v33

    .line 268
    .local v33, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 269
    .restart local v26    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 270
    const/4 v5, 0x1

    return v5

    .line 274
    .end local v26    # "_arg1":I
    .end local v33    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :sswitch_f
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v34, 0x1

    .line 277
    .restart local v34    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchPointerCaptureChanged(Z)V

    .line 278
    const/4 v5, 0x1

    return v5

    .line 276
    .end local v34    # "_arg0":Z
    :cond_13
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_13

    .line 282
    .end local v34    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v34, 0x1

    .line 286
    .restart local v34    # "_arg0":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 287
    .restart local v26    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->enterScreenCompatMode(ZI)V

    .line 288
    const/4 v5, 0x1

    return v5

    .line 284
    .end local v26    # "_arg1":I
    .end local v34    # "_arg0":Z
    :cond_14
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_14

    .line 292
    .end local v34    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v34, 0x1

    .line 296
    .restart local v34    # "_arg0":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 298
    .restart local v26    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 300
    .restart local v27    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    .line 301
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 306
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/IWindow$Stub;->enterNotchLimit(ZIILandroid/graphics/Rect;)V

    .line 307
    const/4 v5, 0x1

    return v5

    .line 294
    .end local v26    # "_arg1":I
    .end local v27    # "_arg2":I
    .end local v34    # "_arg0":Z
    :cond_15
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_15

    .line 304
    .restart local v26    # "_arg1":I
    .restart local v27    # "_arg2":I
    :cond_16
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Landroid/graphics/Rect;
    goto :goto_16

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
