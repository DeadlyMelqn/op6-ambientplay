.class public final Landroid/media/BufferingParams;
.super Ljava/lang/Object;
.source "BufferingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/BufferingParams$1;,
        Landroid/media/BufferingParams$Builder;
    }
.end annotation


# static fields
.field public static final BUFFERING_MODE_NONE:I = 0x0

.field public static final BUFFERING_MODE_SIZE_ONLY:I = 0x2

.field public static final BUFFERING_MODE_TIME_ONLY:I = 0x1

.field public static final BUFFERING_MODE_TIME_THEN_SIZE:I = 0x3

.field private static final BUFFERING_NO_WATERMARK:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/BufferingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInitialBufferingMode:I

.field private mInitialWatermarkKB:I

.field private mInitialWatermarkMs:I

.field private mRebufferingMode:I

.field private mRebufferingWatermarkHighKB:I

.field private mRebufferingWatermarkHighMs:I

.field private mRebufferingWatermarkLowKB:I

.field private mRebufferingWatermarkLowMs:I


# direct methods
.method static synthetic -get0(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    return v0
.end method

.method static synthetic -get1(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    return v0
.end method

.method static synthetic -get3(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    return v0
.end method

.method static synthetic -get4(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return v0
.end method

.method static synthetic -get5(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    return v0
.end method

.method static synthetic -get6(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    return v0
.end method

.method static synthetic -get7(Landroid/media/BufferingParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/media/BufferingParams;

    .prologue
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    return v0
.end method

.method static synthetic -set0(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    return p1
.end method

.method static synthetic -set1(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    return p1
.end method

.method static synthetic -set2(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    return p1
.end method

.method static synthetic -set3(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    return p1
.end method

.method static synthetic -set4(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return p1
.end method

.method static synthetic -set5(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    return p1
.end method

.method static synthetic -set6(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    return p1
.end method

.method static synthetic -set7(Landroid/media/BufferingParams;I)I
    .locals 0
    .param p0, "-this"    # Landroid/media/BufferingParams;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Landroid/media/BufferingParams$1;

    invoke-direct {v0}, Landroid/media/BufferingParams$1;-><init>()V

    .line 428
    sput-object v0, Landroid/media/BufferingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v1, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    .line 106
    iput v1, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    .line 108
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    .line 109
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    .line 111
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    .line 112
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    .line 113
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    .line 114
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/BufferingParams;)V
    .locals 0
    .param p1, "-this0"    # Landroid/media/BufferingParams;

    .prologue
    invoke-direct {p0}, Landroid/media/BufferingParams;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v1, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    .line 106
    iput v1, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    .line 108
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    .line 109
    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    .line 111
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    .line 112
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    .line 113
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    .line 114
    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/BufferingParams;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/media/BufferingParams;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/BufferingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public getInitialBufferingMode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    return v0
.end method

.method public getInitialBufferingWatermarkKB()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    return v0
.end method

.method public getInitialBufferingWatermarkMs()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    return v0
.end method

.method public getRebufferingMode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    return v0
.end method

.method public getRebufferingWatermarkHighKB()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    return v0
.end method

.method public getRebufferingWatermarkHighMs()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    return v0
.end method

.method public getRebufferingWatermarkLowKB()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    return v0
.end method

.method public getRebufferingWatermarkLowMs()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 449
    iget v0, p0, Landroid/media/BufferingParams;->mInitialBufferingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v0, p0, Landroid/media/BufferingParams;->mInitialWatermarkKB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkLowKB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v0, p0, Landroid/media/BufferingParams;->mRebufferingWatermarkHighKB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    return-void
.end method
