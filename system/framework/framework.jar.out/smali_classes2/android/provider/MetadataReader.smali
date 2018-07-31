.class public final Landroid/provider/MetadataReader;
.super Ljava/lang/Object;
.source "MetadataReader.java"


# static fields
.field private static final ALL_KNOWN_EXIF_KEYS:[Ljava/lang/String;

.field private static final DEFAULT_EXIF_TAGS:[Ljava/lang/String;

.field private static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final JPG_MIME_TYPE:Ljava/lang/String; = "image/jpg"

.field private static final TYPE_DOUBLE:I = 0x1

.field private static final TYPE_INT:I = 0x0

.field private static final TYPE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_STRING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "ImageWidth"

    aput-object v1, v0, v3

    .line 44
    const-string/jumbo v1, "ImageLength"

    aput-object v1, v0, v5

    .line 45
    const-string/jumbo v1, "DateTime"

    aput-object v1, v0, v4

    .line 46
    const-string/jumbo v1, "GPSLatitude"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "GPSLongitude"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "Make"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "Model"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "FNumber"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "ShutterSpeedValue"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 42
    sput-object v0, Landroid/provider/MetadataReader;->DEFAULT_EXIF_TAGS:[Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    .line 65
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Artist"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "BitsPerSample"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Compression"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Copyright"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "DateTime"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ImageDescription"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ImageLength"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ImageWidth"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Make"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Model"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "PhotometricInterpretation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "PlanarConfiguration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "PrimaryChromaticities"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ReferenceBlackWhite"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ResolutionUnit"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "RowsPerStrip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SamplesPerPixel"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Software"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "StripByteCounts"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "StripOffsets"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "TransferFunction"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "WhitePoint"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "XResolution"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "YCbCrCoefficients"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "YCbCrPositioning"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "YCbCrSubSampling"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "YResolution"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ApertureValue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "BrightnessValue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "CFAPattern"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ColorSpace"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ComponentsConfiguration"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "CompressedBitsPerPixel"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Contrast"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "CustomRendered"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "DateTimeDigitized"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "DateTimeOriginal"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "DeviceSettingDescription"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "DigitalZoomRatio"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ExifVersion"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ExposureBiasValue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ExposureIndex"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ExposureMode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ExposureProgram"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ExposureTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FNumber"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FileSource"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Flash"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FlashEnergy"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FlashpixVersion"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FocalLength"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FocalLengthIn35mmFilm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FocalPlaneResolutionUnit"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FocalPlaneXResolution"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "FocalPlaneYResolution"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GainControl"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ISOSpeedRatings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ImageUniqueID"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "LightSource"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "MakerNote"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "MaxApertureValue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "MeteringMode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "NewSubfileType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "OECF"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "PixelXDimension"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "PixelYDimension"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "RelatedSoundFile"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Saturation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SceneCaptureType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SceneType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SensingMethod"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "Sharpness"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ShutterSpeedValue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SpatialFrequencyResponse"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SpectralSensitivity"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubfileType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubSecTime"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubSecTimeDigitized"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubSecTimeOriginal"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubjectArea"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubjectDistance"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubjectDistanceRange"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SubjectLocation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "UserComment"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "WhiteBalance"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSAltitude"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSAltitudeRef"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSAreaInformation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDOP"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDateStamp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestBearing"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestBearingRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestDistance"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestDistanceRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestLatitude"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestLatitudeRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestLongitude"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDestLongitudeRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSDifferential"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSImgDirection"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSImgDirectionRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSLatitude"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSLatitudeRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSLongitude"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSLongitudeRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSMapDatum"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSMeasureMode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSProcessingMethod"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSSatellites"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSSpeed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSSpeedRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSStatus"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSTimeStamp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSTrack"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSTrackRef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "GPSVersionID"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "InteroperabilityIndex"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ThumbnailImageLength"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ThumbnailImageWidth"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "DNGVersion"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "DefaultCropSize"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "PreviewImageStart"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "PreviewImageLength"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "AspectFrame"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SensorBottomBorder"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SensorLeftBorder"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SensorRightBorder"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "SensorTopBorder"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string/jumbo v1, "ISO"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/provider/MetadataReader;->ALL_KNOWN_EXIF_KEYS:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static getExifData(Landroid/media/ExifInterface;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p0, "exifInterface"    # Landroid/media/ExifInterface;
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, -0x80000000

    const-wide/16 v8, 0x1

    .line 261
    if-nez p1, :cond_0

    .line 262
    sget-object p1, Landroid/provider/MetadataReader;->DEFAULT_EXIF_TAGS:[Ljava/lang/String;

    .line 264
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v4, "exif":Landroid/os/Bundle;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_4

    .line 266
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    aget-object v7, p1, v5

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 267
    aget-object v6, p1, v5

    invoke-virtual {p0, v6, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 268
    .local v2, "data":I
    if-eq v2, v10, :cond_1

    .line 269
    aget-object v6, p1, v5

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    .end local v2    # "data":I
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 271
    :cond_2
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    aget-object v7, p1, v5

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 272
    aget-object v6, p1, v5

    invoke-virtual {p0, v6, v8, v9}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 273
    .local v0, "data":D
    cmpl-double v6, v0, v8

    if-eqz v6, :cond_1

    .line 274
    aget-object v6, p1, v5

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 276
    .end local v0    # "data":D
    :cond_3
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    aget-object v7, p1, v5

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    aget-object v6, p1, v5

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "data":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 279
    aget-object v6, p1, v5

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v3    # "data":Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method public static getMetadata(Landroid/os/Bundle;Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "metadataTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "image/jpg"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    :cond_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 230
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    invoke-static {v1, p3}, Landroid/provider/MetadataReader;->getExifData(Landroid/media/ExifInterface;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, "exifData":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 232
    const-string/jumbo v3, "android:documentExif"

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 233
    const-string/jumbo v3, "android:documentExif"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v0    # "exifData":Landroid/os/Bundle;
    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    :cond_1
    const-string/jumbo v4, "android:documentMetadataType"

    .line 237
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 236
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    return-void
.end method
