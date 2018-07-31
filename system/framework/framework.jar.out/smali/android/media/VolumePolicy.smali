.class public final Landroid/media/VolumePolicy;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumePolicy$1;
    }
.end annotation


# static fields
.field public static final A11Y_MODE_INDEPENDENT_A11Y_VOLUME:I = 0x1

.field public static final A11Y_MODE_MEDIA_A11Y_VOLUME:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroid/media/VolumePolicy;


# instance fields
.field public final doNotDisturbWhenSilent:Z

.field public final vibrateToSilentDebounce:I

.field public final volumeDownToEnterSilent:Z

.field public final volumeUpToExitSilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v0, Landroid/media/VolumePolicy;

    const/4 v1, 0x1

    const/16 v2, 0x190

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    sput-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    .line 99
    new-instance v0, Landroid/media/VolumePolicy$1;

    invoke-direct {v0}, Landroid/media/VolumePolicy$1;-><init>()V

    .line 98
    sput-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>(ZZZI)V
    .locals 0
    .param p1, "volumeDownToEnterSilent"    # Z
    .param p2, "volumeUpToExitSilent"    # Z
    .param p3, "doNotDisturbWhenSilent"    # Z
    .param p4, "vibrateToSilentDebounce"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 55
    iput-boolean p2, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 56
    iput-boolean p3, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 57
    iput p4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    instance-of v3, p1, Landroid/media/VolumePolicy;

    if-nez v3, :cond_0

    return v2

    .line 77
    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Landroid/media/VolumePolicy;

    .line 79
    .local v0, "other":Landroid/media/VolumePolicy;
    iget-boolean v3, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-ne v3, v4, :cond_3

    .line 80
    iget-boolean v3, v0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-ne v3, v4, :cond_3

    .line 81
    iget-boolean v3, v0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-ne v3, v4, :cond_3

    .line 82
    iget v3, v0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    iget v4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    if-ne v3, v4, :cond_2

    .line 79
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 82
    goto :goto_0

    :cond_3
    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 70
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VolumePolicy[volumeDownToEnterSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    const-string/jumbo v1, ",volumeUpToExitSilent="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string/jumbo v1, ",doNotDisturbWhenSilent="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string/jumbo v1, ",vibrateToSilentDebounce="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "]"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean v0, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 93
    goto :goto_1

    :cond_2
    move v1, v2

    .line 94
    goto :goto_2
.end method
