.class final Landroid/media/VolumeShaper$Configuration$1;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
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
        "Landroid/media/VolumeShaper$Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Configuration;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 501
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "id":I
    if-nez v1, :cond_0

    .line 503
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {v0, v2}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    return-object v0

    .line 505
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    .local v3, "optionFlags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 508
    .local v4, "durationMs":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 509
    .local v6, "interpolatorType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 510
    .local v10, "firstSlope":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 511
    .local v12, "lastSlope":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 512
    .local v13, "length":I
    new-array v7, v13, [F

    .line 513
    .local v7, "times":[F
    new-array v8, v13, [F

    .line 514
    .local v8, "volumes":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_1

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    aput v0, v7, v11

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    aput v0, v8, v11

    .line 514
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 519
    :cond_1
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Configuration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/VolumeShaper$Configuration;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 532
    new-array v0, p1, [Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Configuration$1;->newArray(I)[Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method
