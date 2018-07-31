.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNative$10;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$11;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$12;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$13;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$14;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$15;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$16;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$17;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$18;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$19;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$1;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$2;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$3;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$4;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$5;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$6;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$7;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$8;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$9;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    }
.end annotation


# static fields
.field private static final CELLID_PROCESS:Ljava/lang/String; = "CELLID"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FACE_LANDMARK_SIZE:I = 0x6

.field private static final GPS_PROCESS:Ljava/lang/String; = "GPS"

.field public static final NATIVE_JPEG_FORMAT:I = 0x21

.field public static final NUM_TYPES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final TYPE_BYTE:I = 0x0

.field public static final TYPE_DOUBLE:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INT32:I = 0x1

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_RATIONAL:I = 0x5

.field private static final sGetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<*>;",
            "Landroid/hardware/camera2/impl/GetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<*>;",
            "Landroid/hardware/camera2/impl/SetCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMetadataPtr:J


# direct methods
.method static synthetic -wrap0(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaceRectangles()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Face;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "tc"    # Landroid/hardware/camera2/params/TonemapCurve;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/hardware/camera2/impl/CameraMetadataNative;)[I
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "key"    # Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "key"    # Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/LensShadingMap;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/TonemapCurve;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/location/Location;
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/hardware/camera2/impl/CameraMetadataNative;[I)Z
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "value"    # [I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "faceRects"    # [Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaceRectangles([Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/Face;)Z
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaces([Landroid/hardware/camera2/params/Face;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/location/Location;)Z
    .locals 1
    .param p0, "-this"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setGpsLocation(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    .line 323
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 510
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 511
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$2;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$2;-><init>()V

    .line 510
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 519
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$3;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$3;-><init>()V

    .line 518
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 527
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$4;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$4;-><init>()V

    .line 526
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 535
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    .line 536
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$5;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$5;-><init>()V

    .line 534
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 544
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$6;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$6;-><init>()V

    .line 543
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 552
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$7;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$7;-><init>()V

    .line 551
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 560
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$8;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$8;-><init>()V

    .line 559
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 568
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$9;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$9;-><init>()V

    .line 567
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 576
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$10;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$10;-><init>()V

    .line 575
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 584
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    .line 585
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$11;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$11;-><init>()V

    .line 583
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 593
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$12;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$12;-><init>()V

    .line 592
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 601
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$13;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$13;-><init>()V

    .line 600
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 609
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    .line 610
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$14;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$14;-><init>()V

    .line 608
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1000
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    .line 1003
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    .line 1004
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$15;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$15;-><init>()V

    .line 1003
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    .line 1011
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$16;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$16;-><init>()V

    .line 1010
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    .line 1018
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$17;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$17;-><init>()V

    .line 1017
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$18;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$18;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$19;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$19;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerAllMarshalers()V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 293
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 4
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 304
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    return-void
.end method

.method private static varargs areValuesAllNull([Ljava/lang/Object;)Z
    .locals 4
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1337
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 1338
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    return v2

    .line 1337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private close()V
    .locals 2

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose()V

    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 478
    return-void
.end method

.method private getAvailableFormats()[I
    .locals 4

    .prologue
    .line 620
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 621
    .local v0, "availableFormats":[I
    if-eqz v0, :cond_1

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 624
    aget v2, v0, v1

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    .line 625
    const/16 v2, 0x100

    aput v2, v0, v1

    .line 622
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v6, 0x0

    .line 493
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(Ljava/lang/String;)I

    move-result v3

    .line 494
    .local v3, "tag":I
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v4

    .line 495
    .local v4, "values":[B
    if-nez v4, :cond_0

    .line 496
    return-object v6

    .line 499
    :cond_0
    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(I)I

    move-result v2

    .line 500
    .local v2, "nativeType":I
    invoke-static {p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v1

    .line 501
    .local v1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 502
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private getFaceRectangles()[Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 788
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 789
    .local v0, "faceRectangles":[Landroid/graphics/Rect;
    if-nez v0, :cond_0

    return-object v4

    .line 791
    :cond_0
    array-length v3, v0

    new-array v1, v3, [Landroid/graphics/Rect;

    .line 792
    .local v1, "fixedFaceRectangles":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 793
    new-instance v3, Landroid/graphics/Rect;

    .line 794
    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 795
    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 796
    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    .line 797
    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 793
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 799
    :cond_1
    return-object v1
.end method

.method private getFaces()[Landroid/hardware/camera2/params/Face;
    .locals 19

    .prologue
    .line 698
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 699
    .local v8, "faceDetectMode":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 700
    .local v13, "faceScores":[B
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/graphics/Rect;

    .line 701
    .local v12, "faceRectangles":[Landroid/graphics/Rect;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 702
    .local v9, "faceIds":[I
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 704
    .local v10, "faceLandmarks":[I
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    const/4 v3, 0x3

    aput-object v9, v2, v3

    const/4 v3, 0x4

    aput-object v10, v2, v3

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    const/4 v2, 0x0

    return-object v2

    .line 708
    :cond_0
    if-nez v8, :cond_3

    .line 709
    const-string/jumbo v2, "CameraMetadataJV"

    const-string/jumbo v3, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 723
    :cond_1
    if-eqz v13, :cond_2

    if-nez v12, :cond_5

    .line 724
    :cond_2
    const-string/jumbo v2, "CameraMetadataJV"

    const-string/jumbo v3, "Expect face scores and rectangles to be non-null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    return-object v2

    .line 712
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    .line 713
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    return-object v2

    .line 715
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 716
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 717
    const-string/jumbo v2, "CameraMetadataJV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown face detect mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    return-object v2

    .line 726
    :cond_5
    array-length v2, v13

    array-length v3, v12

    if-eq v2, v3, :cond_6

    .line 727
    const-string/jumbo v2, "CameraMetadataJV"

    const-string/jumbo v3, "Face score size(%d) doesn match face rectangle size(%d)!"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 728
    array-length v0, v13

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v4, v18

    array-length v0, v12

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v4, v18

    .line 727
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_6
    array-length v2, v13

    array-length v3, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 734
    .local v16, "numFaces":I
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 735
    if-eqz v9, :cond_7

    if-nez v10, :cond_a

    .line 736
    :cond_7
    const-string/jumbo v2, "CameraMetadataJV"

    const-string/jumbo v3, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 752
    :cond_8
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v11, "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 754
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 755
    aget-byte v2, v13, v15

    const/16 v3, 0x64

    if-gt v2, v3, :cond_9

    .line 756
    aget-byte v2, v13, v15

    const/4 v3, 0x1

    if-lt v2, v3, :cond_9

    .line 757
    new-instance v2, Landroid/hardware/camera2/params/Face;

    aget-object v3, v12, v15

    aget-byte v4, v13, v15

    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 740
    .end local v11    # "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    .end local v15    # "i":I
    :cond_a
    array-length v2, v9

    move/from16 v0, v16

    if-ne v2, v0, :cond_b

    .line 741
    array-length v2, v10

    mul-int/lit8 v3, v16, 0x6

    if-eq v2, v3, :cond_c

    .line 742
    :cond_b
    const-string/jumbo v2, "CameraMetadataJV"

    const-string/jumbo v3, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 744
    array-length v0, v9

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v4, v18

    array-length v0, v10

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v4, v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v4, v18

    .line 742
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_c
    array-length v2, v9

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 748
    array-length v2, v10

    div-int/lit8 v2, v2, 0x6

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    goto :goto_0

    .line 762
    .restart local v11    # "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    :cond_d
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 763
    aget-byte v2, v13, v15

    const/16 v3, 0x64

    if-gt v2, v3, :cond_e

    .line 764
    aget-byte v2, v13, v15

    const/4 v3, 0x1

    if-lt v2, v3, :cond_e

    .line 765
    aget v2, v9, v15

    if-ltz v2, :cond_e

    .line 766
    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v2, v15, 0x6

    aget v2, v10, v2

    .line 767
    mul-int/lit8 v3, v15, 0x6

    add-int/lit8 v3, v3, 0x1

    aget v3, v10, v3

    .line 766
    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 768
    .local v5, "leftEye":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    mul-int/lit8 v2, v15, 0x6

    add-int/lit8 v2, v2, 0x2

    aget v2, v10, v2

    .line 769
    mul-int/lit8 v3, v15, 0x6

    add-int/lit8 v3, v3, 0x3

    aget v3, v10, v3

    .line 768
    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 770
    .local v6, "rightEye":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    mul-int/lit8 v2, v15, 0x6

    add-int/lit8 v2, v2, 0x4

    aget v2, v10, v2

    .line 771
    mul-int/lit8 v3, v15, 0x6

    add-int/lit8 v3, v3, 0x5

    aget v3, v10, v3

    .line 770
    invoke-direct {v7, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 772
    .local v7, "mouth":Landroid/graphics/Point;
    new-instance v1, Landroid/hardware/camera2/params/Face;

    aget-object v2, v12, v15

    aget-byte v3, v13, v15

    aget v4, v9, v15

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 774
    .local v1, "face":Landroid/hardware/camera2/params/Face;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v1    # "face":Landroid/hardware/camera2/params/Face;
    .end local v5    # "leftEye":Landroid/graphics/Point;
    .end local v6    # "rightEye":Landroid/graphics/Point;
    .end local v7    # "mouth":Landroid/graphics/Point;
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 778
    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v14, v2, [Landroid/hardware/camera2/params/Face;

    .line 779
    .local v14, "faces":[Landroid/hardware/camera2/params/Face;
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 780
    return-object v14
.end method

.method private getGpsLocation()Landroid/location/Location;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 821
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 822
    .local v2, "processingMethod":Ljava/lang/String;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 823
    .local v0, "coords":[D
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 825
    .local v3, "timeStamp":Ljava/lang/Long;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v8

    aput-object v0, v4, v9

    aput-object v3, v4, v10

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 826
    return-object v5

    .line 829
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 830
    .local v1, "l":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 832
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 837
    :goto_0
    if-eqz v0, :cond_2

    .line 838
    aget-wide v4, v0, v8

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 839
    aget-wide v4, v0, v9

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 840
    aget-wide v4, v0, v10

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    .line 845
    :goto_1
    return-object v1

    .line 834
    :cond_1
    const-string/jumbo v4, "CameraMetadataJV"

    const-string/jumbo v5, "getGpsLocation - No timestamp for GPS location."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :cond_2
    const-string/jumbo v4, "CameraMetadataJV"

    const-string/jumbo v5, "getGpsLocation - No coordinates for GPS location"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 803
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 804
    .local v0, "lsmArray":[F
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 807
    .local v2, "s":Landroid/util/Size;
    if-nez v0, :cond_0

    .line 808
    return-object v5

    .line 811
    :cond_0
    if-nez v2, :cond_1

    .line 812
    const-string/jumbo v3, "CameraMetadataJV"

    const-string/jumbo v4, "getLensShadingMap - Lens shading map size was null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-object v5

    .line 816
    :cond_1
    new-instance v1, Landroid/hardware/camera2/params/LensShadingMap;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-direct {v1, v0, v3, v4}, Landroid/hardware/camera2/params/LensShadingMap;-><init>([FII)V

    .line 817
    .local v1, "map":Landroid/hardware/camera2/params/LensShadingMap;
    return-object v1
.end method

.method private static getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p1, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1283
    .local p0, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTypeReference()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v0

    return-object v0
.end method

.method private getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v5, 0x0

    .line 926
    const/4 v2, 0x0

    .line 927
    .local v2, "RAW":I
    const/4 v0, 0x1

    .line 928
    .local v0, "PROC":I
    const/4 v1, 0x2

    .line 931
    .local v1, "PROC_STALLING":I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 933
    .local v3, "maxNumOutputs":[I
    if-nez v3, :cond_0

    .line 934
    return-object v5

    .line 937
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 938
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 939
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 940
    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 941
    :cond_2
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 942
    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 944
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v5, 0x0

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "AE":I
    const/4 v2, 0x1

    .line 905
    .local v2, "AWB":I
    const/4 v1, 0x2

    .line 908
    .local v1, "AF":I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 910
    .local v3, "maxRegions":[I
    if-nez v3, :cond_0

    .line 911
    return-object v5

    .line 914
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 915
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 916
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 917
    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 918
    :cond_2
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 919
    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 921
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getNativeType(IJ)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "vendorId"    # J

    .prologue
    .line 1209
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(IJ)I

    move-result v0

    return v0
.end method

.method private getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 14

    .prologue
    .line 872
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 871
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 874
    .local v1, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 873
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 876
    .local v2, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 875
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 878
    .local v3, "stallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 877
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 880
    .local v4, "depthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 879
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 882
    .local v5, "depthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 881
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 884
    .local v6, "depthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 883
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 886
    .local v7, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 885
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 887
    .local v8, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 888
    .local v10, "capabilities":[I
    const/4 v9, 0x0

    .line 889
    .local v9, "listHighResolution":Z
    const/4 v0, 0x0

    array-length v12, v10

    :goto_0
    if-ge v0, v12, :cond_0

    aget v11, v10, v0

    .line 890
    .local v11, "capability":I
    const/4 v13, 0x6

    if-ne v11, v13, :cond_1

    .line 891
    const/4 v9, 0x1

    .line 895
    .end local v11    # "capability":I
    :cond_0
    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    return-object v0

    .line 889
    .restart local v11    # "capability":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getTag(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1184
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static getTag(Ljava/lang/String;J)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "vendorId"    # J

    .prologue
    .line 1196
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/hardware/camera2/params/TonemapCurve;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 949
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 950
    .local v2, "red":[F
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 951
    .local v1, "green":[F
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 953
    .local v0, "blue":[F
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    return-object v6

    .line 957
    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 958
    :cond_1
    const-string/jumbo v4, "CameraMetadataJV"

    const-string/jumbo v5, "getTonemapCurve - missing tone curve components"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-object v6

    .line 957
    :cond_2
    if-eqz v0, :cond_1

    .line 961
    new-instance v3, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v3, v2, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    .line 962
    .local v3, "tc":Landroid/hardware/camera2/params/TonemapCurve;
    return-object v3
.end method

.method public static move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p0, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    .line 318
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 319
    .local v0, "newObject":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 320
    return-object v0
.end method

.method private native nativeAllocate()J
.end method

.method private native nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeDump()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
.end method

.method private synchronized native declared-synchronized nativeGetEntryCount()I
.end method

.method private static native nativeGetTagFromKey(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeGetTagFromKeyLocal(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native nativeGetTypeFromTag(IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeGetTypeFromTagLocal(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeIsEmpty()Z
.end method

.method private synchronized native declared-synchronized nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native declared-synchronized nativeReadValues(I)[B
.end method

.method private static native nativeSetupGlobalVendorTagDescriptor()I
.end method

.method private synchronized native declared-synchronized nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native declared-synchronized nativeWriteValues(I[B)V
.end method

.method private static registerAllMarshalers()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1293
    const/16 v3, 0x14

    new-array v1, v3, [Landroid/hardware/camera2/marshal/MarshalQueryable;

    .line 1295
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;-><init>()V

    aput-object v3, v1, v2

    .line 1296
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 1297
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;-><init>()V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 1300
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;-><init>()V

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 1301
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;-><init>()V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 1304
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;-><init>()V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 1305
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;-><init>()V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 1306
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;-><init>()V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 1307
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;-><init>()V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 1308
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;-><init>()V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 1309
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;-><init>()V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 1310
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;-><init>()V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 1311
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;-><init>()V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 1312
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;-><init>()V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 1313
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;-><init>()V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 1314
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;-><init>()V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 1315
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;-><init>()V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 1316
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;-><init>()V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 1317
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;-><init>()V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 1320
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;-><init>()V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 1323
    .local v1, "queryList":[Landroid/hardware/camera2/marshal/MarshalQueryable;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1324
    .local v0, "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    .line 1323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1329
    .end local v0    # "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    :cond_0
    return-void
.end method

.method private setAvailableFormats([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    .line 1039
    move-object v0, p1

    .line 1040
    .local v0, "availableFormat":[I
    if-nez p1, :cond_0

    .line 1042
    const/4 v3, 0x0

    return v3

    .line 1045
    :cond_0
    array-length v3, p1

    new-array v2, v3, [I

    .line 1046
    .local v2, "newValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1047
    aget v3, p1, v1

    aput v3, v2, v1

    .line 1048
    aget v3, p1, v1

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1

    .line 1049
    const/16 v3, 0x21

    aput v3, v2, v1

    .line 1046
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1054
    const/4 v3, 0x1

    return v3
.end method

.method private setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 967
    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 975
    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 971
    return-void
.end method

.method private setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 978
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(Ljava/lang/String;)I

    move-result v4

    .line 979
    .local v4, "tag":I
    if-nez p2, :cond_0

    .line 981
    invoke-virtual {p0, v4, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    .line 982
    return-void

    .line 985
    :cond_0
    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(I)I

    move-result v2

    .line 986
    .local v2, "nativeType":I
    invoke-static {p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v1

    .line 987
    .local v1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-virtual {v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v3

    .line 990
    .local v3, "size":I
    new-array v5, v3, [B

    .line 992
    .local v5, "values":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 993
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p2, v0}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 995
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    .line 996
    return-void
.end method

.method private setFaceRectangles([Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "faceRects"    # [Landroid/graphics/Rect;

    .prologue
    .line 1070
    if-nez p1, :cond_0

    .line 1071
    const/4 v2, 0x0

    return v2

    .line 1074
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Landroid/graphics/Rect;

    .line 1075
    .local v1, "newFaceRects":[Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1076
    new-instance v2, Landroid/graphics/Rect;

    .line 1077
    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 1078
    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1079
    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    .line 1080
    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    .line 1076
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 1075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1084
    const/4 v2, 0x1

    return v2
.end method

.method private setFaces([Landroid/hardware/camera2/params/Face;)Z
    .locals 14
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    const/4 v9, 0x0

    .line 634
    if-nez p1, :cond_0

    .line 635
    return v9

    .line 638
    :cond_0
    array-length v8, p1

    .line 641
    .local v8, "numFaces":I
    const/4 v5, 0x1

    .line 642
    .local v5, "fullMode":Z
    array-length v11, p1

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v0, p1, v10

    .line 643
    .local v0, "face":Landroid/hardware/camera2/params/Face;
    if-nez v0, :cond_2

    .line 644
    add-int/lit8 v8, v8, -0x1

    .line 645
    const-string/jumbo v12, "CameraMetadataJV"

    const-string/jumbo v13, "setFaces - null face detected, skipping"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 650
    const/4 v5, 0x0

    goto :goto_1

    .line 654
    .end local v0    # "face":Landroid/hardware/camera2/params/Face;
    :cond_3
    new-array v3, v8, [Landroid/graphics/Rect;

    .line 655
    .local v3, "faceRectangles":[Landroid/graphics/Rect;
    new-array v4, v8, [B

    .line 656
    .local v4, "faceScores":[B
    const/4 v1, 0x0

    .line 657
    .local v1, "faceIds":[I
    const/4 v2, 0x0

    .line 659
    .local v2, "faceLandmarks":[I
    if-eqz v5, :cond_4

    .line 660
    new-array v1, v8, [I

    .line 661
    .local v1, "faceIds":[I
    mul-int/lit8 v10, v8, 0x6

    new-array v2, v10, [I

    .line 664
    .end local v1    # "faceIds":[I
    .end local v2    # "faceLandmarks":[I
    :cond_4
    const/4 v6, 0x0

    .line 665
    .local v6, "i":I
    array-length v10, p1

    :goto_2
    if-ge v9, v10, :cond_7

    aget-object v0, p1, v9

    .line 666
    .restart local v0    # "face":Landroid/hardware/camera2/params/Face;
    if-nez v0, :cond_5

    .line 665
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 670
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    aput-object v11, v3, v6

    .line 671
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v4, v6

    .line 673
    if-eqz v5, :cond_6

    .line 674
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v11

    aput v11, v1, v6

    .line 676
    const/4 v7, 0x0

    .line 678
    .local v7, "j":I
    mul-int/lit8 v11, v6, 0x6

    const/4 v7, 0x1

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v2, v11

    .line 679
    mul-int/lit8 v11, v6, 0x6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v2, v11

    .line 680
    mul-int/lit8 v11, v6, 0x6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v2, v11

    .line 681
    mul-int/lit8 v11, v6, 0x6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v2, v11

    .line 682
    mul-int/lit8 v11, v6, 0x6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v2, v11

    .line 683
    mul-int/lit8 v11, v6, 0x6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x5

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v2, v11

    .line 686
    .end local v7    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 689
    .end local v0    # "face":Landroid/hardware/camera2/params/Face;
    :cond_7
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v9, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 690
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v9, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 691
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v9, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 692
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v9, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 694
    const/4 v9, 0x1

    return v9
.end method

.method private setGpsLocation(Landroid/location/Location;)Z
    .locals 9
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 849
    if-nez p1, :cond_0

    .line 850
    return v6

    .line 853
    :cond_0
    const/4 v4, 0x3

    new-array v0, v4, [D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v0, v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v0, v8

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    const/4 v6, 0x2

    aput-wide v4, v0, v6

    .line 854
    .local v0, "coords":[D
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "processMethod":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 858
    .local v2, "timestamp":J
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 859
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v4, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 861
    if-nez v1, :cond_1

    .line 862
    const-string/jumbo v4, "CameraMetadataJV"

    const-string/jumbo v5, "setGpsLocation - No process method, Location is not from a GPS or NETWORKprovider"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_0
    return v8

    .line 865
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v4, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 7
    .param p1, "tc"    # Landroid/hardware/camera2/params/TonemapCurve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1088
    if-nez p1, :cond_0

    .line 1089
    return v4

    .line 1092
    :cond_0
    const/4 v3, 0x3

    new-array v0, v3, [[F

    .line 1093
    .local v0, "curve":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v6, :cond_1

    .line 1094
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v2

    .line 1095
    .local v2, "pointCount":I
    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [F

    aput-object v3, v0, v1

    .line 1096
    aget-object v3, v0, v1

    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/camera2/params/TonemapCurve;->copyColorCurve(I[FI)V

    .line 1093
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1098
    .end local v2    # "pointCount":I
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v4, v0, v4

    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1099
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v4, v0, v5

    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1100
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v4, v0, v6

    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1102
    return v5
.end method

.method public static setupGlobalVendorTagDescriptor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v0

    .line 399
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 400
    new-instance v1, Landroid/os/ServiceSpecificException;

    const-string/jumbo v2, "Failure to set up global vendor tags"

    invoke-direct {v1, v0, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 402
    :cond_0
    return-void
.end method

.method private static translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p0, :cond_0

    .line 264
    return-object v1

    .line 266
    :cond_0
    const-string/jumbo v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string/jumbo v0, "GPS"

    return-object v0

    .line 266
    :cond_1
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const-string/jumbo v0, "CELLID"

    return-object v0

    .line 272
    :cond_2
    return-object v1
.end method

.method private static translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "process"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 277
    if-nez p0, :cond_0

    .line 278
    return-object v1

    .line 280
    :cond_0
    const-string/jumbo v0, "GPS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    const-string/jumbo v0, "gps"

    return-object v0

    .line 280
    :cond_1
    const-string/jumbo v0, "CELLID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const-string/jumbo v0, "network"

    return-object v0

    .line 286
    :cond_2
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public dumpToLog()V
    .locals 3

    .prologue
    .line 1253
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeDump()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    return-void

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "CameraMetadataJV"

    const-string/jumbo v2, "Dump logging failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1262
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1266
    return-void

    .line 1263
    :catchall_0
    move-exception v0

    .line 1264
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1263
    throw v0
.end method

.method public get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const-string/jumbo v1, "key must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/GetCommand;

    .line 380
    .local v0, "g":Landroid/hardware/camera2/impl/GetCommand;
    if-eqz v0, :cond_0

    .line 381
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/impl/GetCommand;->getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 383
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    if-nez p1, :cond_0

    .line 1170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1172
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 1150
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount()I

    move-result v0

    return v0
.end method

.method public getNativeCameraMetadata()J
    .locals 2

    .prologue
    .line 1272
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1159
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;)V

    .line 388
    return-void
.end method

.method public readValues(I)[B
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(I)[B

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method public set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/SetCommand;

    .line 424
    .local v0, "s":Landroid/hardware/camera2/impl/SetCommand;
    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/SetCommand;->setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V

    .line 426
    return-void

    .line 429
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method public swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1144
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 345
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;)V

    .line 346
    return-void
.end method

.method public writeValues(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "src"    # [B

    .prologue
    .line 1224
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[B)V

    .line 1225
    return-void
.end method
