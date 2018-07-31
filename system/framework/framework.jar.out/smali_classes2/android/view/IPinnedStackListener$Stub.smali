.class public abstract Landroid/view/IPinnedStackListener$Stub;
.super Landroid/os/Binder;
.source "IPinnedStackListener.java"

# interfaces
.implements Landroid/view/IPinnedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IPinnedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPinnedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IPinnedStackListener"

.field static final TRANSACTION_onActionsChanged:I = 0x5

.field static final TRANSACTION_onImeVisibilityChanged:I = 0x3

.field static final TRANSACTION_onListenerRegistered:I = 0x1

.field static final TRANSACTION_onMinimizedStateChanged:I = 0x4

.field static final TRANSACTION_onMovementBoundsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IPinnedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackListener;
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
    const-string/jumbo v1, "android.view.IPinnedStackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IPinnedStackListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IPinnedStackListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IPinnedStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IPinnedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_0
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v10

    .line 52
    :sswitch_1
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IPinnedStackController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackController;

    move-result-object v7

    .line 55
    .local v7, "_arg0":Landroid/view/IPinnedStackController;
    invoke-virtual {p0, v7}, Landroid/view/IPinnedStackListener$Stub;->onListenerRegistered(Landroid/view/IPinnedStackController;)V

    .line 56
    return v10

    .line 60
    .end local v7    # "_arg0":Landroid/view/IPinnedStackController;
    :sswitch_2
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 69
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 76
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 83
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 85
    .local v4, "_arg3":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/view/IPinnedStackListener$Stub;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    .line 87
    return v10

    .line 66
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/graphics/Rect;
    goto :goto_0

    .line 73
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/graphics/Rect;
    goto :goto_1

    .line 80
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg2":Landroid/graphics/Rect;
    goto :goto_2

    .line 83
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Z
    goto :goto_3

    .line 91
    .end local v4    # "_arg3":Z
    :sswitch_3
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    .line 95
    .local v8, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 96
    .local v9, "_arg1":I
    invoke-virtual {p0, v8, v9}, Landroid/view/IPinnedStackListener$Stub;->onImeVisibilityChanged(ZI)V

    .line 97
    return v10

    .line 93
    .end local v8    # "_arg0":Z
    .end local v9    # "_arg1":I
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_4

    .line 101
    .end local v8    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x1

    .line 104
    .restart local v8    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v8}, Landroid/view/IPinnedStackListener$Stub;->onMinimizedStateChanged(Z)V

    .line 105
    return v10

    .line 103
    .end local v8    # "_arg0":Z
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_5

    .line 109
    .end local v8    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ParceledListSlice;

    .line 117
    :goto_6
    invoke-virtual {p0, v6}, Landroid/view/IPinnedStackListener$Stub;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 118
    return v10

    .line 115
    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_6

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
