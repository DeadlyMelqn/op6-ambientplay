.class public Landroid/os/VibrationEffect$OneShot;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$OneShot$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/VibrationEffect$OneShot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAmplitude:I

.field private mTiming:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Landroid/os/VibrationEffect$OneShot$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$OneShot$1;-><init>()V

    .line 265
    sput-object v0, Landroid/os/VibrationEffect$OneShot;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 202
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "milliseconds"    # J
    .param p3, "amplitude"    # I

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 211
    iput-wide p1, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 212
    iput p3, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    .line 208
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 238
    instance-of v2, p1, Landroid/os/VibrationEffect$OneShot;

    if-nez v2, :cond_0

    .line 239
    return v1

    :cond_0
    move-object v0, p1

    .line 241
    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 242
    .local v0, "other":Landroid/os/VibrationEffect$OneShot;
    iget-wide v2, v0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    iget-wide v4, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, v0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    iget v3, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAmplitude()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    return v0
.end method

.method public getTiming()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 247
    const/16 v0, 0x11

    .line 248
    .local v0, "result":I
    iget-wide v2, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    long-to-int v1, v2

    mul-int/lit8 v0, v1, 0x25

    .line 249
    iget v1, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    mul-int/lit8 v0, v1, 0x25

    .line 250
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OneShot{mTiming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 4

    .prologue
    .line 225
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    if-nez v0, :cond_1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    iget v2, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    const-string/jumbo v2, ")"

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 230
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timing must be positive (timing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 262
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return-void
.end method
