.class Landroid/os/IIncidentManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIncidentManager.java"

# interfaces
.implements Landroid/os/IIncidentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentManager$Stub;
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/os/IIncidentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 94
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/os/IIncidentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "android.os.IIncidentManager"

    return-object v0
.end method

.method public reportIncident(Landroid/os/IncidentReportArgs;)V
    .locals 5
    .param p1, "args"    # Landroid/os/IncidentReportArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.os.IIncidentManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/IncidentReportArgs;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_0
    iget-object v1, p0, Landroid/os/IIncidentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw v1
.end method

.method public reportIncidentToStream(Landroid/os/IncidentReportArgs;Landroid/os/IIncidentReportStatusListener;Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "args"    # Landroid/os/IncidentReportArgs;
    .param p2, "listener"    # Landroid/os/IIncidentReportStatusListener;
    .param p3, "stream"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IIncidentManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    if-eqz p1, :cond_1

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/IncidentReportArgs;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IIncidentReportStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 144
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 145
    iget-object v1, p0, Landroid/os/IIncidentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void

    .line 141
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw v1
.end method

.method public systemRunning()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.os.IIncidentManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/os/IIncidentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    return-void

    .line 161
    :catchall_0
    move-exception v1

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw v1
.end method