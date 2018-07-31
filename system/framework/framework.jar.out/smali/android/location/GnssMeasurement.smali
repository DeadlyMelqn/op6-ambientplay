.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$1;
    }
.end annotation


# static fields
.field private static final ADR_ALL:I = 0x7

.field public static final ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final ADR_STATE_RESET:I = 0x2

.field public static final ADR_STATE_UNKNOWN:I = 0x0

.field public static final ADR_STATE_VALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_SNR:I = 0x1

.field public static final MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field private static final STATE_ALL:I = 0x3fff

.field public static final STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final STATE_BIT_SYNC:I = 0x2

.field public static final STATE_CODE_LOCK:I = 0x1

.field public static final STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final STATE_GLO_STRING_SYNC:I = 0x40

.field public static final STATE_GLO_TOD_DECODED:I = 0x80

.field public static final STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final STATE_SBAS_SYNC:I = 0x2000

.field public static final STATE_SUBFRAME_SYNC:I = 0x4

.field public static final STATE_SYMBOL_SYNC:I = 0x20

.field public static final STATE_TOW_DECODED:I = 0x8

.field public static final STATE_TOW_KNOWN:I = 0x4000

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mAccumulatedDeltaRangeMeters:D

.field private mAccumulatedDeltaRangeState:I

.field private mAccumulatedDeltaRangeUncertaintyMeters:D

.field private mAutomaticGainControlLevelInDb:D

.field private mCarrierCycles:J

.field private mCarrierFrequencyHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0DbHz:D

.field private mConstellationType:I

.field private mFlags:I

.field private mMultipathIndicator:I

.field private mPseudorangeRateMetersPerSecond:D

.field private mPseudorangeRateUncertaintyMetersPerSecond:D

.field private mReceivedSvTimeNanos:J

.field private mReceivedSvTimeUncertaintyNanos:J

.field private mSnrInDb:D

.field private mState:I

.field private mSvid:I

.field private mTimeOffsetNanos:D


# direct methods
.method static synthetic -set0(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GnssMeasurement;I)I
    .locals 0
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return p1
.end method

.method static synthetic -set10(Landroid/location/GnssMeasurement;I)I
    .locals 0
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return p1
.end method

.method static synthetic -set11(Landroid/location/GnssMeasurement;I)I
    .locals 0
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return p1
.end method

