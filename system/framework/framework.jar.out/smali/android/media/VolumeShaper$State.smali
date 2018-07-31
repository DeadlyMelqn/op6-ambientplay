.class public final Landroid/media/VolumeShaper$State;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$State$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumeShaper$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mVolume:F

.field private mXOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1384
    new-instance v0, Landroid/media/VolumeShaper$State$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$State$1;-><init>()V

    .line 1383
    sput-object v0, Landroid/media/VolumeShaper$State;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1346
    return-void
.end method

.method constructor <init>(FF)V
    .locals 0
    .param p1, "volume"    # F
    .param p2, "xOffset"    # F

    .prologue
    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    iput p1, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    .line 1400
    iput p2, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    .line 1401
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1374
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1365
    instance-of v3, p1, Landroid/media/VolumeShaper$State;

    if-nez v3, :cond_0

    return v2

    .line 1366
    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 1367
    check-cast v0, Landroid/media/VolumeShaper$State;

    .line 1368
    .local v0, "other":Landroid/media/VolumeShaper$State;
    iget v3, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    iget v4, v0, Landroid/media/VolumeShaper$State;->mVolume:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1369
    iget v3, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    iget v4, v0, Landroid/media/VolumeShaper$State;->mXOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 1368
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1369
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1368
    goto :goto_0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 1408
    iget v0, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    return v0
.end method

.method public getXOffset()F
    .locals 1

    .prologue
    .line 1417
    iget v0, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1360
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VolumeShaper.State{mVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1353
    iget v1, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1354
    const-string/jumbo v1, ", mXOffset = "

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1354
    iget v1, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1355
    const-string/jumbo v1, "}"

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1379
    iget v0, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1380
    iget v0, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1381
    return-void
.end method
