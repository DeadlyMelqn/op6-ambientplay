.class final Landroid/media/VolumeShaper$State$1;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$State;
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
        "Landroid/media/VolumeShaper$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$State;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1387
    new-instance v0, Landroid/media/VolumeShaper$State;

    .line 1388
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1389
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1387
    invoke-direct {v0, v1, v2}, Landroid/media/VolumeShaper$State;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1385
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$State$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/VolumeShaper$State;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1394
    new-array v0, p1, [Landroid/media/VolumeShaper$State;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$State$1;->newArray(I)[Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method
