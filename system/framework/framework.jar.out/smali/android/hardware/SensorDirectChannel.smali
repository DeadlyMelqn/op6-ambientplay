.class public final Landroid/hardware/SensorDirectChannel;
.super Ljava/lang/Object;
.source "SensorDirectChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field public static final RATE_FAST:I = 0x2

.field public static final RATE_NORMAL:I = 0x1

.field public static final RATE_STOP:I = 0x0

.field public static final RATE_VERY_FAST:I = 0x3

.field public static final TYPE_HARDWARE_BUFFER:I = 0x2

.field public static final TYPE_MEMORY_FILE:I = 0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManager:Landroid/hardware/SensorManager;

.field private final mNativeHandle:I

.field private final mSize:J

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;IIJ)V
    .locals 2
    .param p1, "manager"    # Landroid/hardware/SensorManager;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "size"    # J

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 185
    iput-object p1, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    .line 186
    iput p2, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    .line 187
    iput p3, p0, Landroid/hardware/SensorDirectChannel;->mType:I

    .line 188
    iput-wide p4, p0, Landroid/hardware/SensorDirectChannel;->mSize:J

    .line 189
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "SensorDirectChannel"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method static encodeData(Landroid/os/MemoryFile;)[J
    .locals 6
    .param p0, "ashmem"    # Landroid/os/MemoryFile;

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    .local v1, "fd":I
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [J

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    aput-wide v4, v2, v3

    int-to-long v4, v1

    const/4 v3, 0x2

    aput-wide v4, v2, v3

    return-object v2

    .line 206
    .end local v1    # "fd":I
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    .restart local v1    # "fd":I
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 131
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V

    .line 133
    :cond_0
    return-void
.end method

.method public configure(Landroid/hardware/Sensor;I)I
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateLevel"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 223
    return-void

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    throw v0
.end method

.method getNativeHandle()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    return v0
.end method
