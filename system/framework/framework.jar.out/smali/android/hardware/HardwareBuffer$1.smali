.class final Landroid/hardware/HardwareBuffer$1;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/HardwareBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/HardwareBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 303
    invoke-static {p1}, Landroid/hardware/HardwareBuffer;->-wrap0(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 304
    .local v0, "nativeObject":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 305
    new-instance v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v2, v0, v1, v4}, Landroid/hardware/HardwareBuffer;-><init>(JLandroid/hardware/HardwareBuffer;)V

    return-object v2

    .line 307
    :cond_0
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/HardwareBuffer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 311
    new-array v0, p1, [Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->newArray(I)[Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method
