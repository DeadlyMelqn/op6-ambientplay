.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final BITS_PER_SAMPLE_RGB:[I

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DATA_DEFLATE_ZIP:I = 0x8

.field private static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final DATA_JPEG:I = 0x6

.field private static final DATA_JPEG_COMPRESSED:I = 0x7

.field private static final DATA_LOSSY_JPEG:I = 0x884c

.field private static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field private static final IFD_TYPE_PREVIEW:I = 0x5

.field private static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIF:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final RW2_SIGNATURE:S = 0x55s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final START_CODE:B = 0x2at

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifPointerTagMap:Ljava/util/HashMap;

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private final mIsInputStream:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static synthetic -get0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 77
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    .line 441
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 447
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 448
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 449
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 457
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 459
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 504
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 505
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "BYTE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "STRING"

    aput-object v1, v0, v10

    const-string/jumbo v1, "USHORT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ULONG"

    aput-object v1, v0, v4

    const-string/jumbo v1, "URATIONAL"

    aput-object v1, v0, v11

    const-string/jumbo v1, "SBYTE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "UNDEFINED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SSHORT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 506
    const-string/jumbo v1, "SLONG"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SRATIONAL"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SINGLE"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "DOUBLE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 504
    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 509
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 512
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 535
    const/16 v0, 0x8

    const/16 v1, 0x8

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 536
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v4, v0, v1

    sput-object v0, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 537
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 961
    const/16 v0, 0x29

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 963
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "NewSubfileType"

    const/16 v2, 0xfe

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 964
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubfileType"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 965
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 966
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 967
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 968
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 969
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 970
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 971
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 972
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 973
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 974
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 975
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 976
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 977
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 978
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 979
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 980
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 981
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 982
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 983
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 984
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 985
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 986
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 987
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 989
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubIFDPointer"

    const/16 v2, 0x14a

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 990
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 991
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 992
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 993
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 994
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 995
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 996
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    .line 997
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    .line 998
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    .line 1001
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorTopBorder"

    invoke-direct {v0, v1, v4, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    .line 1002
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorLeftBorder"

    invoke-direct {v0, v1, v11, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    .line 1003
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorBottomBorder"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x25

    aput-object v0, v8, v1

    .line 1004
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorRightBorder"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x26

    aput-object v0, v8, v1

    .line 1005
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ISO"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x27

    aput-object v0, v8, v1

    .line 1006
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JpgFromRaw"

    const/16 v2, 0x2e

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x28

    aput-object v0, v8, v1

    .line 961
    sput-object v8, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1010
    const/16 v0, 0x3b

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 1011
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureTime"

    const v2, 0x829a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 1012
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FNumber"

    const v2, 0x829d

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 1013
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureProgram"

    const v2, 0x8822

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 1014
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpectralSensitivity"

    const v2, 0x8824

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 1015
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ISOSpeedRatings"

    const v2, 0x8827

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 1016
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "OECF"

    const v2, 0x8828

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 1017
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifVersion"

    const v2, 0x9000

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 1018
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeOriginal"

    const v2, 0x9003

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 1019
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeDigitized"

    const v2, 0x9004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 1020
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ComponentsConfiguration"

    const v2, 0x9101

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 1021
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CompressedBitsPerPixel"

    const v2, 0x9102

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 1022
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ShutterSpeedValue"

    const v2, 0x9201

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 1023
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ApertureValue"

    const v2, 0x9202

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 1024
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BrightnessValue"

    const v2, 0x9203

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 1025
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureBiasValue"

    const v2, 0x9204

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 1026
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MaxApertureValue"

    const v2, 0x9205

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 1027
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistance"

    const v2, 0x9206

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 1028
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MeteringMode"

    const v2, 0x9207

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 1029
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "LightSource"

    const v2, 0x9208

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 1030
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Flash"

    const v2, 0x9209

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 1031
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLength"

    const v2, 0x920a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 1032
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectArea"

    const v2, 0x9214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 1033
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MakerNote"

    const v2, 0x927c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 1034
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "UserComment"

    const v2, 0x9286

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 1035
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTime"

    const v2, 0x9290

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 1036
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeOriginal"

    const v2, 0x9291

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 1037
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeDigitized"

    const v2, 0x9292

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 1038
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashpixVersion"

    const v2, 0xa000

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 1039
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ColorSpace"

    const v2, 0xa001

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 1040
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelXDimension"

    const v2, 0xa002

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 1041
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelYDimension"

    const v2, 0xa003

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 1042
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RelatedSoundFile"

    const v2, 0xa004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 1043
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "InteroperabilityIFDPointer"

    const v2, 0xa005

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    .line 1044
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashEnergy"

    const v2, 0xa20b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    .line 1045
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpatialFrequencyResponse"

    const v2, 0xa20c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    .line 1046
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneXResolution"

    const v2, 0xa20e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    .line 1047
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneYResolution"

    const v2, 0xa20f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    .line 1048
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneResolutionUnit"

    const v2, 0xa210

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x25

    aput-object v0, v8, v1

    .line 1049
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectLocation"

    const v2, 0xa214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x26

    aput-object v0, v8, v1

    .line 1050
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureIndex"

    const v2, 0xa215

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x27

    aput-object v0, v8, v1

    .line 1051
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensingMethod"

    const v2, 0xa217

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x28

    aput-object v0, v8, v1

    .line 1052
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FileSource"

    const v2, 0xa300

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x29

    aput-object v0, v8, v1

    .line 1053
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneType"

    const v2, 0xa301

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2a

    aput-object v0, v8, v1

    .line 1054
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CFAPattern"

    const v2, 0xa302

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2b

    aput-object v0, v8, v1

    .line 1055
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CustomRendered"

    const v2, 0xa401

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2c

    aput-object v0, v8, v1

    .line 1056
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureMode"

    const v2, 0xa402

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2d

    aput-object v0, v8, v1

    .line 1057
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhiteBalance"

    const v2, 0xa403

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2e

    aput-object v0, v8, v1

    .line 1058
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DigitalZoomRatio"

    const v2, 0xa404

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2f

    aput-object v0, v8, v1

    .line 1059
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLengthIn35mmFilm"

    const v2, 0xa405

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x30

    aput-object v0, v8, v1

    .line 1060
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneCaptureType"

    const v2, 0xa406

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x31

    aput-object v0, v8, v1

    .line 1061
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GainControl"

    const v2, 0xa407

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x32

    aput-object v0, v8, v1

    .line 1062
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Contrast"

    const v2, 0xa408

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x33

    aput-object v0, v8, v1

    .line 1063
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Saturation"

    const v2, 0xa409

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x34

    aput-object v0, v8, v1

    .line 1064
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Sharpness"

    const v2, 0xa40a

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x35

    aput-object v0, v8, v1

    .line 1065
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DeviceSettingDescription"

    const v2, 0xa40b

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x36

    aput-object v0, v8, v1

    .line 1066
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistanceRange"

    const v2, 0xa40c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x37

    aput-object v0, v8, v1

    .line 1067
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageUniqueID"

    const v2, 0xa420

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x38

    aput-object v0, v8, v1

    .line 1068
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DNGVersion"

    const v2, 0xc612

    const/4 v9, 0x1

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x39

    aput-object v0, v8, v1

    .line 1069
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DefaultCropSize"

    const v2, 0xc620

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x3a

    aput-object v0, v8, v1

    .line 1010
    sput-object v8, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1073
    const/16 v0, 0x1f

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 1074
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSVersionID"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1075
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1076
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitude"

    invoke-direct {v1, v2, v10, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    .line 1077
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v3

    .line 1078
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitude"

    invoke-direct {v1, v2, v4, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v4

    .line 1079
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v11, v8, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v11

    .line 1080
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitude"

    const/4 v8, 0x6

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1081
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTimeStamp"

    const/4 v8, 0x7

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1082
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSatellites"

    const/16 v8, 0x8

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1083
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSStatus"

    const/16 v8, 0x9

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1084
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMeasureMode"

    const/16 v8, 0xa

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1085
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDOP"

    const/16 v8, 0xb

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1086
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeedRef"

    const/16 v8, 0xc

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1087
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeed"

    const/16 v8, 0xd

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1088
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrackRef"

    const/16 v8, 0xe

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1089
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrack"

    const/16 v8, 0xf

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1090
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirectionRef"

    const/16 v8, 0x10

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1091
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirection"

    const/16 v8, 0x11

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1092
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMapDatum"

    const/16 v8, 0x12

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1093
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitudeRef"

    const/16 v8, 0x13

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1094
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitude"

    const/16 v8, 0x14

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1095
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitudeRef"

    const/16 v8, 0x15

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1096
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitude"

    const/16 v8, 0x16

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1097
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearingRef"

    const/16 v8, 0x17

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1098
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearing"

    const/16 v8, 0x18

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 1099
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistanceRef"

    const/16 v8, 0x19

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 1100
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistance"

    const/16 v8, 0x1a

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 1101
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSProcessingMethod"

    const/16 v8, 0x1b

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 1102
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAreaInformation"

    const/16 v8, 0x1c

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 1103
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDateStamp"

    const/16 v8, 0x1d

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 1104
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDifferential"

    const/16 v8, 0x1e

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 1073
    sput-object v0, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1107
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 1108
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIndex"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1107
    sput-object v0, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1111
    const/16 v0, 0x25

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 1113
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "NewSubfileType"

    const/16 v2, 0xfe

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 1114
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubfileType"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 1115
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 1116
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 1117
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 1118
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 1119
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 1120
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 1121
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 1122
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 1123
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 1124
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 1125
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 1126
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 1127
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 1128
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 1129
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 1130
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 1131
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 1132
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 1133
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 1134
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 1135
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 1136
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 1137
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 1139
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubIFDPointer"

    const/16 v2, 0x14a

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 1140
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 1141
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 1142
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 1143
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 1144
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 1145
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 1146
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    .line 1147
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    .line 1148
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    .line 1149
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DNGVersion"

    const v2, 0xc612

    const/4 v9, 0x1

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    .line 1150
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DefaultCropSize"

    const v2, 0xc620

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    .line 1111
    sput-object v8, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1155
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    .line 1154
    sput-object v0, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    .line 1158
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    .line 1159
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ThumbnailImage"

    const/16 v8, 0x100

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1160
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "CameraSettingsIFDPointer"

    const/16 v8, 0x2020

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1161
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    .line 1158
    sput-object v0, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1163
    new-array v0, v10, [Landroid/media/ExifInterface$ExifTag;

    .line 1164
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "PreviewImageStart"

    const/16 v8, 0x101

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1165
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "PreviewImageLength"

    const/16 v8, 0x102

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1163
    sput-object v0, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1167
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 1168
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "AspectFrame"

    const/16 v8, 0x1113

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1167
    sput-object v0, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1171
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 1172
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ColorSpace"

    const/16 v8, 0x37

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1171
    sput-object v0, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1198
    const/16 v0, 0xa

    new-array v0, v0, [[Landroid/media/ExifInterface$ExifTag;

    .line 1199
    sget-object v1, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v10

    sget-object v1, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v3

    .line 1200
    sget-object v1, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v11

    sget-object v1, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1201
    sget-object v1, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1198
    sput-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 1204
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 1205
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "SubIFDPointer"

    const/16 v8, 0x14a

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1206
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ExifIFDPointer"

    const v8, 0x8769

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1207
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    .line 1208
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIFDPointer"

    const v8, 0xa005

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v3

    .line 1209
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "CameraSettingsIFDPointer"

    const/16 v8, 0x2020

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v4

    .line 1210
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v11

    .line 1204
    sput-object v0, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1215
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    .line 1214
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 1217
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    .line 1216
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 1220
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1222
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1223
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v11, [Ljava/lang/String;

    .line 1224
    const-string/jumbo v2, "FNumber"

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const-string/jumbo v2, "DigitalZoomRatio"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string/jumbo v2, "ExposureTime"

    aput-object v2, v1, v10

    const-string/jumbo v2, "SubjectDistance"

    aput-object v2, v1, v3

    .line 1225
    const-string/jumbo v2, "GPSTimeStamp"

    aput-object v2, v1, v4

    .line 1223
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 1234
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 1236
    const-string/jumbo v0, "Exif\u0000\u0000"

    sget-object v1, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1276
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1277
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1280
    const/4 v6, 0x0

    .local v6, "ifdType":I
    :goto_0
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 1281
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 1282
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 1283
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v0, v6

    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    .line 1284
    .local v7, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v5, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v5, v5, v6

    iget v8, v7, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v5, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v5, v5, v6

    iget-object v8, v7, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1280
    .end local v7    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1290
    :cond_1
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v10

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v11

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string/jumbo v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1322
    const-string/jumbo v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1321
    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 74
    return-void

    .line 441
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 447
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 448
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 449
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 457
    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 459
    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 509
    nop

    :array_6
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    .line 512
    :array_7
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [Ljava/util/HashMap;

    iput-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1304
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1354
    if-nez p1, :cond_0

    .line 1355
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "fileDescriptor cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1357
    :cond_0
    iput-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1358
    iput-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1359
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1360
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1365
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1372
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1373
    const/4 v1, 0x0

    .line 1375
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1378
    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1380
    return-void

    .line 1366
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1370
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1377
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 1378
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1377
    throw v3

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1304
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1388
    if-nez p1, :cond_0

    .line 1389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_0
    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1392
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1393
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1394
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1403
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1404
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 1405
    return-void

    .line 1395
    :cond_1
    instance-of v0, p1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1396
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v0

    .line 1395
    if-eqz v0, :cond_2

    .line 1397
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v0, p1

    .line 1398
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1400
    :cond_2
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1401
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    iput-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1304
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1328
    if-nez p1, :cond_0

    .line 1329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1331
    :cond_0
    const/4 v0, 0x0

    .line 1332
    .local v0, "in":Ljava/io/FileInputStream;
    iput-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1333
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1334
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1336
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1337
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1338
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1342
    :goto_0
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1344
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1346
    return-void

    .line 1340
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1343
    :catchall_0
    move-exception v2

    move-object v0, v1

    .line 1344
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1343
    throw v2

    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 2877
    const-string/jumbo v1, "DateTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2878
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "DateTime"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2879
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "DateTime"

    .line 2880
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2879
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    :cond_0
    const-string/jumbo v1, "ImageWidth"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2885
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageWidth"

    .line 2886
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2885
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    :cond_1
    const-string/jumbo v1, "ImageLength"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2889
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageLength"

    .line 2890
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2889
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2892
    :cond_2
    const-string/jumbo v1, "Orientation"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2893
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "Orientation"

    .line 2894
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2893
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    :cond_3
    const-string/jumbo v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2897
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string/jumbo v2, "LightSource"

    .line 2898
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2897
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2900
    :cond_4
    return-void
.end method

.method private containsMatch([B[B)Z
    .locals 4
    .param p1, "mainBytes"    # [B
    .param p2, "findBytes"    # [B

    .prologue
    .line 4045
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    array-length v3, p2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    .line 4046
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 4047
    add-int v2, v0, v1

    aget-byte v2, p1, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    .line 4045
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4050
    :cond_1
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 4051
    const/4 v2, 0x1

    return v2

    .line 4046
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4055
    .end local v1    # "j":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 2120
    :try_start_0
    const-string/jumbo v9, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2123
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2124
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 2125
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 2124
    div-double v2, v14, v16

    .line 2127
    .local v2, "degrees":D
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2128
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 2129
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 2128
    div-double v6, v14, v16

    .line 2131
    .local v6, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2132
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 2133
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 2132
    div-double v12, v14, v16

    .line 2135
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    .line 2136
    .local v10, "result":D
    const-string/jumbo v9, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 2137
    :cond_0
    neg-double v14, v10

    double-to-float v9, v14

    return v9

    .line 2139
    :cond_1
    double-to-float v9, v10

    return v9

    .line 2140
    .end local v2    # "degrees":D
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "minutes":D
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    .line 2142
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1417
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1418
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1419
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .end local v1    # "value":Ljava/lang/Object;
    return-object v1

    .line 1416
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method private getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 11
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2561
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2563
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v7, :cond_3

    .line 2564
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 2604
    :goto_0
    const/16 v7, 0x11

    .line 2603
    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 2606
    .local v1, "hasVideo":Ljava/lang/String;
    const-string/jumbo v0, "yes"

    .line 2607
    .local v0, "METADATA_HAS_VIDEO_VALUE_YES":Ljava/lang/String;
    const-string/jumbo v7, "yes"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2609
    const/16 v7, 0x12

    .line 2608
    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 2611
    .local v6, "width":Ljava/lang/String;
    const/16 v7, 0x13

    .line 2610
    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 2613
    .local v2, "height":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2614
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string/jumbo v8, "ImageWidth"

    .line 2615
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 2614
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    :cond_0
    if-eqz v2, :cond_1

    .line 2619
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string/jumbo v8, "ImageLength"

    .line 2620
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 2619
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    :cond_1
    const/16 v7, 0x18

    .line 2623
    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 2625
    .local v5, "rotation":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 2626
    const/4 v3, 0x1

    .line 2629
    .local v3, "orientation":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 2641
    :goto_1
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string/jumbo v8, "Orientation"

    .line 2642
    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 2641
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2650
    .end local v2    # "height":Ljava/lang/String;
    .end local v3    # "orientation":I
    .end local v5    # "rotation":Ljava/lang/String;
    .end local v6    # "width":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2652
    return-void

    .line 2566
    .end local v0    # "METADATA_HAS_VIDEO_VALUE_YES":Ljava/lang/String;
    .end local v1    # "hasVideo":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v7, Landroid/media/ExifInterface$1;

    invoke-direct {v7, p0, p1}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2649
    :catchall_0
    move-exception v7

    .line 2650
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2649
    throw v7

    .line 2631
    .restart local v0    # "METADATA_HAS_VIDEO_VALUE_YES":Ljava/lang/String;
    .restart local v1    # "hasVideo":Ljava/lang/String;
    .restart local v2    # "height":Ljava/lang/String;
    .restart local v3    # "orientation":I
    .restart local v5    # "rotation":Ljava/lang/String;
    .restart local v6    # "width":Ljava/lang/String;
    :sswitch_0
    const/4 v3, 0x6

    .line 2632
    goto :goto_1

    .line 2634
    :sswitch_1
    const/4 v3, 0x3

    .line 2635
    goto :goto_1

    .line 2637
    :sswitch_2
    const/16 v3, 0x8

    .line 2638
    goto :goto_1

    .line 2629
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 10
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "jpegOffset"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2328
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2331
    int-to-long v6, p2

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2332
    move v1, p2

    .line 2335
    .local v1, "bytesRead":I
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    .local v4, "marker":B
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 2336
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid marker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2338
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 2339
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    const/16 v6, -0x28

    if-eq v5, v6, :cond_1

    .line 2340
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid marker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2342
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 2344
    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    .line 2345
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2346
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid marker:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2348
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 2349
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    .line 2353
    add-int/lit8 v1, v1, 0x1

    .line 2357
    const/16 v5, -0x27

    if-eq v4, v5, :cond_3

    const/16 v5, -0x26

    if-ne v4, v5, :cond_4

    .line 2458
    :cond_3
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2459
    return-void

    .line 2360
    :cond_4
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    add-int/lit8 v3, v5, -0x2

    .line 2361
    .local v3, "length":I
    add-int/lit8 v1, v1, 0x2

    .line 2366
    if-gez v3, :cond_5

    .line 2367
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2369
    :cond_5
    sparse-switch v4, :sswitch_data_0

    .line 2449
    :cond_6
    :goto_1
    if-gez v3, :cond_c

    .line 2450
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2374
    :sswitch_0
    const/4 v5, 0x6

    if-lt v3, v5, :cond_6

    .line 2378
    const/4 v5, 0x6

    new-array v2, v5, [B

    .line 2379
    .local v2, "identifier":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_7

    .line 2380
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2382
    :cond_7
    add-int/lit8 v1, v1, 0x6

    .line 2383
    add-int/lit8 v3, v3, -0x6

    .line 2384
    sget-object v5, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2388
    if-gtz v3, :cond_8

    .line 2389
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2395
    :cond_8
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 2397
    new-array v0, v3, [B

    .line 2398
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_9

    .line 2399
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2401
    :cond_9
    add-int/2addr v1, v3

    .line 2402
    const/4 v3, 0x0

    .line 2404
    invoke-direct {p0, v0, p3}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_1

    .line 2409
    .end local v0    # "bytes":[B
    .end local v2    # "identifier":[B
    :sswitch_1
    new-array v0, v3, [B

    .line 2410
    .restart local v0    # "bytes":[B
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_a

    .line 2411
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2413
    :cond_a
    const/4 v3, 0x0

    .line 2414
    const-string/jumbo v5, "UserComment"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 2415
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string/jumbo v6, "UserComment"

    .line 2416
    new-instance v7, Ljava/lang/String;

    sget-object v8, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2415
    invoke-static {v7}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2434
    .end local v0    # "bytes":[B
    :sswitch_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    .line 2435
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid SOFx"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2437
    :cond_b
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string/jumbo v6, "ImageLength"

    .line 2438
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v8, v7

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2437
    invoke-static {v8, v9, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string/jumbo v6, "ImageWidth"

    .line 2440
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v8, v7

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2439
    invoke-static {v8, v9, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    add-int/lit8 v3, v3, -0x5

    .line 2442
    goto/16 :goto_1

    .line 2452
    :cond_c
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    if-eq v5, v3, :cond_d

    .line 2453
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid JPEG segment"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2455
    :cond_d
    add-int/2addr v1, v3

    goto/16 :goto_0

    .line 2369
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_0
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x1388

    .line 2148
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2149
    new-array v0, v1, [B

    .line 2150
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2151
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 2152
    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    const/4 v1, 0x4

    return v1

    .line 2154
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2155
    const/16 v1, 0x9

    return v1

    .line 2156
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2157
    const/16 v1, 0xc

    return v1

    .line 2158
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2159
    const/4 v1, 0x7

    return v1

    .line 2160
    :cond_3
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2161
    const/16 v1, 0xa

    return v1

    .line 2164
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 14
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2667
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2673
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const-string/jumbo v13, "MakerNote"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2674
    .local v4, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v4, :cond_3

    .line 2677
    new-instance v5, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v12, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v5, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2678
    .local v5, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2682
    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v12, v12

    new-array v6, v12, [B

    .line 2683
    .local v6, "makerNoteHeader1Bytes":[B
    invoke-virtual {v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2684
    const-wide/16 v12, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2685
    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v12, v12

    new-array v7, v12, [B

    .line 2686
    .local v7, "makerNoteHeader2Bytes":[B
    invoke-virtual {v5, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2688
    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v6, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2689
    const-wide/16 v12, 0x8

    invoke-virtual {v5, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2695
    :cond_0
    :goto_0
    const/4 v12, 0x6

    invoke-direct {p0, v5, v12}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2699
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    const-string/jumbo v13, "PreviewImageStart"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 2701
    .local v3, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    const-string/jumbo v13, "PreviewImageLength"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 2703
    .local v2, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 2704
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string/jumbo v13, "JPEGInterchangeFormat"

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string/jumbo v13, "JPEGInterchangeFormatLength"

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    :cond_1
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v13, 0x8

    aget-object v12, v12, v13

    const-string/jumbo v13, "AspectFrame"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 2715
    .local v0, "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 2716
    const/4 v12, 0x4

    new-array v1, v12, [I

    .line 2717
    .local v1, "aspectFrameValues":[I
    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v12}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "aspectFrameValues":[I
    check-cast v1, [I

    .line 2718
    .restart local v1    # "aspectFrameValues":[I
    const/4 v12, 0x2

    aget v12, v1, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    if-le v12, v13, :cond_3

    .line 2719
    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    if-le v12, v13, :cond_3

    .line 2720
    const/4 v12, 0x2

    aget v12, v1, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    sub-int/2addr v12, v13

    add-int/lit8 v10, v12, 0x1

    .line 2721
    .local v10, "primaryImageWidth":I
    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    sub-int/2addr v12, v13

    add-int/lit8 v8, v12, 0x1

    .line 2723
    .local v8, "primaryImageLength":I
    if-ge v10, v8, :cond_2

    .line 2724
    add-int/2addr v10, v8

    .line 2725
    sub-int v8, v10, v8

    .line 2726
    sub-int/2addr v10, v8

    .line 2729
    :cond_2
    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 2731
    .local v11, "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 2733
    .local v9, "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageWidth"

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2734
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageLength"

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2738
    .end local v0    # "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "aspectFrameValues":[I
    .end local v2    # "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v6    # "makerNoteHeader1Bytes":[B
    .end local v7    # "makerNoteHeader2Bytes":[B
    .end local v8    # "primaryImageLength":I
    .end local v9    # "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v10    # "primaryImageWidth":I
    .end local v11    # "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_3
    return-void

    .line 2690
    .restart local v5    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v6    # "makerNoteHeader1Bytes":[B
    .restart local v7    # "makerNoteHeader2Bytes":[B
    :cond_4
    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v7, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2691
    const-wide/16 v12, 0xc

    invoke-virtual {v5, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_0
.end method

.method private getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 14
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2514
    const/16 v12, 0x54

    invoke-virtual {p1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 2515
    const/4 v12, 0x4

    new-array v6, v12, [B

    .line 2516
    .local v6, "jpegOffsetBytes":[B
    const/4 v12, 0x4

    new-array v0, v12, [B

    .line 2517
    .local v0, "cfaHeaderOffsetBytes":[B
    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2519
    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 2520
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2521
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 2522
    .local v10, "rafJpegOffset":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 2525
    .local v9, "rafCfaHeaderOffset":I
    const/4 v12, 0x5

    invoke-direct {p0, p1, v10, v12}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 2528
    int-to-long v12, v9

    invoke-virtual {p1, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2531
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2532
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    .line 2539
    .local v8, "numberOfDirectoryEntry":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 2540
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    .line 2541
    .local v11, "tagNumber":I
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    .line 2542
    .local v7, "numberOfBytes":I
    sget-object v12, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v12, v12, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v11, v12, :cond_0

    .line 2543
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 2544
    .local v2, "imageLength":I
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    .line 2546
    .local v4, "imageWidth":I
    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v2, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2548
    .local v3, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 2549
    .local v5, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageLength"

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageWidth"

    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2554
    return-void

    .line 2556
    .end local v2    # "imageLength":I
    .end local v3    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v4    # "imageWidth":I
    .end local v5    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    invoke-virtual {p1, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 2539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2558
    .end local v7    # "numberOfBytes":I
    .end local v11    # "tagNumber":I
    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2463
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2466
    invoke-direct {p0, p1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2469
    invoke-direct {p0, p1, v4}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2470
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2471
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2474
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    .line 2476
    iget v3, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2480
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "MakerNote"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 2481
    .local v1, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_0

    .line 2484
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2485
    .local v2, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2488
    const-wide/16 v4, 0x6

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2491
    invoke-direct {p0, v2, v7}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2495
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    const-string/jumbo v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 2496
    .local v0, "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 2497
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "ColorSpace"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    .end local v0    # "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 7
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2745
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2749
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    const-string/jumbo v4, "JpgFromRaw"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 2750
    .local v1, "jpgFromRawAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_0

    .line 2751
    iget v3, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v4, 0x5

    invoke-direct {p0, p1, v3, v4}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 2756
    :cond_0
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    const-string/jumbo v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 2758
    .local v2, "rw2IsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "ISOSpeedRatings"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 2759
    .local v0, "exifIsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 2761
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "ISOSpeedRatings"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3633
    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 3634
    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3635
    .local v6, "entryValues":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 3636
    .local v2, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 3637
    return-object v2

    .line 3639
    :cond_0
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    array-length v15, v6

    if-ge v9, v15, :cond_8

    .line 3640
    aget-object v15, v6, v9

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 3641
    .local v8, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v14, -0x1

    .line 3642
    .local v14, "second":I
    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 3643
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 3644
    :cond_1
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3646
    :cond_2
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 3647
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 3648
    :cond_3
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 3650
    :cond_4
    const/4 v15, -0x1

    if-ne v7, v15, :cond_5

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 3651
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 3653
    :cond_5
    const/4 v15, -0x1

    if-ne v7, v15, :cond_7

    .line 3654
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3639
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3657
    :cond_7
    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    .line 3658
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3659
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 3662
    .end local v7    # "first":I
    .end local v8    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "second":I
    :cond_8
    return-object v2

    .line 3665
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "entryValues":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_9
    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 3666
    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3667
    .local v11, "rationalNumber":[Ljava/lang/String;
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 3669
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v12, v0

    .line 3670
    .local v12, "numerator":J
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v4, v0

    .line 3671
    .local v4, "denominator":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_a

    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gez v15, :cond_b

    .line 3672
    :cond_a
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 3674
    :cond_b
    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v12, v16

    if-gtz v15, :cond_c

    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v4, v16

    if-lez v15, :cond_d

    .line 3675
    :cond_c
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 3677
    :cond_d
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v15

    .line 3678
    .end local v4    # "denominator":J
    .end local v12    # "numerator":J
    :catch_0
    move-exception v3

    .line 3682
    :cond_e
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 3685
    .end local v11    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3686
    .local v10, "longValue":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/32 v18, 0xffff

    cmp-long v15, v16, v18

    if-gtz v15, :cond_10

    .line 3687
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 3689
    :cond_10
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_11

    .line 3690
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 3692
    :cond_11
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v15

    .line 3693
    .end local v10    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v3

    .line 3697
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 3698
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v15

    .line 3699
    :catch_2
    move-exception v3

    .line 3702
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15
.end method

.method private handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3209
    const-string/jumbo v5, "JPEGInterchangeFormat"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3211
    .local v0, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string/jumbo v5, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3212
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_2

    .line 3213
    if-eqz v1, :cond_2

    .line 3214
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 3215
    .local v4, "thumbnailOffset":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 3218
    .local v3, "thumbnailLength":I
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3219
    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 3221
    :cond_0
    iget v5, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v5

    .line 3230
    :cond_1
    :goto_0
    if-lez v4, :cond_2

    if-lez v3, :cond_2

    .line 3231
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 3232
    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 3233
    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 3234
    const/4 v5, 0x6

    iput v5, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 3236
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v5, :cond_2

    .line 3237
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v5, :cond_2

    .line 3239
    new-array v2, v3, [B

    .line 3240
    .local v2, "thumbnailBytes":[B
    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3241
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3242
    iput-object v2, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 3246
    .end local v2    # "thumbnailBytes":[B
    .end local v3    # "thumbnailLength":I
    .end local v4    # "thumbnailOffset":I
    :cond_2
    return-void

    .line 3220
    .restart local v3    # "thumbnailLength":I
    .restart local v4    # "thumbnailOffset":I
    :cond_3
    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 3222
    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 3224
    iget v5, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v4, v5

    goto :goto_0
.end method

.method private handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 16
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3252
    const-string/jumbo v14, "StripOffsets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/ExifInterface$ExifAttribute;

    .line 3254
    .local v12, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string/jumbo v14, "StripByteCounts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 3256
    .local v8, "stripByteCountsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    .line 3258
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 3260
    .local v11, "stripOffsets":[J
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v14}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 3264
    .local v7, "stripByteCounts":[J
    invoke-static {v7}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v14

    long-to-int v14, v14

    new-array v13, v14, [B

    .line 3266
    .local v13, "totalStripBytes":[B
    const/4 v3, 0x0

    .line 3267
    .local v3, "bytesRead":I
    const/4 v2, 0x0

    .line 3268
    .local v2, "bytesAdded":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v14, v11

    if-ge v4, v14, :cond_1

    .line 3269
    aget-wide v14, v11, v4

    long-to-int v10, v14

    .line 3270
    .local v10, "stripOffset":I
    aget-wide v14, v7, v4

    long-to-int v6, v14

    .line 3273
    .local v6, "stripByteCount":I
    sub-int v5, v10, v3

    .line 3274
    .local v5, "skipBytes":I
    if-gez v5, :cond_0

    .line 3275
    const-string/jumbo v14, "ExifInterface"

    const-string/jumbo v15, "Invalid strip offset value"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    :cond_0
    int-to-long v14, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3278
    add-int/2addr v3, v5

    .line 3281
    new-array v9, v6, [B

    .line 3282
    .local v9, "stripBytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3283
    add-int/2addr v3, v6

    .line 3287
    array-length v14, v9

    .line 3286
    const/4 v15, 0x0

    invoke-static {v9, v15, v13, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3288
    array-length v14, v9

    add-int/2addr v2, v14

    .line 3268
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3291
    .end local v5    # "skipBytes":I
    .end local v6    # "stripByteCount":I
    .end local v9    # "stripBytes":[B
    .end local v10    # "stripOffset":I
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 3292
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 3293
    array-length v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 3295
    .end local v2    # "bytesAdded":I
    .end local v3    # "bytesRead":I
    .end local v4    # "i":I
    .end local v7    # "stripByteCounts":[J
    .end local v11    # "stripOffsets":[J
    .end local v13    # "totalStripBytes":[B
    :cond_2
    return-void
.end method

.method private isHeifFormat([B)Z
    .locals 20
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2197
    const/4 v15, 0x0

    .line 2199
    .local v15, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2200
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v16, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :try_start_1
    sget-object v17, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v16 .. v17}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2202
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 2203
    .local v8, "chunkSize":J
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 2204
    .local v3, "chunkType":[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2206
    sget-object v17, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v17

    if-nez v17, :cond_0

    .line 2207
    const/16 v17, 0x0

    .line 2260
    if-eqz v16, :cond_12

    .line 2261
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2262
    const/4 v15, 0x0

    .line 2207
    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_0
    return v17

    .line 2210
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_0
    const-wide/16 v4, 0x8

    .line 2211
    .local v4, "chunkDataOffset":J
    const-wide/16 v18, 0x1

    cmp-long v17, v8, v18

    if-nez v17, :cond_2

    .line 2214
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    .line 2215
    const-wide/16 v18, 0x10

    cmp-long v17, v8, v18

    if-gez v17, :cond_1

    .line 2217
    const/16 v17, 0x0

    .line 2260
    if-eqz v16, :cond_11

    .line 2261
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2262
    const/4 v15, 0x0

    .line 2217
    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_1
    return v17

    .line 2219
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_1
    const-wide/16 v4, 0x10

    .line 2223
    :cond_2
    :try_start_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v8, v18

    if-lez v17, :cond_3

    .line 2224
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v0, v17

    int-to-long v8, v0

    .line 2227
    :cond_3
    sub-long v6, v8, v4

    .line 2231
    .local v6, "chunkDataSize":J
    const-wide/16 v18, 0x8

    cmp-long v17, v6, v18

    if-gez v17, :cond_4

    .line 2232
    const/16 v17, 0x0

    .line 2260
    if-eqz v16, :cond_10

    .line 2261
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2262
    const/4 v15, 0x0

    .line 2232
    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_2
    return v17

    .line 2235
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_4
    const/16 v17, 0x4

    :try_start_4
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 2236
    .local v2, "brand":[B
    const/4 v14, 0x0

    .line 2237
    .local v14, "isMif1":Z
    const/4 v11, 0x0

    .line 2238
    .local v11, "isHeic":Z
    const-wide/16 v12, 0x0

    .local v12, "i":J
    :goto_3
    const-wide/16 v18, 0x4

    div-long v18, v6, v18

    cmp-long v17, v12, v18

    if-gez v17, :cond_a

    .line 2239
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v17

    array-length v0, v2

    move/from16 v18, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 2240
    const/16 v17, 0x0

    .line 2260
    if-eqz v16, :cond_f

    .line 2261
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2262
    const/4 v15, 0x0

    .line 2240
    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_4
    return v17

    .line 2242
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_5
    const-wide/16 v18, 0x1

    cmp-long v17, v12, v18

    if-nez v17, :cond_7

    .line 2238
    :cond_6
    const-wide/16 v18, 0x1

    add-long v12, v12, v18

    goto :goto_3

    .line 2246
    :cond_7
    :try_start_5
    sget-object v17, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v17

    if-eqz v17, :cond_9

    .line 2247
    const/4 v14, 0x1

    .line 2251
    :cond_8
    :goto_5
    if-eqz v14, :cond_6

    if-eqz v11, :cond_6

    .line 2252
    const/16 v17, 0x1

    .line 2260
    if-eqz v16, :cond_e

    .line 2261
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2262
    const/4 v15, 0x0

    .line 2252
    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_6
    return v17

    .line 2248
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_9
    :try_start_6
    sget-object v17, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v17

    if-eqz v17, :cond_8

    .line 2249
    const/4 v11, 0x1

    goto :goto_5

    .line 2260
    :cond_a
    if-eqz v16, :cond_d

    .line 2261
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2262
    .end local v2    # "brand":[B
    .end local v3    # "chunkType":[B
    .end local v4    # "chunkDataOffset":J
    .end local v6    # "chunkDataSize":J
    .end local v8    # "chunkSize":J
    .end local v11    # "isHeic":Z
    .end local v12    # "i":J
    .end local v14    # "isMif1":Z
    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_7
    const/4 v15, 0x0

    .line 2265
    :cond_b
    :goto_8
    const/16 v17, 0x0

    return v17

    .line 2255
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v10

    .line 2260
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v10, "e":Ljava/lang/Exception;
    :goto_9
    if-eqz v15, :cond_b

    .line 2261
    invoke-virtual {v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    goto :goto_7

    .line 2259
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catchall_0
    move-exception v17

    .line 2260
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_a
    if-eqz v15, :cond_c

    .line 2261
    invoke-virtual {v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2262
    const/4 v15, 0x0

    .line 2259
    :cond_c
    throw v17

    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v15, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_a

    .line 2255
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_9

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "brand":[B
    .restart local v3    # "chunkType":[B
    .restart local v4    # "chunkDataOffset":J
    .restart local v6    # "chunkDataSize":J
    .restart local v8    # "chunkSize":J
    .restart local v11    # "isHeic":Z
    .restart local v12    # "i":J
    .restart local v14    # "isMif1":Z
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_d
    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_8

    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_e
    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_6

    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_f
    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_4

    .end local v2    # "brand":[B
    .end local v11    # "isHeic":Z
    .end local v12    # "i":J
    .end local v14    # "isMif1":Z
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_10
    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_2

    .end local v6    # "chunkDataSize":J
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_11
    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .end local v4    # "chunkDataOffset":J
    .end local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_12
    move-object/from16 v15, v16

    .end local v16    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_0
.end method

.method private static isJpegFormat([B)Z
    .locals 3
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2173
    aget-byte v1, p0, v0

    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 2174
    const/4 v1, 0x0

    return v1

    .line 2172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2177
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2278
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2280
    .local v1, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2282
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2284
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 2285
    .local v0, "orfSignature":S
    const/16 v2, 0x4f52

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5352

    if-ne v0, v2, :cond_1

    .line 2286
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 2288
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isRafFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2187
    const-string/jumbo v2, "FUJIFILMCCD-RAW"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2188
    .local v1, "rafSignatureBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2189
    aget-byte v2, p1, v0

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_0

    .line 2190
    const/4 v2, 0x0

    return v2

    .line 2188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2193
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isRw2Format([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2297
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2299
    .local v1, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2301
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2303
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 2304
    .local v0, "signatureByte":S
    const/16 v2, 0x55

    if-ne v0, v2, :cond_0

    .line 2305
    const/4 v2, 0x1

    return v2

    .line 2307
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1755
    const-wide/16 v2, 0x0

    :try_start_0
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    const/4 v1, 0x1

    return v1

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 7
    .param p1, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3300
    const-string/jumbo v4, "BitsPerSample"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3301
    .local v0, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 3302
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 3304
    .local v1, "bitsPerSampleValue":[I
    sget-object v4, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3305
    return v6

    .line 3309
    :cond_0
    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 3311
    const-string/jumbo v4, "PhotometricInterpretation"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3312
    .local v2, "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_3

    .line 3314
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 3315
    .local v3, "photometricInterpretationValue":I
    if-ne v3, v6, :cond_1

    .line 3316
    sget-object v4, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    .line 3315
    if-nez v4, :cond_2

    .line 3317
    :cond_1
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 3318
    sget-object v4, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    .line 3315
    if-eqz v4, :cond_3

    .line 3319
    :cond_2
    return v6

    .line 3329
    .end local v1    # "bitsPerSampleValue":[I
    .end local v2    # "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "photometricInterpretationValue":I
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x200

    .line 3335
    const-string/jumbo v4, "ImageLength"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3336
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string/jumbo v4, "ImageWidth"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3338
    .local v2, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 3339
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 3340
    .local v1, "imageLengthValue":I
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 3341
    .local v3, "imageWidthValue":I
    if-gt v1, v5, :cond_0

    if-gt v3, v5, :cond_0

    .line 3342
    const/4 v4, 0x1

    return v4

    .line 3345
    .end local v1    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1681
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 1682
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    aput-object v6, v5, v2

    .line 1681
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1686
    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v5, 0x1388

    invoke-direct {v3, p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1687
    .end local p1    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    move-object v0, v3

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v5, v0

    invoke-direct {p0, v5}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v5

    iput v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 1690
    new-instance v4, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v4, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1692
    .local v4, "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v5, :pswitch_data_0

    .line 1729
    :goto_1
    invoke-direct {p0, v4}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 1730
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1745
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    move-object p1, v3

    .line 1751
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :goto_2
    return-void

    .line 1694
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :pswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v4, v5, v6}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1731
    .end local v4    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object p1, v3

    .line 1734
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :goto_3
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 1739
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    .line 1740
    const-string/jumbo v5, "ExifInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1745
    :cond_1
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    goto :goto_2

    .line 1698
    .end local v1    # "e":Ljava/io/IOException;
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :pswitch_1
    :try_start_4
    invoke-direct {p0, v4}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1744
    .end local v4    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catchall_0
    move-exception v5

    move-object p1, v3

    .line 1745
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :goto_4
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1744
    throw v5

    .line 1702
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :pswitch_2
    :try_start_5
    invoke-direct {p0, v4}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 1706
    :pswitch_3
    invoke-direct {p0, v4}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 1710
    :pswitch_4
    invoke-direct {p0, v4}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 1721
    :pswitch_5
    invoke-direct {p0, v4}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1744
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 1731
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 5
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "exifBytesLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2925
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2927
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2930
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v1

    .line 2931
    .local v1, "startCode":I
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 2932
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid start code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2936
    :cond_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 2937
    .local v0, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    if-lt v0, p2, :cond_2

    .line 2938
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2940
    :cond_2
    add-int/lit8 v0, v0, -0x8

    .line 2941
    if-lez v0, :cond_3

    .line 2942
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 2943
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2946
    :cond_3
    return-void
.end method

.method private printAttributes()V
    .locals 7

    .prologue
    .line 1764
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1765
    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The size of tag group["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1767
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 1768
    .local v3, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1769
    const-string/jumbo v6, ", tagValue: \'"

    .line 1768
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1769
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    .line 1768
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1769
    const-string/jumbo v6, "\'"

    .line 1768
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1764
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1772
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2905
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 2906
    .local v0, "byteOrder":S
    sparse-switch v0, :sswitch_data_0

    .line 2918
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2911
    :sswitch_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 2916
    :sswitch_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 2906
    nop

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_0
        0x4d4d -> :sswitch_1
    .end sparse-switch
.end method

.method private readExifSegment([BI)V
    .locals 2
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2866
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2869
    .local v0, "dataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2872
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2873
    return-void
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 30
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2951
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get1(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 2953
    return-void

    .line 2956
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v18

    .line 2957
    .local v18, "numberOfDirectoryEntry":S
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get1(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    mul-int/lit8 v26, v18, 0xc

    add-int v25, v25, v26

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    .line 2959
    return-void

    .line 2964
    :cond_1
    if-gtz v18, :cond_3

    .line 2965
    sget-boolean v25, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v25, :cond_2

    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "readImageFileDirectory return on numberOfDirectoryEntry = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_2
    return-void

    .line 2975
    :cond_3
    const/4 v10, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v10, v0, :cond_17

    .line 2976
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v23

    .line 2977
    .local v23, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 2978
    .local v9, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v17

    .line 2980
    .local v17, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v25

    add-int/lit8 v25, v25, 0x4

    move/from16 v0, v25

    int-to-long v14, v0

    .line 2983
    .local v14, "nextEntryOffset":J
    sget-object v25, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v25, v25, p2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/media/ExifInterface$ExifTag;

    .line 2991
    .local v22, "tag":Landroid/media/ExifInterface$ExifTag;
    const-wide/16 v6, 0x0

    .line 2992
    .local v6, "byteCount":J
    const/16 v24, 0x0

    .line 2993
    .local v24, "valid":Z
    if-nez v22, :cond_5

    .line 2994
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since tag number is not defined: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    :goto_1
    if-nez v24, :cond_a

    .line 3007
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2975
    :cond_4
    :goto_2
    add-int/lit8 v25, v10, 0x1

    move/from16 v0, v25

    int-to-short v10, v0

    .local v10, "i":S
    goto :goto_0

    .line 2995
    .end local v10    # "i":S
    :cond_5
    if-lez v9, :cond_6

    sget-object v25, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v9, v0, :cond_7

    .line 2996
    :cond_6
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since data format is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2998
    :cond_7
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sget-object v25, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v25, v25, v9

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v6, v26, v28

    .line 2999
    const-wide/16 v26, 0x0

    cmp-long v25, v6, v26

    if-ltz v25, :cond_8

    const-wide/32 v26, 0x7fffffff

    cmp-long v25, v6, v26

    if-lez v25, :cond_9

    .line 3000
    :cond_8
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3003
    :cond_9
    const/16 v24, 0x1

    goto :goto_1

    .line 3013
    :cond_a
    const-wide/16 v26, 0x4

    cmp-long v25, v6, v26

    if-lez v25, :cond_c

    .line 3014
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v19

    .line 3018
    .local v19, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mMimeType:I

    move/from16 v25, v0

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 3019
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "MakerNote"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 3021
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 3046
    :cond_b
    :goto_3
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v25, v26, v28

    if-gtz v25, :cond_f

    .line 3047
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3057
    .end local v19    # "offset":I
    :cond_c
    sget-object v25, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 3062
    .local v16, "nextIfdType":Ljava/lang/Object;
    if-eqz v16, :cond_11

    .line 3063
    const-wide/16 v20, -0x1

    .line 3065
    .local v20, "offset":J
    packed-switch v9, :pswitch_data_0

    .line 3091
    :goto_4
    :pswitch_0
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-lez v25, :cond_10

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v25, v20, v26

    if-gez v25, :cond_10

    .line 3092
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3093
    check-cast v16, Ljava/lang/Integer;

    .end local v16    # "nextIfdType":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3098
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 3022
    .end local v20    # "offset":J
    .restart local v19    # "offset":I
    :cond_d
    const/16 v25, 0x6

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 3023
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "ThumbnailImage"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 3025
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 3026
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    .line 3029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3031
    .local v8, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 3033
    .local v11, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 3035
    .local v12, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    const-string/jumbo v26, "Compression"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    const-string/jumbo v26, "JPEGInterchangeFormat"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    const-string/jumbo v26, "JPEGInterchangeFormatLength"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3041
    .end local v8    # "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v11    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v12    # "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mMimeType:I

    move/from16 v25, v0

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 3042
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "JpgFromRaw"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 3043
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    goto/16 :goto_3

    .line 3050
    :cond_f
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since data offset is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 3067
    .end local v19    # "offset":I
    .restart local v16    # "nextIfdType":Ljava/lang/Object;
    .restart local v20    # "offset":J
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 3068
    goto/16 :goto_4

    .line 3071
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 3072
    goto/16 :goto_4

    .line 3075
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v20

    goto/16 :goto_4

    .line 3080
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 3081
    goto/16 :goto_4

    .line 3095
    :cond_10
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3102
    .end local v20    # "offset":J
    :cond_11
    long-to-int v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v5, v0, [B

    .line 3103
    .local v5, "bytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3104
    new-instance v4, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v25, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v4, v9, v0, v5, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V

    .line 3105
    .local v4, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    aget-object v25, v25, p2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "DNGVersion"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 3111
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mMimeType:I

    .line 3117
    :cond_12
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Make"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_13

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Model"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 3118
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "PENTAX"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    .line 3117
    if-nez v25, :cond_15

    .line 3119
    :cond_14
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Compression"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 3120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v25

    const v26, 0xffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 3121
    :cond_15
    const/16 v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mMimeType:I

    .line 3125
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v25, v26, v14

    if-eqz v25, :cond_4

    .line 3126
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 3130
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "bytes":[B
    .end local v6    # "byteCount":J
    .end local v9    # "dataFormat":I
    .end local v14    # "nextEntryOffset":J
    .end local v16    # "nextIfdType":Ljava/lang/Object;
    .end local v17    # "numberOfComponents":I
    .end local v22    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v23    # "tagNumber":I
    .end local v24    # "valid":Z
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v25

    add-int/lit8 v25, v25, 0x4

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_18

    .line 3131
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v13

    .line 3137
    .local v13, "nextIfdOffset":I
    const/16 v25, 0x8

    move/from16 v0, v25

    if-le v13, v0, :cond_18

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_18

    .line 3138
    int-to-long v0, v13

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 3141
    const/16 v25, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3147
    .end local v13    # "nextIfdOffset":I
    :cond_18
    :goto_6
    return-void

    .line 3142
    .restart local v13    # "nextIfdOffset":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_18

    .line 3143
    const/16 v25, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_6

    .line 3065
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1669
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1671
    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 6
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3159
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string/jumbo v5, "ImageLength"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3161
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string/jumbo v5, "ImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3163
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3166
    :cond_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string/jumbo v5, "JPEGInterchangeFormat"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 3167
    .local v3, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_1

    .line 3169
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 3172
    .local v2, "jpegInterchangeFormat":I
    invoke-direct {p0, p1, v2, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3175
    .end local v2    # "jpegInterchangeFormat":I
    .end local v3    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, -0x28

    const/4 v11, 0x6

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2773
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2775
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, p2, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 2776
    .local v2, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    if-eq v7, v10, :cond_0

    .line 2777
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2779
    :cond_0
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2780
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    if-eq v7, v8, :cond_1

    .line 2781
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2783
    :cond_1
    invoke-virtual {v2, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2786
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2787
    const/16 v7, -0x1f

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2788
    invoke-direct {p0, v2, v11}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I

    .line 2790
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 2793
    .local v0, "bytes":[B
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 2794
    .local v5, "marker":B
    if-eq v5, v10, :cond_3

    .line 2795
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2797
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 2798
    sparse-switch v5, :sswitch_data_0

    .line 2843
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2844
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2845
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 2846
    .local v4, "length":I
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 2847
    add-int/lit8 v4, v4, -0x2

    .line 2848
    if-gez v4, :cond_8

    .line 2849
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2800
    .end local v4    # "length":I
    :sswitch_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v4, v7, -0x2

    .line 2801
    .restart local v4    # "length":I
    if-gez v4, :cond_4

    .line 2802
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2804
    :cond_4
    new-array v3, v11, [B

    .line 2805
    .local v3, "identifier":[B
    if-lt v4, v11, :cond_6

    .line 2806
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_5

    .line 2807
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2809
    :cond_5
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2811
    add-int/lit8 v7, v4, -0x6

    invoke-virtual {v1, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    add-int/lit8 v8, v4, -0x6

    if-eq v7, v8, :cond_2

    .line 2812
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2818
    :cond_6
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2819
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2820
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 2821
    if-lt v4, v11, :cond_7

    .line 2822
    add-int/lit8 v4, v4, -0x6

    .line 2823
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 2826
    :cond_7
    :goto_0
    if-lez v4, :cond_2

    .line 2827
    array-length v7, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2826
    invoke-virtual {v1, v0, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .local v6, "read":I
    if-ltz v6, :cond_2

    .line 2828
    invoke-virtual {v2, v0, v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 2829
    sub-int/2addr v4, v6

    goto :goto_0

    .line 2835
    .end local v3    # "identifier":[B
    .end local v4    # "length":I
    .end local v6    # "read":I
    :sswitch_1
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2836
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2838
    invoke-static {v1, v2}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 2839
    return-void

    .line 2852
    .restart local v4    # "length":I
    :cond_8
    :goto_1
    if-lez v4, :cond_2

    .line 2853
    array-length v7, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2852
    invoke-virtual {v1, v0, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .restart local v6    # "read":I
    if-ltz v6, :cond_2

    .line 2854
    invoke-virtual {v2, v0, v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 2855
    sub-int/2addr v4, v6

    goto :goto_1

    .line 2798
    nop

    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3179
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v1, v2, v3

    .line 3182
    .local v1, "thumbnailData":Ljava/util/HashMap;
    const-string/jumbo v2, "Compression"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3183
    .local v0, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_1

    .line 3184
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 3185
    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    sparse-switch v2, :sswitch_data_0

    .line 3202
    :cond_0
    :goto_0
    return-void

    .line 3187
    :sswitch_0
    invoke-direct {p0, p1, v1}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 3192
    :sswitch_1
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3193
    invoke-direct {p0, p1, v1}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 3200
    :cond_1
    invoke-direct {p0, p1, v1}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 3185
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private swapBasedOnImageSize(II)V
    .locals 11
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4004
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4008
    :cond_0
    return-void

    .line 4012
    :cond_1
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    const-string/jumbo v10, "ImageLength"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4014
    .local v0, "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    const-string/jumbo v10, "ImageWidth"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4016
    .local v2, "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    const-string/jumbo v10, "ImageLength"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4018
    .local v4, "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    const-string/jumbo v10, "ImageWidth"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    .line 4020
    .local v6, "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 4041
    :cond_2
    :goto_0
    return-void

    .line 4024
    :cond_3
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 4029
    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 4030
    .local v1, "firstImageLengthValue":I
    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4031
    .local v3, "firstImageWidthValue":I
    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 4032
    .local v5, "secondImageLengthValue":I
    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 4034
    .local v7, "secondImageWidthValue":I
    if-ge v1, v5, :cond_2

    .line 4035
    if-ge v3, v7, :cond_2

    .line 4036
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v9, p1

    .line 4037
    .local v8, "tempMap":Ljava/util/HashMap;
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    aput-object v10, v9, p1

    .line 4038
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v8, v9, p2

    goto :goto_0
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .prologue
    .line 1652
    const/4 v1, 0x0

    .line 1653
    .local v1, "updated":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1654
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1655
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    const/4 v1, 0x1

    .line 1653
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1659
    :cond_1
    return v1
.end method

.method private updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 21
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "DefaultCropSize"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 3399
    .local v4, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorTopBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/ExifInterface$ExifAttribute;

    .line 3401
    .local v16, "topBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorLeftBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifAttribute;

    .line 3403
    .local v11, "leftBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorBottomBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3405
    .local v2, "bottomBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorRightBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/ExifInterface$ExifAttribute;

    .line 3407
    .local v14, "rightBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v4, :cond_2

    .line 3410
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 3412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/ExifInterface$Rational;

    .line 3414
    .local v6, "defaultCropSizeValue":[Landroid/media/ExifInterface$Rational;
    const/16 v19, 0x0

    aget-object v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 3416
    .local v7, "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const/16 v19, 0x1

    aget-object v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3425
    .end local v6    # "defaultCropSizeValue":[Landroid/media/ExifInterface$Rational;
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageWidth"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    .end local v7    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    :goto_1
    return-void

    .line 3419
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 3421
    .local v5, "defaultCropSizeValue":[I
    const/16 v19, 0x0

    aget v19, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 3423
    .restart local v7    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const/16 v19, 0x1

    aget v19, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .restart local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_0

    .line 3427
    .end local v5    # "defaultCropSizeValue":[I
    .end local v7    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_2
    if-eqz v16, :cond_3

    if-eqz v11, :cond_3

    .line 3428
    if-eqz v2, :cond_3

    if-eqz v14, :cond_3

    .line 3430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v17

    .line 3431
    .local v17, "topBorderValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 3432
    .local v3, "bottomBorderValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v15

    .line 3433
    .local v15, "rightBorderValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v12

    .line 3434
    .local v12, "leftBorderValue":I
    move/from16 v0, v17

    if-le v3, v0, :cond_0

    if-le v15, v12, :cond_0

    .line 3435
    sub-int v13, v3, v17

    .line 3436
    .local v13, "length":I
    sub-int v18, v15, v12

    .line 3438
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 3440
    .local v9, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 3441
    .local v10, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageWidth"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3445
    .end local v3    # "bottomBorderValue":I
    .end local v9    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v10    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v12    # "leftBorderValue":I
    .end local v13    # "length":I
    .end local v15    # "rightBorderValue":I
    .end local v17    # "topBorderValue":I
    .end local v18    # "width":I
    :cond_3
    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto/16 :goto_1
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 3351
    invoke-direct {p0, v6, v5}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3352
    invoke-direct {p0, v6, v4}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3353
    invoke-direct {p0, v5, v4}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3359
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    const-string/jumbo v3, "PixelXDimension"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3361
    .local v0, "pixelXDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    const-string/jumbo v3, "PixelYDimension"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3362
    .local v1, "pixelYDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3363
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string/jumbo v3, "ImageWidth"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string/jumbo v3, "ImageLength"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3369
    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3370
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3371
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    aput-object v3, v2, v4

    .line 3372
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v5

    .line 3377
    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3378
    const-string/jumbo v2, "ExifInterface"

    const-string/jumbo v3, "No image meets the size requirements of a thumbnail image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I
    .locals 26
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3453
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v11, v0, [I

    .line 3454
    .local v11, "ifdOffsets":[I
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v10, v0, [I

    .line 3457
    .local v10, "ifdDataSizes":[I
    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v17, v22, v21

    .line 3458
    .local v17, "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 3457
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 3461
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 3462
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 3465
    const/4 v12, 0x0

    .local v12, "ifdType":I
    :goto_1
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 3466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v22

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v13, v22, v21

    .local v13, "obj":Ljava/lang/Object;
    move-object v6, v13

    .line 3467
    check-cast v6, Ljava/util/Map$Entry;

    .line 3468
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_1

    .line 3469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3465
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3476
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 3477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3478
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3477
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3482
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3481
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    .line 3485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3486
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3485
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3490
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3489
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3492
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3491
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3497
    :cond_7
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_a

    .line 3498
    const/16 v16, 0x0

    .line 3499
    .local v16, "sum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3500
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 3501
    .local v8, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v8}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 3502
    .local v15, "size":I
    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_8

    .line 3503
    add-int v16, v16, v15

    goto :goto_4

    .line 3506
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_9
    aget v21, v10, v9

    add-int v21, v21, v16

    aput v21, v10, v9

    .line 3497
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3510
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "sum":I
    :cond_a
    const/16 v14, 0x8

    .line 3511
    .local v14, "position":I
    const/4 v12, 0x0

    :goto_5
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_c

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    .line 3513
    aput v14, v11, v12

    .line 3514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    mul-int/lit8 v21, v21, 0xc

    add-int/lit8 v21, v21, 0x2

    add-int/lit8 v21, v21, 0x4

    aget v22, v10, v12

    add-int v21, v21, v22

    add-int v14, v14, v21

    .line 3511
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 3517
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 3518
    move/from16 v19, v14

    .line 3519
    .local v19, "thumbnailOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3520
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3519
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3521
    add-int v21, p2, v19

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 3522
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v21, v0

    add-int v14, v14, v21

    .line 3526
    .end local v19    # "thumbnailOffset":I
    :cond_d
    add-int/lit8 v20, v14, 0x8

    .line 3536
    .local v20, "totalSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_e

    .line 3537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3538
    const/16 v23, 0x1

    aget v23, v11, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3537
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3540
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_f

    .line 3541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3542
    const/16 v23, 0x2

    aget v23, v11, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 3541
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3544
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_10

    .line 3545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3546
    const/16 v23, 0x3

    aget v23, v11, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    .line 3545
    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3550
    :cond_10
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3551
    sget-object v21, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    sget-object v22, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 3553
    const/16 v21, 0x4d4d

    .line 3552
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 3554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3555
    const/16 v21, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3556
    const-wide/16 v22, 0x8

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 3559
    const/4 v12, 0x0

    :goto_7
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_18

    .line 3560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_17

    .line 3563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3566
    aget v21, v11, v12

    add-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    mul-int/lit8 v22, v22, 0xc

    add-int v21, v21, v22

    add-int/lit8 v5, v21, 0x4

    .line 3567
    .local v5, "dataOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3570
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    sget-object v21, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v21, v21, v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/ExifInterface$ExifTag;

    .line 3571
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    move/from16 v18, v0

    .line 3572
    .local v18, "tagNumber":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 3573
    .local v4, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 3575
    .restart local v15    # "size":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3576
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3577
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3578
    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_13

    .line 3579
    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 3580
    add-int/2addr v5, v15

    goto :goto_8

    .line 3553
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "dataOffset":I
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_12
    const/16 v21, 0x4949

    goto/16 :goto_6

    .line 3582
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v5    # "dataOffset":I
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "size":I
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v18    # "tagNumber":I
    :cond_13
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3584
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v15, v0, :cond_11

    .line 3585
    move v9, v15

    :goto_9
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v9, v0, :cond_11

    .line 3586
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3585
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 3595
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_14
    if-nez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_16

    .line 3596
    const/16 v21, 0x4

    aget v21, v11, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 3602
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3603
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 3605
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_15

    .line 3606
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_b

    .line 3598
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    :cond_16
    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    goto :goto_a

    .line 3559
    .end local v5    # "dataOffset":I
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 3613
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_19

    .line 3614
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3618
    :cond_19
    sget-object v21, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3620
    return v20
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 9
    .param p1, "defaultValue"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2015
    const-string/jumbo v5, "GPSAltitude"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 2016
    .local v0, "altitude":D
    const-string/jumbo v5, "GPSAltitudeRef"

    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 2018
    .local v2, "ref":I
    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_1

    if-ltz v2, :cond_1

    .line 2019
    if-ne v2, v4, :cond_0

    :goto_0
    int-to-double v4, v3

    mul-double/2addr v4, v0

    return-wide v4

    :cond_0
    move v3, v4

    goto :goto_0

    .line 2021
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1432
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1433
    .local v1, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_4

    .line 1434
    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1435
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1437
    :cond_0
    const-string/jumbo v3, "GPSTimeStamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1439
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 1440
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 1441
    return-object v6

    .line 1443
    :cond_1
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 1444
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    if-eq v3, v5, :cond_2

    .line 1445
    return-object v6

    .line 1447
    :cond_2
    const-string/jumbo v3, "%02d:%02d:%02d"

    new-array v4, v5, [Ljava/lang/Object;

    .line 1448
    aget-object v5, v0, v8

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v8

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1449
    aget-object v5, v0, v9

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v9

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1450
    aget-object v5, v0, v10

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v10

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1447
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1453
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1454
    :catch_0
    move-exception v2

    .line 1455
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v6

    .line 1458
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return-object v6
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 1491
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1492
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    .line 1493
    return-wide p2

    .line 1497
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1470
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1471
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    .line 1472
    return p2

    .line 1476
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getDateTime()J
    .locals 14

    .prologue
    .line 2031
    const-string/jumbo v11, "DateTime"

    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2032
    .local v1, "dateTimeString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2033
    sget-object v11, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 2032
    if-eqz v11, :cond_1

    .line 2033
    :cond_0
    const-wide/16 v12, -0x1

    return-wide v12

    .line 2035
    :cond_1
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2038
    .local v5, "pos":Ljava/text/ParsePosition;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2039
    .local v0, "dateTimeFormatter":Ljava/text/SimpleDateFormat;
    const-string/jumbo v11, "UTC"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2045
    :try_start_0
    const-string/jumbo v11, "GMT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2046
    sget-boolean v11, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "ExifInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getDateTime: set device default timezone ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] for datetime ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2059
    :cond_3
    invoke-virtual {v0, v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 2061
    .local v2, "datetime":Ljava/util/Date;
    if-nez v2, :cond_4

    const-wide/16 v12, -0x1

    return-wide v12

    .line 2062
    :cond_4
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 2064
    .local v6, "msecs":J
    const-string/jumbo v11, "SubSecTime"

    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2065
    .local v10, "subSecs":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 2067
    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2068
    .local v8, "sub":J
    :goto_0
    const-wide/16 v12, 0x3e8

    cmp-long v11, v8, v12

    if-lez v11, :cond_5

    .line 2069
    const-wide/16 v12, 0xa

    div-long/2addr v8, v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2071
    :cond_5
    add-long/2addr v6, v8

    .line 2076
    .end local v8    # "sub":J
    :cond_6
    :goto_1
    return-wide v6

    .line 2077
    .end local v2    # "datetime":Ljava/util/Date;
    .end local v6    # "msecs":J
    .end local v10    # "subSecs":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2078
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v12, -0x1

    return-wide v12

    .line 2072
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "datetime":Ljava/util/Date;
    .restart local v6    # "msecs":J
    .restart local v10    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public getGpsDateTime()J
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    .line 2088
    const-string/jumbo v8, "GPSDateStamp"

    invoke-virtual {p0, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2089
    .local v0, "date":Ljava/lang/String;
    const-string/jumbo v8, "GPSTimeStamp"

    invoke-virtual {p0, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2090
    .local v7, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v7, :cond_1

    .line 2093
    :cond_0
    return-wide v12

    .line 2091
    :cond_1
    sget-object v8, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2092
    sget-object v8, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 2090
    if-nez v8, :cond_0

    .line 2096
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2098
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2100
    .local v6, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "ExifInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getGpsDateTime: Formatter TimeZone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_3
    sget-object v8, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v1, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 2102
    .local v2, "datetime":Ljava/util/Date;
    if-nez v2, :cond_4

    return-wide v12

    .line 2109
    :cond_4
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2110
    .local v4, "gpsTime":J
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "ExifInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getGpsDateTime: gpsTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    :cond_5
    return-wide v4

    .line 2113
    .end local v2    # "datetime":Ljava/util/Date;
    .end local v4    # "gpsTime":J
    :catch_0
    move-exception v3

    .line 2114
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v12
.end method

.method public getLatLong([F)Z
    .locals 9
    .param p1, "output"    # [F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1990
    const-string/jumbo v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1991
    .local v2, "latValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1992
    .local v1, "latRef":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1993
    .local v4, "lngValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1995
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1997
    :try_start_0
    invoke-static {v2, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 1998
    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    return v8

    .line 2000
    :catch_0
    move-exception v0

    .line 2005
    :cond_0
    return v7
.end method

.method public getThumbnail()[B
    .locals 2

    .prologue
    .line 1858
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1859
    :cond_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0

    .line 1861
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1921
    iget-boolean v7, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_0

    .line 1922
    return-object v10

    .line 1923
    :cond_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v7, :cond_1

    .line 1924
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v7

    iput-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1927
    :cond_1
    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3

    .line 1928
    :cond_2
    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    iget v8, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v7, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 1929
    :cond_3
    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1930
    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    new-array v6, v7, [I

    .line 1931
    .local v6, "rgbValues":[I
    const/4 v0, 0x0

    .line 1932
    .local v0, "alpha":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_4

    .line 1933
    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v8, v1, 0x3

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x0

    .line 1934
    iget-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x8

    .line 1933
    add-int/2addr v7, v8

    .line 1934
    iget-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    .line 1933
    add-int/2addr v7, v8

    aput v7, v6, v1

    .line 1932
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1938
    :cond_4
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v11

    const-string/jumbo v8, "ImageLength"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 1940
    .local v3, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v11

    const-string/jumbo v8, "ImageWidth"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    .line 1941
    .local v5, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    .line 1942
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 1943
    .local v2, "imageLength":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 1945
    .local v4, "imageWidth":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1944
    invoke-static {v6, v4, v2, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 1948
    .end local v0    # "alpha":B
    .end local v1    # "i":I
    .end local v2    # "imageLength":I
    .end local v3    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v4    # "imageWidth":I
    .end local v5    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "rgbValues":[I
    :cond_5
    return-object v10
.end method

.method public getThumbnailBytes()[B
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1869
    iget-boolean v5, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v5, :cond_0

    .line 1870
    return-object v10

    .line 1872
    :cond_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v5, :cond_1

    .line 1873
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-object v5

    .line 1877
    :cond_1
    const/4 v3, 0x0

    .line 1879
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v5, :cond_4

    .line 1880
    iget-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1881
    .local v3, "in":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1882
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 1894
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    if-nez v3, :cond_6

    .line 1896
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    :catch_0
    move-exception v1

    .line 1909
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "ExifInterface"

    const-string/jumbo v6, "Encountered exception while getting thumbnail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1913
    return-object v10

    .line 1884
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_3
    :try_start_2
    const-string/jumbo v5, "ExifInterface"

    const-string/jumbo v6, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1911
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1885
    return-object v10

    .line 1887
    .local v3, "in":Ljava/io/InputStream;
    :cond_4
    :try_start_3
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1888
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v4, "in":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    goto :goto_0

    .line 1889
    .local v3, "in":Ljava/io/InputStream;
    :cond_5
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v5, :cond_2

    .line 1890
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1891
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    const-wide/16 v6, 0x0

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v2, v6, v7, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1892
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .restart local v4    # "in":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    goto :goto_0

    .line 1898
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_6
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    .line 1899
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1910
    :catchall_0
    move-exception v5

    .line 1911
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1910
    throw v5

    .line 1901
    :cond_7
    :try_start_4
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v0, v5, [B

    .line 1902
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-eq v5, v6, :cond_8

    .line 1903
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1905
    :cond_8
    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1911
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1906
    return-object v0
.end method

.method public getThumbnailRange()[J
    .locals 4

    .prologue
    .line 1973
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v1, :cond_0

    .line 1974
    const/4 v1, 0x0

    return-object v1

    .line 1977
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 1978
    .local v0, "range":[J
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v1

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 1979
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 1981
    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 1848
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1956
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v0, :cond_0

    .line 1957
    return v2

    .line 1959
    :cond_0
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 1960
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1962
    :cond_2
    return v2
.end method

.method public saveAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1784
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v8, :cond_0

    iget v8, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 1785
    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1787
    :cond_1
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1788
    :cond_2
    new-instance v8, Ljava/io/IOException;

    .line 1789
    const-string/jumbo v9, "ExifInterface does not support saving attributes for the current input."

    .line 1788
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1793
    :cond_3
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v8

    iput-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1795
    const/4 v1, 0x0

    .line 1796
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1797
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 1800
    .local v6, "tempFile":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1801
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    .end local v6    # "tempFile":Ljava/io/File;
    .local v7, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1803
    .local v3, "originalFile":Ljava/io/File;
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1804
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could\'nt rename to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1813
    .end local v3    # "originalFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    move-object v6, v7

    .line 1814
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "tempFile":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1815
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v8

    .line 1816
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1817
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1815
    throw v8

    .line 1806
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_3
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_5

    .line 1807
    const-string/jumbo v8, "temp"

    const-string/jumbo v9, "jpg"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1808
    .local v6, "tempFile":Ljava/io/File;
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1809
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1810
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1811
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {v2, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .end local v4    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 1816
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "tempFile":Ljava/io/File;
    :cond_5
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1817
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1820
    const/4 v1, 0x0

    .line 1821
    .restart local v1    # "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1824
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1825
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :try_start_7
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 1826
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 1831
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_6
    :goto_3
    invoke-direct {p0, v2, v4}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1835
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1836
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1837
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1841
    iput-object v12, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1842
    return-void

    .line 1827
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_8
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_6

    .line 1828
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1829
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1832
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1833
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1834
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_1
    move-exception v8

    .line 1835
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1836
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1837
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1834
    throw v8

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1832
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1815
    .end local v0    # "e":Landroid/system/ErrnoException;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1813
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v3    # "originalFile":Ljava/io/File;
    .local v4, "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :cond_8
    move-object v6, v7

    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1511
    if-eqz p2, :cond_1

    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1512
    const-string/jumbo v3, "GPSTimeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1513
    sget-object v3, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 1514
    .local v19, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1515
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void

    .line 1518
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1519
    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1519
    const-string/jumbo v4, "/1"

    .line 1518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1531
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v15, v3, :cond_14

    .line 1532
    const/4 v3, 0x4

    if-ne v15, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 1531
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1522
    .end local v15    # "i":I
    :cond_3
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 1523
    .local v10, "doubleValue":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v10

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/10000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 1524
    .end local v10    # "doubleValue":D
    :catch_0
    move-exception v12

    .line 1525
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return-void

    .line 1535
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "i":I
    :cond_4
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1536
    .local v21, "obj":Ljava/lang/Object;
    if-eqz v21, :cond_2

    .line 1537
    if-nez p2, :cond_5

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object/from16 v13, v21

    .line 1541
    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    .line 1542
    .local v13, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 1544
    .local v14, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_6

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_7

    .line 1545
    :cond_6
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1562
    .local v2, "dataFormat":I
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 1637
    :pswitch_0
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1546
    .end local v2    # "dataFormat":I
    :cond_7
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_8

    .line 1547
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_9

    .line 1548
    :cond_8
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_3

    .line 1549
    .end local v2    # "dataFormat":I
    :cond_9
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    .line 1550
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    .line 1552
    :cond_a
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_3

    .line 1551
    .end local v2    # "dataFormat":I
    :cond_b
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 1554
    const-string/jumbo v4, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Given tag ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") value didn\'t match with one of expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1555
    const-string/jumbo v5, "formats: "

    .line 1554
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1555
    sget-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v6, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v5, v5, v6

    .line 1554
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1556
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_c

    const-string/jumbo v3, ""

    .line 1554
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1557
    const-string/jumbo v5, " (guess: "

    .line 1554
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1558
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    .line 1554
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1558
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_d

    const-string/jumbo v3, ""

    .line 1554
    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1559
    const-string/jumbo v5, ")"

    .line 1554
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1556
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1557
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v6, v6, v7

    .line 1556
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1558
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1559
    sget-object v7, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v7, v3

    .line 1558
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1564
    .restart local v2    # "dataFormat":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1569
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1573
    :pswitch_3
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1574
    .local v23, "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1575
    .local v16, "intArray":[I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_6
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_e

    .line 1576
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1575
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1578
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1579
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1578
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1583
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1584
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1585
    .restart local v16    # "intArray":[I
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_7
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_f

    .line 1586
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1585
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1588
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1588
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1593
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1594
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 1595
    .local v18, "longArray":[J
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_8
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    .line 1596
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v18, v17

    .line 1595
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1598
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1598
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1603
    .end local v17    # "j":I
    .end local v18    # "longArray":[J
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1604
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1605
    .local v22, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_9
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_11

    .line 1606
    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1607
    .local v20, "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    .line 1608
    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    .line 1607
    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    .line 1605
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1610
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1611
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1610
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1615
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1616
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1617
    .restart local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_a
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    .line 1618
    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1619
    .restart local v20    # "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    .line 1620
    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    .line 1619
    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    .line 1617
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1622
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1623
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1622
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1627
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1628
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v9, v3, [D

    .line 1629
    .local v9, "doubleArray":[D
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_b
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_13

    .line 1630
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v9, v17

    .line 1629
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 1632
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1633
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v4}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1632
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1642
    .end local v2    # "dataFormat":I
    .end local v9    # "doubleArray":[D
    .end local v13    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .end local v14    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v17    # "j":I
    .end local v21    # "obj":Ljava/lang/Object;
    .end local v23    # "values":[Ljava/lang/String;
    :cond_14
    return-void

    .line 1562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