.method static synthetic -set12(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide p1
.end method

.method static synthetic -set13(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide p1
.end method

.method static synthetic -set14(Landroid/location/GnssMeasurement;J)J
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide p1
.end method

.method static synthetic -set15(Landroid/location/GnssMeasurement;J)J
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide p1
.end method

.method static synthetic -set16(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic -set17(Landroid/location/GnssMeasurement;I)I
    .locals 0
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return p1
.end method

.method static synthetic -set18(Landroid/location/GnssMeasurement;I)I
    .locals 0
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return p1
.end method

.method static synthetic -set19(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GnssMeasurement;J)J
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic -set5(Landroid/location/GnssMeasurement;F)F
    .locals 0
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return p1
.end method

.method static synthetic -set6(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/GnssMeasurement;D)D
    .locals 1
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GnssMeasurement;I)I
    .locals 0
    .param p0, "-this"    # Landroid/location/GnssMeasurement;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 939
    new-instance v0, Landroid/location/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 168
    return-void
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 579
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    if-nez v2, :cond_0

    .line 580
    const-string/jumbo v2, "Unknown"

    return-object v2

    .line 582
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 584
    const-string/jumbo v2, "Valid|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_1
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 587
    const-string/jumbo v2, "Reset|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_2
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 590
    const-string/jumbo v2, "CycleSlip|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_3
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v1, v2, -0x8

    .line 593
    .local v1, "remainingStates":I
    if-lez v1, :cond_4

    .line 594
    const-string/jumbo v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string/jumbo v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 844
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    packed-switch v0, :pswitch_data_0

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 846
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 848
    :pswitch_1
    const-string/jumbo v0, "Detected"

    return-object v0

    .line 850
    :pswitch_2
    const-string/jumbo v0, "NotDetected"

    return-object v0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    if-nez v2, :cond_0

    .line 301
    const-string/jumbo v2, "Unknown"

    return-object v2

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 306
    const-string/jumbo v2, "CodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_1
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 309
    const-string/jumbo v2, "BitSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_2
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 312
    const-string/jumbo v2, "SubframeSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_3
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 315
    const-string/jumbo v2, "TowDecoded|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_4
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_5

    .line 318
    const-string/jumbo v2, "TowKnown|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_5
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 321
    const-string/jumbo v2, "MsecAmbiguous|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_6
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7

    .line 324
    const-string/jumbo v2, "SymbolSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_7
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 327
    const-string/jumbo v2, "GloStringSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_8
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_9

    .line 330
    const-string/jumbo v2, "GloTodDecoded|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_9
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 333
    const-string/jumbo v2, "GloTodKnown|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_a
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 336
    const-string/jumbo v2, "BdsD2BitSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_b
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_c

    .line 339
    const-string/jumbo v2, "BdsD2SubframeSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_c
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_d

    .line 342
    const-string/jumbo v2, "GalE1bcCodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_d
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_e

    .line 345
    const-string/jumbo v2, "E1c2ndCodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_e
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_f

    .line 348
    const-string/jumbo v2, "GalE1bPageSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_f
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_10

    .line 351
    const-string/jumbo v2, "SbasSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_10
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v2, -0x4000

    .line 355
    .local v1, "remainingStates":I
    if-lez v1, :cond_11

    .line 356
    const-string/jumbo v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string/jumbo v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x1

    .line 1075
    iput v4, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 1076
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setSvid(I)V

    .line 1077
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    .line 1078
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setState(I)V

    .line 1079
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    .line 1080
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    .line 1081
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    .line 1082
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    .line 1083
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    .line 1084
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    .line 1085
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    .line 1086
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    .line 1087
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    .line 1088
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    .line 1089
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    .line 1090
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    .line 1091
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    .line 1092
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    .line 1093
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetAutomaticGainControlLevel()V

    .line 1094
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1105
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 1101
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 1102
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1097
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 1098
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeMeters()D
    .locals 2

    .prologue
    .line 617
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyMeters()D
    .locals 2

    .prologue
    .line 637
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide v0
.end method

.method public getAutomaticGainControlLevelDb()D
    .locals 2

    .prologue
    .line 916
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide v0
.end method

.method public getCarrierCycles()J
    .locals 2

    .prologue
    .line 715
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyHz()F
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .locals 2

    .prologue
    .line 759
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    .prologue
    .line 798
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0DbHz()D
    .locals 2

    .prologue
    .line 495
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide v0
.end method

.method public getConstellationType()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return v0
.end method

.method public getMultipathIndicator()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return v0
.end method

.method public getPseudorangeRateMetersPerSecond()D
    .locals 2

    .prologue
    .line 524
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyMetersPerSecond()D
    .locals 2

    .prologue
    .line 542
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide v0
.end method

.method public getReceivedSvTimeNanos()J
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide v0
.end method

.method public getReceivedSvTimeUncertaintyNanos()J
    .locals 2

    .prologue
    .line 475
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    .prologue
    .line 869
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return v0
.end method

.method public getTimeOffsetNanos()D
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide v0
.end method

.method public hasAutomaticGainControlLevelDb()Z
    .locals 1

    .prologue
    .line 897
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    .prologue
    .line 704
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyHz()Z
    .locals 1

    .prologue
    .line 657
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    .prologue
    .line 742
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    .prologue
    .line 787
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 207
    return-void
.end method

.method public resetAutomaticGainControlLevel()V
    .locals 2

    .prologue
    .line 935
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 936
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 937
    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2

    .prologue
    .line 734
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 735
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 736
    return-void
.end method

.method public resetCarrierFrequencyHz()V
    .locals 1

    .prologue
    .line 696
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 697
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 698
    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2

    .prologue
    .line 778
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 779
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 780
    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2

    .prologue
    .line 817
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 818
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 819
    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    .prologue
    .line 888
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 889
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 890
    return-void
.end method

.method public set(Landroid/location/GnssMeasurement;)V
    .locals 2
    .param p1, "measurement"    # Landroid/location/GnssMeasurement;

    .prologue
    .line 176
    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 177
    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 178
    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 179
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 180
    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 181
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 182
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 183
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 184
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 186
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 185
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 187
    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 188
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 190
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 189
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 191
    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 192
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 193
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 194
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 195
    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 196
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 197
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 198
    return-void
.end method

.method public setAccumulatedDeltaRangeMeters(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 626
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 627
    return-void
.end method

.method public setAccumulatedDeltaRangeState(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 570
    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 571
    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 649
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 650
    return-void
.end method

.method public setAutomaticGainControlLevelInDb(D)V
    .locals 1
    .param p1, "agcLevelDb"    # D

    .prologue
    .line 925
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 926
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 927
    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 724
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 725
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 726
    return-void
.end method

.method public setCarrierFrequencyHz(F)V
    .locals 1
    .param p1, "carrierFrequencyHz"    # F

    .prologue
    .line 686
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 687
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 688
    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 768
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 769
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 770
    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 807
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 808
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 809
    return-void
.end method

.method public setCn0DbHz(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 504
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 505
    return-void
.end method

.method public setConstellationType(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 245
    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 246
    return-void
.end method

.method public setMultipathIndicator(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 835
    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 836
    return-void
.end method

.method public setPseudorangeRateMetersPerSecond(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 533
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 534
    return-void
.end method

.method public setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 551
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 552
    return-void
.end method

.method public setReceivedSvTimeNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 468
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 469
    return-void
.end method

.method public setReceivedSvTimeUncertaintyNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 484
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 485
    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1
    .param p1, "snrInDb"    # D

    .prologue
    .line 878
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 879
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 880
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 291
    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 292
    return-void
.end method

.method public setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 225
    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 226
    return-void
.end method

.method public setTimeOffsetNanos(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 271
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1005
    const-string/jumbo v1, "   %-29s = %s\n"

    .line 1006
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v2, "   %-29s = %-25s   %-40s = %s\n"

    .line 1007
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GnssMeasurement:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Svid"

    aput-object v6, v5, v10

    iget v6, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "ConstellationType"

    aput-object v6, v5, v10

    iget v6, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "TimeOffsetNanos"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "State"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    .line 1015
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 1017
    const-string/jumbo v6, "ReceivedSvTimeNanos"

    aput-object v6, v5, v10

    .line 1018
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    .line 1019
    const-string/jumbo v6, "ReceivedSvTimeUncertaintyNanos"

    aput-object v6, v5, v12

    .line 1020
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1015
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Cn0DbHz"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    .line 1024
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 1026
    const-string/jumbo v6, "PseudorangeRateMetersPerSecond"

    aput-object v6, v5, v10

    .line 1027
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    .line 1028
    const-string/jumbo v6, "PseudorangeRateUncertaintyMetersPerSecond"

    aput-object v6, v5, v12

    .line 1029
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1024
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string/jumbo v3, "   %-29s = %s\n"

    .line 1031
    new-array v5, v12, [Ljava/lang/Object;

    .line 1033
    const-string/jumbo v6, "AccumulatedDeltaRangeState"

    aput-object v6, v5, v10

    .line 1034
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 1031
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    .line 1036
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 1038
    const-string/jumbo v6, "AccumulatedDeltaRangeMeters"

    aput-object v6, v5, v10

    .line 1039
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    .line 1040
    const-string/jumbo v6, "AccumulatedDeltaRangeUncertaintyMeters"

    aput-object v6, v5, v12

    .line 1041
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1036
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    const-string/jumbo v5, "   %-29s = %s\n"

    .line 1043
    new-array v6, v12, [Ljava/lang/Object;

    .line 1045
    const-string/jumbo v3, "CarrierFrequencyHz"

    aput-object v3, v6, v10

    .line 1046
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_0
    aput-object v3, v6, v11

    .line 1043
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    const-string/jumbo v5, "   %-29s = %s\n"

    .line 1048
    new-array v6, v12, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v3, "CarrierCycles"

    aput-object v3, v6, v10

    .line 1051
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v11

    .line 1048
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    .line 1053
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    .line 1055
    const-string/jumbo v3, "CarrierPhase"

    aput-object v3, v6, v10

    .line 1056
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v11

    .line 1057
    const-string/jumbo v3, "CarrierPhaseUncertainty"

    aput-object v3, v6, v12

    .line 1058
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_3
    aput-object v3, v6, v13

    .line 1053
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "MultipathIndicator"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string/jumbo v5, "   %-29s = %s\n"

    .line 1062
    new-array v6, v12, [Ljava/lang/Object;

    .line 1064
    const-string/jumbo v3, "SnrInDb"

    aput-object v3, v6, v10

    .line 1065
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_4
    aput-object v3, v6, v11

    .line 1062
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const-string/jumbo v3, "   %-29s = %s\n"

    .line 1066
    new-array v5, v12, [Ljava/lang/Object;

    .line 1068
    const-string/jumbo v6, "AgcLevelDb"

    aput-object v6, v5, v10

    .line 1069
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasAutomaticGainControlLevelDb()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_0
    aput-object v4, v5, v11

    .line 1066
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    move-object v3, v4

    .line 1046
    goto/16 :goto_0

    :cond_2
    move-object v3, v4

    .line 1051
    goto/16 :goto_1

    :cond_3
    move-object v3, v4

    .line 1056
    goto :goto_2

    :cond_4
    move-object v3, v4

    .line 1058
    goto :goto_3

    :cond_5
    move-object v3, v4

    .line 1065
    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 976
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 980
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 982
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 983
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 984
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 985
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 986
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 988
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 989
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 990
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 991
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 992
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 993
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 995
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 996
    return-void
.end method
