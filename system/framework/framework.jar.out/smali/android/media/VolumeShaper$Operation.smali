.class public final Landroid/media/VolumeShaper$Operation;
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
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation$1;,
        Landroid/media/VolumeShaper$Operation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumeShaper$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_CREATE_IF_NEEDED:I = 0x10

.field private static final FLAG_DEFER:I = 0x8

.field private static final FLAG_JOIN:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_PUBLIC_ALL:I = 0x3

.field private static final FLAG_REVERSE:I = 0x1

.field private static final FLAG_TERMINATE:I = 0x2

.field public static final PLAY:Landroid/media/VolumeShaper$Operation;

.field public static final REVERSE:Landroid/media/VolumeShaper$Operation;


# instance fields
.field private final mFlags:I

.field private final mReplaceId:I

.field private final mXOffset:F


# direct methods
.method static synthetic -get0(Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/VolumeShaper$Operation;

    .prologue
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    return v0
.end method

.method static synthetic -get1(Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/VolumeShaper$Operation;

    .prologue
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/VolumeShaper$Operation;)F
    .locals 1
    .param p0, "-this"    # Landroid/media/VolumeShaper$Operation;

    .prologue
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1055
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    .line 1054
    sput-object v0, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    .line 1064
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->reverse()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    .line 1063
    sput-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 1168
    new-instance v0, Landroid/media/VolumeShaper$Operation$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$1;-><init>()V

    .line 1167
    sput-object v0, Landroid/media/VolumeShaper$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1048
    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "replaceId"    # I
    .param p3, "xOffset"    # F

    .prologue
    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    iput p1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 1190
    iput p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 1191
    iput p3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 1192
    return-void
.end method

.method synthetic constructor <init>(IIFLandroid/media/VolumeShaper$Operation;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "replaceId"    # I
    .param p3, "xOffset"    # F
    .param p4, "-this3"    # Landroid/media/VolumeShaper$Operation;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1156
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1145
    instance-of v3, p1, Landroid/media/VolumeShaper$Operation;

    if-nez v3, :cond_0

    return v2

    .line 1146
    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 1147
    check-cast v0, Landroid/media/VolumeShaper$Operation;

    .line 1149
    .local v0, "other":Landroid/media/VolumeShaper$Operation;
    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iget v4, v0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    if-ne v3, v4, :cond_3

    .line 1150
    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iget v4, v0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    if-ne v3, v4, :cond_3

    .line 1151
    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iget v4, v0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 1149
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1151
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1149
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1140
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VolumeShaper.Operation{mFlags = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    const-string/jumbo v1, ", mReplaceId = "

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    const-string/jumbo v1, ", mXOffset = "

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1135
    const-string/jumbo v1, "}"

    .line 1131
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
    .line 1162
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1165
    return-void
.end method
