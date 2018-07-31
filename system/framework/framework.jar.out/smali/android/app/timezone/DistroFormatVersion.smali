.class public final Landroid/app/timezone/DistroFormatVersion;
.super Ljava/lang/Object;
.source "DistroFormatVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/DistroFormatVersion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/timezone/DistroFormatVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMajorVersion:I

.field private final mMinorVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/app/timezone/DistroFormatVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroFormatVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroFormatVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "major"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 45
    const-string/jumbo v0, "minor"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_0

    .line 91
    return v1

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/timezone/DistroFormatVersion;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 94
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 97
    check-cast v0, Landroid/app/timezone/DistroFormatVersion;

    .line 99
    .local v0, "that":Landroid/app/timezone/DistroFormatVersion;
    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v4, v0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-eq v3, v4, :cond_3

    .line 100
    return v2

    .line 102
    :cond_3
    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v4, v0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-ne v3, v4, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 107
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 108
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    add-int v0, v1, v2

    .line 109
    return v0
.end method

.method public supports(Landroid/app/timezone/DistroFormatVersion;)Z
    .locals 3
    .param p1, "distroFormatVersion"    # Landroid/app/timezone/DistroFormatVersion;

    .prologue
    const/4 v0, 0x0

    .line 84
    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v2, p1, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-ne v1, v2, :cond_0

    .line 85
    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v2, p1, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DistroFormatVersion{mMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, ", mMinorVersion="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const/16 v1, 0x7d

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
