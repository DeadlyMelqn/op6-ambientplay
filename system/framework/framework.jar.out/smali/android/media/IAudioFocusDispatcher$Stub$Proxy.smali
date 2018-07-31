.class Landroid/media/IAudioFocusDispatcher$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioFocusDispatcher.java"

# interfaces
.implements Landroid/media/IAudioFocusDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioFocusDispatcher$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/media/IAudioFocusDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/IAudioFocusDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 5
    .param p1, "focusChange"    # I
    .param p2, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.IAudioFocusDispatcher"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Landroid/media/IAudioFocusDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 90
    return-void

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "android.media.IAudioFocusDispatcher"

    return-object v0
.end method
