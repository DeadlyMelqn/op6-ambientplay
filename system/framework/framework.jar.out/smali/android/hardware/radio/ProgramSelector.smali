.class public final Landroid/hardware/radio/ProgramSelector;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramSelector$1;,
        Landroid/hardware/radio/ProgramSelector$Identifier;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/ProgramSelector;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTIFIER_TYPE_AMFM_FREQUENCY:I = 0x1

.field public static final IDENTIFIER_TYPE_DAB_ENSEMBLE:I = 0x6

.field public static final IDENTIFIER_TYPE_DAB_FREQUENCY:I = 0x8

.field public static final IDENTIFIER_TYPE_DAB_SCID:I = 0x7

.field public static final IDENTIFIER_TYPE_DAB_SIDECC:I = 0x5

.field public static final IDENTIFIER_TYPE_DRMO_FREQUENCY:I = 0xa

.field public static final IDENTIFIER_TYPE_DRMO_MODULATION:I = 0xb

.field public static final IDENTIFIER_TYPE_DRMO_SERVICE_ID:I = 0x9

.field public static final IDENTIFIER_TYPE_HD_STATION_ID_EXT:I = 0x3

.field public static final IDENTIFIER_TYPE_HD_SUBCHANNEL:I = 0x4

.field public static final IDENTIFIER_TYPE_RDS_PI:I = 0x2

.field public static final IDENTIFIER_TYPE_SXM_CHANNEL:I = 0xd

.field public static final IDENTIFIER_TYPE_SXM_SERVICE_ID:I = 0xc

.field public static final IDENTIFIER_TYPE_VENDOR_PRIMARY_END:I = 0x7cf

.field public static final IDENTIFIER_TYPE_VENDOR_PRIMARY_START:I = 0x3e8

.field public static final PROGRAM_TYPE_AM:I = 0x1

.field public static final PROGRAM_TYPE_AM_HD:I = 0x3

.field public static final PROGRAM_TYPE_DAB:I = 0x5

.field public static final PROGRAM_TYPE_DRMO:I = 0x6

.field public static final PROGRAM_TYPE_FM:I = 0x2

.field public static final PROGRAM_TYPE_FM_HD:I = 0x4

.field public static final PROGRAM_TYPE_SXM:I = 0x7

.field public static final PROGRAM_TYPE_VENDOR_END:I = 0x7cf

.field public static final PROGRAM_TYPE_VENDOR_START:I = 0x3e8


# instance fields
.field private final mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mProgramType:I

.field private final mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mVendorIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Landroid/hardware/radio/ProgramSelector$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$1;-><init>()V

    .line 404
    sput-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method public constructor <init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V
    .locals 2
    .param p1, "programType"    # I
    .param p2, "primaryId"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p3, "secondaryIds"    # [Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p4, "vendorIds"    # [J

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    if-nez p3, :cond_0

    new-array p3, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 190
    :cond_0
    if-nez p4, :cond_1

    new-array p4, v0, [J

    .line 191
    :cond_1
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$INST$0:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    iput p1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 195
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 196
    iput-object p3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 197
    iput-object p4, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 198
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 383
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 384
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 385
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$INST$1:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/hardware/radio/ProgramSelector;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;
    .locals 1
    .param p0, "band"    # I
    .param p1, "frequencyKhz"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    return-object v0
.end method

.method public static createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;
    .locals 10
    .param p0, "band"    # I
    .param p1, "frequencyKhz"    # I
    .param p2, "subChannel"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 323
    if-eqz p0, :cond_0

    if-ne p0, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 324
    .local v0, "isAm":Z
    :goto_0
    if-eq p0, v5, :cond_1

    const/4 v5, 0x2

    if-ne p0, v5, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 325
    .local v1, "isDigital":Z
    :goto_1
    if-nez v0, :cond_4

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_4

    if-eq p0, v8, :cond_4

    .line 326
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown band: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 323
    .end local v0    # "isAm":Z
    .end local v1    # "isDigital":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isAm":Z
    goto :goto_0

    .line 324
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isDigital":Z
    goto :goto_1

    .line 328
    :cond_4
    if-ltz p2, :cond_5

    const/16 v5, 0x8

    if-le p2, v5, :cond_6

    .line 329
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid subchannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 331
    :cond_6
    if-lez p2, :cond_7

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_7

    .line 332
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Subchannels are not supported for non-HD radio"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 334
    :cond_7
    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->isValidAmFmFrequency(ZI)Z

    move-result v5

    if-nez v5, :cond_8

    .line 335
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Provided value is not a valid AM/FM frequency"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_8
    if-eqz v0, :cond_a

    const/4 v3, 0x1

    .line 340
    .local v3, "programType":I
    :goto_2
    new-instance v2, Landroid/hardware/radio/ProgramSelector$Identifier;

    int-to-long v6, p1

    invoke-direct {v2, v8, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    .line 342
    .local v2, "primary":Landroid/hardware/radio/ProgramSelector$Identifier;
    const/4 v4, 0x0

    .line 343
    .local v4, "secondary":[Landroid/hardware/radio/ProgramSelector$Identifier;
    if-lez p2, :cond_9

    .line 349
    new-array v4, v8, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 350
    .end local v4    # "secondary":[Landroid/hardware/radio/ProgramSelector$Identifier;
    new-instance v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    add-int/lit8 v6, p2, -0x1

    int-to-long v6, v6

    const/4 v8, 0x4

    invoke-direct {v5, v8, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    aput-object v5, v4, v9

    .line 353
    :cond_9
    new-instance v5, Landroid/hardware/radio/ProgramSelector;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v4, v6}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v5

    .line 339
    .end local v2    # "primary":Landroid/hardware/radio/ProgramSelector$Identifier;
    .end local v3    # "programType":I
    :cond_a
    const/4 v3, 0x2

    .restart local v3    # "programType":I
    goto :goto_2
.end method

.method private static isValidAmFmFrequency(ZI)Z
    .locals 3
    .param p0, "isAm"    # Z
    .param p1, "frequencyKhz"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    if-eqz p0, :cond_1

    .line 302
    const/16 v2, 0x96

    if-le p1, v2, :cond_0

    const/16 v2, 0x7530

    if-ge p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 304
    :cond_1
    const v2, 0xea60

    if-le p1, v2, :cond_2

    const v2, 0x1adb0

    if-ge p1, v2, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method static synthetic lambda$-android_hardware_radio_ProgramSelector_14965(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 1
    .param p0, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .prologue
    .line 385
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-android_hardware_radio_ProgramSelector_7454(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 1
    .param p0, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .prologue
    .line 191
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 374
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 375
    :cond_0
    instance-of v2, p1, Landroid/hardware/radio/ProgramSelector;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 376
    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    .line 378
    .local v0, "other":Landroid/hardware/radio/ProgramSelector;
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getProgramType()I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getAllIds(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 261
    .local v0, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v2
.end method

.method public getFirstId(I)J
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 240
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v2

    return-wide v2

    .line 241
    :cond_0
    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 242
    .local v0, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v2

    return-wide v2

    .line 241
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getProgramType()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    return v0
.end method

.method public getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getVendorIds()[J
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ProgramSelector(type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string/jumbo v2, ", primary="

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v1

    if-lez v1, :cond_0

    const-string/jumbo v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    array-length v1, v1

    if-lez v1, :cond_1

    const-string/jumbo v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    :cond_1
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 393
    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 395
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 396
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 397
    return-void
.end method
