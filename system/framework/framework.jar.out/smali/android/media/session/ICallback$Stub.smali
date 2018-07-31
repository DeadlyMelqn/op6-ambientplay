.class public abstract Landroid/media/session/ICallback$Stub;
.super Landroid/os/Binder;
.source "ICallback.java"

# interfaces
.implements Landroid/media/session/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ICallback"

.field static final TRANSACTION_onAddressedPlayerChangedToMediaButtonReceiver:I = 0x4

.field static final TRANSACTION_onAddressedPlayerChangedToMediaSession:I = 0x3

.field static final TRANSACTION_onMediaKeyEventDispatchedToMediaButtonReceiver:I = 0x2

.field static final TRANSACTION_onMediaKeyEventDispatchedToMediaSession:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.session.ICallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ICallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ICallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.session.ICallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ICallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/session/ICallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ICallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ICallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v5, "android.media.session.ICallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v6

    .line 50
    :sswitch_1
    const-string/jumbo v5, "android.media.session.ICallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    sget-object v5, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    sget-object v5, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession$Token;

    .line 65
    :goto_1
    invoke-virtual {p0, v2, v4}, Landroid/media/session/ICallback$Stub;->onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    .line 66
    return v6

    .line 56
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/view/KeyEvent;
    goto :goto_0

    .line 63
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/media/session/MediaSession$Token;
    goto :goto_1

    .line 70
    .end local v4    # "_arg1":Landroid/media/session/MediaSession$Token;
    :sswitch_2
    const-string/jumbo v5, "android.media.session.ICallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    sget-object v5, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 79
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 85
    :goto_3
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ICallback$Stub;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    .line 86
    return v6

    .line 76
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_2

    .line 83
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    :cond_3
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/content/ComponentName;
    goto :goto_3

    .line 90
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v5, "android.media.session.ICallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    sget-object v5, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    .line 98
    :goto_4
    invoke-virtual {p0, v1}, Landroid/media/session/ICallback$Stub;->onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V

    .line 99
    return v6

    .line 96
    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/media/session/MediaSession$Token;
    goto :goto_4

    .line 103
    .end local v1    # "_arg0":Landroid/media/session/MediaSession$Token;
    :sswitch_4
    const-string/jumbo v5, "android.media.session.ICallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 106
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 111
    :goto_5
    invoke-virtual {p0, v0}, Landroid/media/session/ICallback$Stub;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 112
    return v6

    .line 109
    :cond_5
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
