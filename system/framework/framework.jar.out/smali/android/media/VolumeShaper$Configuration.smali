.class public final Landroid/media/VolumeShaper$Configuration;
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
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$1;,
        Landroid/media/VolumeShaper$Configuration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final TYPE_ID:I = 0x0

.field static final TYPE_SCALE:I = 0x1


# instance fields
.field private final mDurationMs:D

.field private final mId:I

.field private final mInterpolatorType:I

.field private final mOptionFlags:I

.field private final mTimes:[F

.field private final mType:I

.field private final mVolumes:[F


# direct methods
.method static synthetic -wrap0([F[FZZ)V
    .locals 0
    .param p0, "times"    # [F
    .param p1, "volumes"    # [F
    .param p2, "log"    # Z
    .param p3, "ise"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method static synthetic -wrap1(FZ)V
    .locals 0
    .param p0, "volume"    # F
    .param p1, "log"    # Z

    .prologue
    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method static synthetic -wrap2([FZ)V
    .locals 0
    .param p0, "volumes"    # [F
    .param p1, "log"    # Z

    .prologue
    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v11, 0x10

    const/4 v10, 0x2

    .line 350
    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 351
    const/4 v7, 0x1

    .line 350
    invoke-virtual {v6, v7}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    .line 352
    new-array v7, v10, [F

    fill-array-data v7, :array_0

    .line 353
    new-array v8, v10, [F

    fill-array-data v8, :array_1

    .line 350
    invoke-virtual {v6, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 363
    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    .line 365
    new-array v7, v10, [F

    fill-array-data v7, :array_2

    .line 366
    new-array v8, v10, [F

    fill-array-data v8, :array_3

    .line 363
    invoke-virtual {v6, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 388
    const/16 v0, 0x10

    .line 389
    .local v0, "POINTS":I
    new-array v5, v11, [F

    .line 390
    .local v5, "times":[F
    new-array v4, v11, [F

    .line 391
    .local v4, "sines":[F
    new-array v2, v11, [F

    .line 392
    .local v2, "scurve":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_0

    .line 393
    int-to-float v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    div-float/2addr v6, v7

    aput v6, v5, v1

    .line 394
    aget v6, v5, v1

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 395
    .local v3, "sine":F
    aput v3, v4, v1

    .line 396
    mul-float v6, v3, v3

    aput v6, v2, v1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v3    # "sine":F
    :cond_0
    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 403
    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 496
    new-instance v6, Landroid/media/VolumeShaper$Configuration$1;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    .line 495
    sput-object v6, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    return-void

    .line 352
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 353
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 365
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 366
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    if-gez p1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "negative id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 555
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 556
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 557
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 559
    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 560
    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 561
    return-void
.end method

.method private constructor <init>(IIIDI[F[F)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "optionFlags"    # I
    .param p4, "durationMs"    # D
    .param p6, "interpolatorType"    # I
    .param p7, "times"    # [F
    .param p8, "volumes"    # [F

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 575
    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 576
    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 577
    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 578
    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 580
    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 581
    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 582
    return-void
.end method

.method synthetic constructor <init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "optionFlags"    # I
    .param p4, "durationMs"    # D
    .param p6, "interpolatorType"    # I
    .param p7, "times"    # [F
    .param p8, "volumes"    # [F
    .param p9, "-this7"    # Landroid/media/VolumeShaper$Configuration;

    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method private static checkCurveForErrors([F[FZ)Ljava/lang/String;
    .locals 8
    .param p0, "times"    # [F
    .param p1, "volumes"    # [F
    .param p2, "log"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 661
    if-nez p0, :cond_0

    .line 662
    const-string/jumbo v1, "times array must be non-null"

    return-object v1

    .line 663
    :cond_0
    if-nez p1, :cond_1

    .line 664
    const-string/jumbo v1, "volumes array must be non-null"

    return-object v1

    .line 665
    :cond_1
    array-length v1, p0

    array-length v4, p1

    if-eq v1, v4, :cond_2

    .line 666
    const-string/jumbo v1, "array length must match"

    return-object v1

    .line 667
    :cond_2
    array-length v1, p0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 668
    const-string/jumbo v1, "array length must be at least 2"

    return-object v1

    .line 669
    :cond_3
    array-length v1, p0

    const/16 v4, 0x10

    if-le v1, v4, :cond_4

    .line 670
    const-string/jumbo v1, "array length must be no larger than 16"

    return-object v1

    .line 671
    :cond_4
    aget v1, p0, v3

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5

    .line 672
    const-string/jumbo v1, "times must start at 0.f"

    return-object v1

    .line 673
    :cond_5
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget v1, p0, v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_6

    .line 674
    const-string/jumbo v1, "times must end at 1.f"

    return-object v1

    .line 678
    :cond_6
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 679
    aget v1, p0, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p0, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    move v1, v2

    :goto_1
    if-nez v1, :cond_8

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "times not monotonic increasing, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    move v1, v3

    .line 679
    goto :goto_1

    .line 678
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    :cond_9
    if-eqz p2, :cond_c

    .line 684
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 685
    aget v1, p1, v0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_a

    move v1, v2

    :goto_3
    if-nez v1, :cond_b

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for log scale cannot be positive, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_a
    move v1, v3

    .line 685
    goto :goto_3

    .line 684
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 691
    :cond_c
    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 692
    aget v1, p1, v0

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_e

    move v1, v2

    :goto_5
    if-eqz v1, :cond_d

    aget v1, p1, v0

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_f

    move v1, v2

    :goto_6
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    .line 693
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for linear scale must be between 0.f and 1.f, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_e
    move v1, v3

    .line 692
    goto :goto_5

    :cond_f
    move v1, v3

    goto :goto_6

    .line 691
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 698
    :cond_11
    return-object v6
.end method

.method private static checkCurveForErrorsAndThrowException([F[FZZ)V
    .locals 2
    .param p0, "times"    # [F
    .param p1, "volumes"    # [F
    .param p2, "log"    # Z
    .param p3, "ise"    # Z

    .prologue
    .line 703
    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 705
    if-eqz p3, :cond_0

    .line 706
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_1
    return-void
.end method

.method private static checkValidVolumeAndThrowException(FZ)V
    .locals 3
    .param p0, "volume"    # F
    .param p1, "log"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 714
    if-eqz p1, :cond_1

    .line 715
    cmpg-float v2, p0, v2

    if-gtz v2, :cond_0

    :goto_0
    if-nez v0, :cond_5

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dbfs volume must be 0.f or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 715
    goto :goto_0

    .line 719
    :cond_1
    cmpl-float v2, p0, v2

    if-ltz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_4

    :goto_2
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 720
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volume must be >= 0.f and <= 1.f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    .line 719
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    .line 723
    :cond_5
    return-void
.end method

.method private static clampVolume([FZ)V
    .locals 6
    .param p0, "volumes"    # [F
    .param p1, "log"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 726
    if-eqz p1, :cond_2

    .line 727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_7

    .line 728
    aget v1, p0, v0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

    .line 729
    aput v4, p0, v0

    .line 727
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 728
    goto :goto_1

    .line 733
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_7

    .line 734
    aget v1, p0, v0

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_4

    move v1, v2

    :goto_3
    if-nez v1, :cond_5

    .line 735
    aput v4, p0, v0

    .line 733
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    .line 734
    goto :goto_3

    .line 736
    :cond_5
    aget v1, p0, v0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_6

    move v1, v2

    :goto_5
    if-nez v1, :cond_3

    .line 737
    aput v5, p0, v0

    goto :goto_4

    :cond_6
    move v1, v3

    .line 736
    goto :goto_5

    .line 741
    :cond_7
    return-void
.end method

.method public static getMaximumCurvePoints()I
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 453
    instance-of v3, p1, Landroid/media/VolumeShaper$Configuration;

    if-nez v3, :cond_0

    return v2

    .line 454
    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 455
    check-cast v0, Landroid/media/VolumeShaper$Configuration;

    .line 459
    .local v0, "other":Landroid/media/VolumeShaper$Configuration;
    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iget v4, v0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-ne v3, v4, :cond_4

    .line 460
    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iget v4, v0, Landroid/media/VolumeShaper$Configuration;->mId:I

    if-ne v3, v4, :cond_4

    .line 461
    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v3, :cond_2

    .line 462
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iget v3, v0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    if-ne v1, v3, :cond_3

    .line 463
    iget-wide v4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iget-wide v6, v0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    cmpl-double v1, v4, v6

    if-nez v1, :cond_3

    .line 464
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iget v3, v0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    if-ne v1, v3, :cond_3

    .line 465
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iget-object v3, v0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    .line 462
    if-eqz v1, :cond_3

    .line 466
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    iget-object v2, v0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    .line 459
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 462
    goto :goto_0

    :cond_4
    move v1, v2

    .line 459
    goto :goto_0
.end method

.method getAllOptionFlags()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 624
    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return v0
.end method

.method public getInterpolatorType()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return v0
.end method

.method public getOptionFlags()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTimes()[F
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return v0
.end method

.method public getVolumes()[F
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_0

    .line 445
    new-array v0, v4, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 444
    :goto_0
    return v0

    .line 446
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 447
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 448
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 446
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VolumeShaper.Configuration{mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    const-string/jumbo v1, ", mId = "

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 432
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_0

    .line 433
    const-string/jumbo v0, "}"

    .line 429
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", mOptionFlags = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v2, ", mDurationMs = "

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 434
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    const-string/jumbo v2, ", mInterpolatorType = "

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string/jumbo v2, ", mTimes[] = "

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string/jumbo v2, ", mVolumes[] = "

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v2, "}"

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 477
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v1, :cond_0

    .line 480
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 483
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 485
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 487
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 489
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 490
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
