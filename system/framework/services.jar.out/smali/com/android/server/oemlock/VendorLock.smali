.class Lcom/android/server/oemlock/VendorLock;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oemLock"    # Landroid/hardware/oemlock/V1_0/IOemLock;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 55
    return-void
.end method

.method static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .locals 4

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService()Landroid/hardware/oemlock/V1_0/IOemLock;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 44
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v2, "OemLock"

    const-string/jumbo v3, "OemLock HAL not present on device"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic lambda$-com_android_server_oemlock_VendorLock_2991([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 2
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByCarrier"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    .line 89
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    return-void
.end method

.method static synthetic lambda$-com_android_server_oemlock_VendorLock_4760([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 2
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByDevice"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    .line 137
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    return-void
.end method

.method private toByteArrayList([B)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 158
    if-nez p1, :cond_0

    .line 159
    return-object v2

    .line 161
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v0, p1, v2

    .line 163
    .local v0, "b":B
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "b":B
    :cond_1
    return-object v1
.end method


# virtual methods
.method isOemUnlockAllowedByCarrier()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 83
    new-array v2, v3, [Ljava/lang/Integer;

    .line 84
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v0, v3, [Ljava/lang/Boolean;

    .line 87
    .local v0, "allowedByCarrier":[Ljava/lang/Boolean;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE;

    invoke-direct {v4, v2, v0}, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 102
    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to get carrier OEM unlock state"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Failed to get carrier state from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_1
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isOemUnlockAllowedByDevice()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 131
    new-array v2, v3, [Ljava/lang/Integer;

    .line 132
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v0, v3, [Ljava/lang/Boolean;

    .line 135
    .local v0, "allowedByDevice":[Ljava/lang/Boolean;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;

    invoke-direct {v4, v2, v0}, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 150
    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to get device OEM unlock state"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Failed to get devie state from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 147
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_1
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-direct {p0, p2}, Lcom/android/server/oemlock/VendorLock;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to set carrier OEM unlock state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Failed to set carrier state with HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "OemLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updated carrier allows OEM lock state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :pswitch_2
    new-instance v1, Ljava/lang/SecurityException;

    .line 67
    const-string/jumbo v2, "Invalid signature used in attempt to carrier unlock"

    .line 66
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .locals 4
    .param p1, "allowedByDevice"    # Z

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v1, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to set device OEM unlock state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Failed to set device state with HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "OemLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updated device allows OEM lock state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    return-void

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
