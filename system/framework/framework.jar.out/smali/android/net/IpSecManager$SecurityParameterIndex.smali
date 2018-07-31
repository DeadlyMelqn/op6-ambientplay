.class public final Landroid/net/IpSecManager$SecurityParameterIndex;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityParameterIndex"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mRemoteAddress:Ljava/net/InetAddress;

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;

.field private mSpi:I


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "service"    # Landroid/net/IIpSecService;
    .param p2, "direction"    # I
    .param p3, "remoteAddress"    # Ljava/net/InetAddress;
    .param p4, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 107
    iput v4, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 144
    iput-object p1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 145
    iput-object p3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mRemoteAddress:Ljava/net/InetAddress;

    .line 148
    :try_start_0
    iget-object v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 149
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 148
    invoke-interface {v3, p2, v4, p4, v5}, Landroid/net/IIpSecService;->reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v1

    .line 151
    .local v1, "result":Landroid/net/IpSecSpiResponse;
    if-nez v1, :cond_0

    .line 152
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Received null response from IpSecService"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "result":Landroid/net/IpSecSpiResponse;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "result":Landroid/net/IpSecSpiResponse;
    :cond_0
    :try_start_1
    iget v2, v1, Landroid/net/IpSecSpiResponse;->status:I

    .line 156
    .local v2, "status":I
    packed-switch v2, :pswitch_data_0

    .line 165
    new-instance v3, Ljava/lang/RuntimeException;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown status returned by IpSecService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :pswitch_0
    new-instance v3, Landroid/net/IpSecManager$ResourceUnavailableException;

    .line 161
    const-string/jumbo v4, "No more SPIs may be allocated by this requester."

    .line 160
    invoke-direct {v3, v4}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :pswitch_1
    new-instance v3, Landroid/net/IpSecManager$SpiUnavailableException;

    const-string/jumbo v4, "Requested SPI is unavailable"

    invoke-direct {v3, v4, p4}, Landroid/net/IpSecManager$SpiUnavailableException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 168
    :pswitch_2
    iget v3, v1, Landroid/net/IpSecSpiResponse;->spi:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 169
    iget v3, v1, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 171
    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    if-nez v3, :cond_1

    .line 172
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid SPI returned by IpSecService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_1
    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    if-nez v3, :cond_2

    .line 176
    new-instance v3, Ljava/lang/RuntimeException;

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid Resource ID returned by IpSecService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_2
    iget-object v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v4, "open"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 184
    return-void

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V
    .locals 0
    .param p1, "service"    # Landroid/net/IIpSecService;
    .param p2, "direction"    # I
    .param p3, "remoteAddress"    # Ljava/net/InetAddress;
    .param p4, "spi"    # I
    .param p5, "-this4"    # Landroid/net/IpSecManager$SecurityParameterIndex;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->releaseSecurityParameterIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 130
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 139
    return-void
.end method

.method getResourceId()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    return v0
.end method

.method public getSpi()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    return v0
.end method
