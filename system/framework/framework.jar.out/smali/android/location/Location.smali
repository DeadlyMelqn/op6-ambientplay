.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$1;,
        Landroid/location/Location$2;,
        Landroid/location/Location$BearingDistanceCache;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2

.field private static final HAS_ALTITUDE_MASK:I = 0x1

.field private static final HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final HAS_BEARING_MASK:I = 0x4

.field private static final HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final HAS_SPEED_MASK:I = 0x2

.field private static final HAS_VERTICAL_ACCURACY_MASK:I = 0x20

.field private static sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAltitude:D

.field private mBearing:F

.field private mBearingAccuracyDegrees:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mFieldsMask:B

.field private mHorizontalAccuracyMeters:F

.field private mLatitude:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mSpeed:F

.field private mSpeedAccuracyMetersPerSecond:F

.field private mTime:J

.field private mVerticalAccuracyMeters:F


# direct methods
.method static synthetic -set0(Landroid/location/Location;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/Location;F)F
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method static synthetic -set10(Landroid/location/Location;F)F
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return p1
.end method

.method static synthetic -set11(Landroid/location/Location;J)J
    .locals 1
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic -set12(Landroid/location/Location;F)F
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return p1
.end method

.method static synthetic -set2(Landroid/location/Location;F)F
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return p1
.end method

.method static synthetic -set3(Landroid/location/Location;J)J
    .locals 1
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set5(Landroid/location/Location;B)B
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # B

    .prologue
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    return p1
.end method

.method static synthetic -set6(Landroid/location/Location;F)F
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return p1
.end method

.method static synthetic -set7(Landroid/location/Location;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/Location;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/Location;F)F
    .locals 0
    .param p0, "-this"    # Landroid/location/Location;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    .line 117
    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 1067
    new-instance v0, Landroid/location/Location$2;

    invoke-direct {v0}, Landroid/location/Location$2;-><init>()V

    .line 1066
    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 6
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    .line 127
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 128
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 129
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 130
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 131
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 132
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 133
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 134
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 135
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 136
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 141
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 159
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    .line 127
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 128
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 129
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 130
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 131
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 132
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 133
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 134
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 135
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 136
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 141
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 152
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 153
    return-void
.end method

