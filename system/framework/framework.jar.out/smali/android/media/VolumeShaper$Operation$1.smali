.class final Landroid/media/VolumeShaper$Operation$1;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Operation;
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
        "Landroid/media/VolumeShaper$Operation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Operation;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1173
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1174
    .local v1, "replaceId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1176
    .local v2, "xOffset":F
    new-instance v3, Landroid/media/VolumeShaper$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/media/VolumeShaper$Operation;-><init>(IIFLandroid/media/VolumeShaper$Operation;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Operation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/VolumeShaper$Operation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1184
    new-array v0, p1, [Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1182
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Operation$1;->newArray(I)[Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    return-object v0
.end method