.method private static computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .locals 88
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # Landroid/location/Location$BearingDistanceCache;

    .prologue
    .line 337
    const/16 v12, 0x14

    .line 339
    .local v12, "MAXITERS":I
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v76

    .line 340
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p4, p4, v76

    .line 341
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p2, p2, v76

    .line 342
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p6, p6, v76

    .line 344
    const-wide v18, 0x415854a640000000L    # 6378137.0

    .line 345
    .local v18, "a":D
    const-wide v22, 0x41583fc4141bda51L    # 6356752.3142

    .line 346
    .local v22, "b":D
    const-wide v76, 0x40d4e22be425af00L    # 21384.685800000094

    .line 344
    const-wide v78, 0x415854a640000000L    # 6378137.0

    .line 346
    div-double v44, v76, v78

    .line 347
    .local v44, "f":D
    const-wide v76, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    const-wide v78, 0x42c260252eea6b87L    # 4.0408299984087055E13

    sub-double v76, v76, v78

    const-wide v78, 0x42c260252eea6b87L    # 4.0408299984087055E13

    div-double v20, v76, v78

    .line 349
    .local v20, "aSqMinusBSqOverBSq":D
    sub-double v10, p6, p2

    .line 350
    .local v10, "L":D
    const-wide/16 v4, 0x0

    .line 351
    .local v4, "A":D
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    sub-double v76, v76, v44

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v78

    mul-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    .line 352
    .local v14, "U1":D
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    sub-double v76, v76, v44

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v78

    mul-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    .line 354
    .local v16, "U2":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    .line 355
    .local v34, "cosU1":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    .line 356
    .local v38, "cosU2":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v64

    .line 357
    .local v64, "sinU1":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v68

    .line 358
    .local v68, "sinU2":D
    mul-double v36, v34, v38

    .line 359
    .local v36, "cosU1cosU2":D
    mul-double v66, v64, v68

    .line 361
    .local v66, "sinU1sinU2":D
    const-wide/16 v54, 0x0

    .line 362
    .local v54, "sigma":D
    const-wide/16 v42, 0x0

    .line 363
    .local v42, "deltaSigma":D
    const-wide/16 v32, 0x0

    .line 364
    .local v32, "cosSqAlpha":D
    const-wide/16 v24, 0x0

    .line 365
    .local v24, "cos2SM":D
    const-wide/16 v30, 0x0

    .line 366
    .local v30, "cosSigma":D
    const-wide/16 v60, 0x0

    .line 367
    .local v60, "sinSigma":D
    const-wide/16 v28, 0x0

    .line 368
    .local v28, "cosLambda":D
    const-wide/16 v58, 0x0

    .line 370
    .local v58, "sinLambda":D
    move-wide/from16 v50, v10

    .line 371
    .local v50, "lambda":D
    const/16 v48, 0x0

    .line 337
    .local v48, "iter":I
    :goto_0
    const/16 v49, 0x14

    .line 371
    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_0

    .line 372
    move-wide/from16 v52, v50

    .line 373
    .local v52, "lambdaOrig":D
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 374
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v58

    .line 375
    mul-double v70, v38, v58

    .line 376
    .local v70, "t1":D
    mul-double v76, v34, v68

    mul-double v78, v64, v38

    mul-double v78, v78, v28

    sub-double v72, v76, v78

    .line 377
    .local v72, "t2":D
    mul-double v76, v70, v70

    mul-double v78, v72, v72

    add-double v62, v76, v78

    .line 378
    .local v62, "sinSqSigma":D
    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v60

    .line 379
    mul-double v76, v36, v28

    add-double v30, v66, v76

    .line 380
    move-wide/from16 v0, v60

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v54

    .line 381
    const-wide/16 v76, 0x0

    cmpl-double v49, v60, v76

    if-nez v49, :cond_1

    const-wide/16 v56, 0x0

    .line 383
    .local v56, "sinAlpha":D
    :goto_1
    mul-double v76, v56, v56

    const-wide/high16 v78, 0x3ff0000000000000L    # 1.0

    sub-double v32, v78, v76

    .line 384
    const-wide/16 v76, 0x0

    cmpl-double v49, v32, v76

    if-nez v49, :cond_2

    const-wide/16 v24, 0x0

    .line 387
    :goto_2
    mul-double v74, v32, v20

    .line 388
    .local v74, "uSquared":D
    const-wide/high16 v76, 0x40d0000000000000L    # 16384.0

    div-double v76, v74, v76

    .line 390
    const-wide v78, 0x4065e00000000000L    # 175.0

    mul-double v78, v78, v74

    const-wide/high16 v80, 0x4074000000000000L    # 320.0

    sub-double v78, v80, v78

    mul-double v78, v78, v74

    const-wide/high16 v80, -0x3f78000000000000L    # -768.0

    add-double v78, v78, v80

    .line 389
    mul-double v78, v78, v74

    const-wide/high16 v80, 0x40b0000000000000L    # 4096.0

    add-double v78, v78, v80

    .line 388
    mul-double v76, v76, v78

    const-wide/high16 v78, 0x3ff0000000000000L    # 1.0

    add-double v4, v78, v76

    .line 391
    const-wide/high16 v76, 0x4090000000000000L    # 1024.0

    div-double v76, v74, v76

    .line 393
    const-wide v78, 0x4047800000000000L    # 47.0

    mul-double v78, v78, v74

    const-wide v80, 0x4052800000000000L    # 74.0

    sub-double v78, v80, v78

    mul-double v78, v78, v74

    const-wide/high16 v80, -0x3fa0000000000000L    # -128.0

    add-double v78, v78, v80

    .line 392
    mul-double v78, v78, v74

    const-wide/high16 v80, 0x4070000000000000L    # 256.0

    add-double v78, v78, v80

    .line 391
    mul-double v6, v76, v78

    .line 394
    .local v6, "B":D
    const-wide/high16 v76, 0x4030000000000000L    # 16.0

    div-double v76, v44, v76

    mul-double v76, v76, v32

    .line 396
    const-wide/high16 v78, 0x4008000000000000L    # 3.0

    mul-double v78, v78, v32

    const-wide/high16 v80, 0x4010000000000000L    # 4.0

    sub-double v78, v80, v78

    mul-double v78, v78, v44

    const-wide/high16 v80, 0x4010000000000000L    # 4.0

    add-double v78, v78, v80

    .line 394
    mul-double v8, v76, v78

    .line 397
    .local v8, "C":D
    mul-double v26, v24, v24

    .line 398
    .local v26, "cos2SMSq":D
    mul-double v76, v6, v60

    .line 399
    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    div-double v78, v6, v78

    .line 400
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, v26

    const-wide/high16 v82, -0x4010000000000000L    # -1.0

    add-double v80, v80, v82

    mul-double v80, v80, v30

    .line 401
    const-wide/high16 v82, 0x4018000000000000L    # 6.0

    div-double v82, v6, v82

    mul-double v82, v82, v24

    .line 402
    const-wide/high16 v84, 0x4010000000000000L    # 4.0

    mul-double v84, v84, v60

    mul-double v84, v84, v60

    const-wide/high16 v86, -0x3ff8000000000000L    # -3.0

    add-double v84, v84, v86

    .line 401
    mul-double v82, v82, v84

    .line 403
    const-wide/high16 v84, 0x4010000000000000L    # 4.0

    mul-double v84, v84, v26

    const-wide/high16 v86, -0x3ff8000000000000L    # -3.0

    add-double v84, v84, v86

    .line 401
    mul-double v82, v82, v84

    .line 400
    sub-double v80, v80, v82

    .line 399
    mul-double v78, v78, v80

    add-double v78, v78, v24

    .line 398
    mul-double v42, v76, v78

    .line 406
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    sub-double v76, v76, v8

    mul-double v76, v76, v44

    mul-double v76, v76, v56

    .line 407
    mul-double v78, v8, v60

    .line 408
    mul-double v80, v8, v30

    .line 409
    const-wide/high16 v82, 0x4000000000000000L    # 2.0

    mul-double v82, v82, v24

    mul-double v82, v82, v24

    const-wide/high16 v84, -0x4010000000000000L    # -1.0

    add-double v82, v82, v84

    .line 408
    mul-double v80, v80, v82

    add-double v80, v80, v24

    .line 407
    mul-double v78, v78, v80

    add-double v78, v78, v54

    .line 406
    mul-double v76, v76, v78

    .line 405
    add-double v50, v10, v76

    .line 411
    sub-double v76, v50, v52

    div-double v40, v76, v50

    .line 412
    .local v40, "delta":D
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v76

    const-wide v78, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v49, v76, v78

    if-gez v49, :cond_3

    .line 345
    .end local v6    # "B":D
    .end local v8    # "C":D
    .end local v26    # "cos2SMSq":D
    .end local v40    # "delta":D
    .end local v52    # "lambdaOrig":D
    .end local v56    # "sinAlpha":D
    .end local v62    # "sinSqSigma":D
    .end local v70    # "t1":D
    .end local v72    # "t2":D
    .end local v74    # "uSquared":D
    :cond_0
    const-wide v76, 0x41583fc4141bda51L    # 6356752.3142

    .line 417
    mul-double v76, v76, v4

    sub-double v78, v54, v42

    mul-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v13, v0

    .line 418
    .local v13, "distance":F
    move-object/from16 v0, p8

    invoke-static {v0, v13}, Landroid/location/Location$BearingDistanceCache;->-set0(Landroid/location/Location$BearingDistanceCache;F)F

    .line 419
    mul-double v76, v38, v58

    .line 420
    mul-double v78, v34, v68

    mul-double v80, v64, v38

    mul-double v80, v80, v28

    sub-double v78, v78, v80

    .line 419
    invoke-static/range {v76 .. v79}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v76

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v47, v0

    .line 421
    .local v47, "initialBearing":F
    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v76, v0

    const-wide v78, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v47, v0

    .line 422
    move-object/from16 v0, p8

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set2(Landroid/location/Location$BearingDistanceCache;F)F

    .line 423
    mul-double v76, v34, v58

    .line 424
    move-wide/from16 v0, v64

    neg-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v38

    mul-double v80, v34, v68

    mul-double v80, v80, v28

    add-double v78, v78, v80

    .line 423
    invoke-static/range {v76 .. v79}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v76

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v46, v0

    .line 425
    .local v46, "finalBearing":F
    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v76, v0

    const-wide v78, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v46, v0

    .line 426
    move-object/from16 v0, p8

    move/from16 v1, v46

    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set1(Landroid/location/Location$BearingDistanceCache;F)F

    .line 427
    move-object/from16 v0, p8

    move-wide/from16 v1, p0

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set3(Landroid/location/Location$BearingDistanceCache;D)D

    .line 428
    move-object/from16 v0, p8

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set4(Landroid/location/Location$BearingDistanceCache;D)D

    .line 429
    move-object/from16 v0, p8

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set5(Landroid/location/Location$BearingDistanceCache;D)D

    .line 430
    move-object/from16 v0, p8

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set6(Landroid/location/Location$BearingDistanceCache;D)D

    .line 431
    return-void

    .line 382
    .end local v13    # "distance":F
    .end local v46    # "finalBearing":F
    .end local v47    # "initialBearing":F
    .restart local v52    # "lambdaOrig":D
    .restart local v62    # "sinSqSigma":D
    .restart local v70    # "t1":D
    .restart local v72    # "t2":D
    :cond_1
    mul-double v76, v36, v58

    div-double v56, v76, v60

    .restart local v56    # "sinAlpha":D
    goto/16 :goto_1

    .line 385
    :cond_2
    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    mul-double v76, v76, v66

    div-double v76, v76, v32

    sub-double v24, v30, v76

    goto/16 :goto_2

    .line 371
    .restart local v6    # "B":D
    .restart local v8    # "C":D
    .restart local v26    # "cos2SMSq":D
    .restart local v40    # "delta":D
    .restart local v74    # "uSquared":D
    :cond_3
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 22
    .param p0, "coordinate"    # Ljava/lang/String;

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    new-instance v18, Ljava/lang/NullPointerException;

    const-string/jumbo v19, "coordinate"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 270
    :cond_0
    const/4 v8, 0x0

    .line 271
    .local v8, "negative":Z
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 272
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 273
    const/4 v8, 0x1

    .line 276
    :cond_1
    new-instance v14, Ljava/util/StringTokenizer;

    const-string/jumbo v18, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v15

    .line 278
    .local v15, "tokens":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 279
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 282
    :cond_2
    :try_start_0
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "degrees":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_4

    .line 285
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 286
    .local v16, "val":D
    if-eqz v8, :cond_3

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .end local v16    # "val":D
    :cond_3
    return-wide v16

    .line 289
    :cond_4
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "minutes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "deg":I
    const-wide/16 v10, 0x0

    .line 293
    .local v10, "sec":D
    const/4 v12, 0x0

    .line 295
    .local v12, "secPresent":Z
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 296
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-double v6, v0

    .line 297
    .local v6, "min":D
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 298
    .local v13, "seconds":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 299
    const/4 v12, 0x1

    .line 304
    .end local v13    # "seconds":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_8

    const/16 v18, 0xb4

    move/from16 v0, v18

    if-ne v2, v0, :cond_8

    .line 305
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_8

    const-wide/16 v18, 0x0

    cmpl-double v18, v10, v18

    if-nez v18, :cond_7

    const/4 v4, 0x1

    .line 308
    .local v4, "isNegative180":Z
    :goto_1
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_5

    const/16 v18, 0xb3

    move/from16 v0, v18

    if-le v2, v0, :cond_9

    xor-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_9

    .line 309
    :cond_5
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v2    # "deg":I
    .end local v3    # "degrees":Ljava/lang/String;
    .end local v4    # "isNegative180":Z
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "min":D
    .end local v10    # "sec":D
    .end local v12    # "secPresent":Z
    :catch_0
    move-exception v9

    .line 328
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 301
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "deg":I
    .restart local v3    # "degrees":Ljava/lang/String;
    .restart local v5    # "minutes":Ljava/lang/String;
    .restart local v10    # "sec":D
    .restart local v12    # "secPresent":Z
    :cond_6
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .restart local v6    # "min":D
    goto :goto_0

    .line 305
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "isNegative180":Z
    goto :goto_1

    .line 304
    .end local v4    # "isNegative180":Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "isNegative180":Z
    goto :goto_1

    .line 313
    :cond_9
    const-wide/16 v18, 0x0

    cmpg-double v18, v6, v18

    if-ltz v18, :cond_a

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    cmpl-double v18, v6, v18

    if-ltz v18, :cond_b

    .line 314
    :cond_a
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 313
    :cond_b
    if-eqz v12, :cond_c

    const-wide v18, 0x404d800000000000L    # 59.0

    cmpl-double v18, v6, v18

    if-gtz v18, :cond_a

    .line 319
    :cond_c
    const-wide/16 v18, 0x0

    cmpg-double v18, v10, v18

    if-ltz v18, :cond_d

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    cmpl-double v18, v10, v18

    if-ltz v18, :cond_e

    .line 320
    :cond_d
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :cond_e
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v20, v20, v6

    add-double v18, v18, v20

    add-double v16, v18, v10

    .line 325
    .restart local v16    # "val":D
    const-wide v18, 0x40ac200000000000L    # 3600.0

    div-double v16, v16, v18

    .line 326
    if-eqz v8, :cond_f

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .end local v16    # "val":D
    :cond_f
    return-wide v16
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 12
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .prologue
    const/16 v10, 0x3a

    const/4 v7, 0x1

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    const/4 v6, 0x2

    .line 216
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v4

    if-lez v4, :cond_1

    .line 218
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    .line 216
    if-nez v4, :cond_0

    .line 220
    if-eqz p2, :cond_2

    .line 221
    if-eq p2, v7, :cond_2

    .line 222
    if-eq p2, v6, :cond_2

    .line 223
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    .line 230
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    neg-double p0, p0

    .line 234
    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "df":Ljava/text/DecimalFormat;
    if-eq p2, v7, :cond_4

    if-ne p2, v6, :cond_5

    .line 236
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 237
    .local v0, "degrees":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 240
    mul-double/2addr p0, v8

    .line 241
    if-ne p2, v6, :cond_5

    .line 242
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 243
    .local v2, "minutes":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 246
    mul-double/2addr p0, v8

    .line 249
    .end local v0    # "degrees":I
    .end local v2    # "minutes":I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 12
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    .prologue
    .line 453
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 454
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "results is null or has length < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_1
    sget-object v2, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location$BearingDistanceCache;

    .local v10, "cache":Landroid/location/Location$BearingDistanceCache;
    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    .line 457
    invoke-static/range {v2 .. v10}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 459
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get0(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, p8, v3

    .line 460
    move-object/from16 v0, p8

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 461
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get2(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    const/4 v3, 0x1

    aput v2, p8, v3

    .line 462
    move-object/from16 v0, p8

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 463
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get1(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    const/4 v3, 0x2

    aput v2, p8, v3

    .line 466
    :cond_2
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 9
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 498
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location$BearingDistanceCache;

    .line 500
    .local v8, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get3(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get5(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 502
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 503
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    .line 502
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 505
    :cond_1
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get2(Landroid/location/Location$BearingDistanceCache;)F

    move-result v0

    return v0

    .line 501
    :cond_2
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get4(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get6(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 9
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 477
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location$BearingDistanceCache;

    .line 479
    .local v8, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get3(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get5(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 481
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 482
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    .line 481
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 484
    :cond_1
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get0(Landroid/location/Location$BearingDistanceCache;)F

    move-result v0

    return v0

    .line 480
    :cond_2
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get4(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get6(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1064
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 631
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getBearingAccuracyDegrees()F
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .prologue
    .line 571
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1126
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1128
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 1129
    check-cast v0, Landroid/location/Location;

    .end local v0    # "value":Landroid/os/Parcelable;
    return-object v0

    .line 1132
    :cond_0
    return-object v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 607
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getSpeedAccuracyMetersPerSecond()F
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 542
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public getVerticalAccuracyMeters()F
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 757
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 621
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasBearing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 702
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasBearingAccuracy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 916
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSpeed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 662
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSpeedAccuracy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 868
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVerticalAccuracy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 815
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isComplete()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 974
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    return v2

    .line 975
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 976
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    return v2

    .line 977
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    return v2

    .line 978
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isFromMockProvider()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1155
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public makeComplete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 992
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 993
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 995
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 997
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 998
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 999
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 807
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 808
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 809
    return-void
.end method

.method public removeAltitude()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 655
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 656
    return-void
.end method

.method public removeBearing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 747
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 748
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 749
    return-void
.end method

.method public removeBearingAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 956
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 957
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit16 v0, v0, -0x81

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 958
    return-void
.end method

.method public removeSpeed()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 694
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 695
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 696
    return-void
.end method

.method public removeSpeedAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 908
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 909
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 910
    return-void
.end method

.method public removeVerticalAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 860
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 861
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 862
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 186
    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 187
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    .line 188
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 189
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 190
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 191
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 192
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 193
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 194
    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 195
    iput v1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 196
    iput v1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 197
    iput v1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 198
    iput v1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 199
    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 4
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 167
    iget-wide v2, p1, Landroid/location/Location;->mTime:J

    iput-wide v2, p0, Landroid/location/Location;->mTime:J

    .line 168
    iget-wide v2, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 169
    iget-byte v1, p1, Landroid/location/Location;->mFieldsMask:B

    iput-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 170
    iget-wide v2, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 171
    iget-wide v2, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 172
    iget-wide v2, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 173
    iget v1, p1, Landroid/location/Location;->mSpeed:F

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 174
    iget v1, p1, Landroid/location/Location;->mBearing:F

    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 175
    iget v1, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 176
    iget v1, p1, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iput v1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 177
    iget v1, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 178
    iget v1, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput v1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 179
    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 180
    return-void

    .line 179
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "horizontalAccuracy"    # F

    .prologue
    .line 793
    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 794
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 795
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    .line 640
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 641
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 642
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 727
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 728
    add-float/2addr p1, v1

    goto :goto_0

    .line 730
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 731
    sub-float/2addr p1, v1

    goto :goto_1

    .line 733
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 734
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 735
    return-void
.end method

.method public setBearingAccuracyDegrees(F)V
    .locals 1
    .param p1, "bearingAccuracyDegrees"    # F

    .prologue
    .line 941
    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 942
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 943
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 580
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 581
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 1146
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1147
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 1024
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 1025
    return-void

    .line 1024
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIsFromMockProvider(Z)V
    .locals 1
    .param p1, "isFromMockProvider"    # Z

    .prologue
    .line 1166
    if-eqz p1, :cond_0

    .line 1167
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 1171
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 597
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 598
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 614
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 615
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 521
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 680
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 681
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 682
    return-void
.end method

.method public setSpeedAccuracyMetersPerSecond(F)V
    .locals 1
    .param p1, "speedAccuracyMeterPerSecond"    # F

    .prologue
    .line 893
    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 894
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 895
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 552
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 553
    return-void
.end method

.method public setVerticalAccuracyMeters(F)V
    .locals 1
    .param p1, "verticalAccuracyMeters"    # F

    .prologue
    .line 845
    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 846
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 847
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string/jumbo v1, " %.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, " hAcc=%.0f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    :goto_0
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 1036
    const-string/jumbo v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :cond_0
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_7

    .line 1039
    const-string/jumbo v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1045
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1046
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1047
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, " vAcc=%.0f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :goto_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, " sAcc=%.0f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :goto_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, " bAcc=%.0f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :goto_4
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_4
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 1056
    const-string/jumbo v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    :cond_5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1034
    :cond_6
    const-string/jumbo v1, " hAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1041
    :cond_7
    const-string/jumbo v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 1048
    :cond_8
    const-string/jumbo v1, " vAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1050
    :cond_9
    const-string/jumbo v1, " sAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1052
    :cond_a
    const-string/jumbo v1, " bAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1102
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1103
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1104
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1105
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1106
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1107
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1108
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1109
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1110
    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1111
    iget v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1112
    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1113
    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1114
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1115
    return-void
.end method
