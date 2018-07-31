.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$1;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GALILEO_SVID_OFFSET:I = 0x12c

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0x154

.field private static final SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method static synthetic -get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Landroid/location/GpsStatus;

    .prologue
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 156
    return-void
.end method

.method private clearSatellites()V
    .locals 4

    .prologue
    .line 261
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 262
    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 263
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 264
    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method

.method private setStatus(I[I[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 160
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 161
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_a

    .line 163
    aget v5, p2, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v0, v5, 0xf

    .line 165
    .local v0, "constellationType":I
    aget v5, p2, v2

    shr-int/lit8 v3, v5, 0x8

    .line 172
    .local v3, "prn":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 173
    add-int/lit8 v3, v3, 0x40

    .line 187
    :cond_0
    :goto_1
    if-lez v3, :cond_2

    const/16 v5, 0x154

    if-gt v3, v5, :cond_2

    .line 190
    :try_start_0
    iget-object v5, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    .line 191
    .local v4, "satellite":Landroid/location/GpsSatellite;
    if-nez v4, :cond_1

    .line 192
    new-instance v4, Landroid/location/GpsSatellite;

    .end local v4    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v4, v3}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 193
    .restart local v4    # "satellite":Landroid/location/GpsSatellite;
    iget-object v5, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mValid:Z

    .line 197
    aget v5, p3, v2

    iput v5, v4, Landroid/location/GpsSatellite;->mSnr:F

    .line 198
    aget v5, p4, v2

    iput v5, v4, Landroid/location/GpsSatellite;->mElevation:F

    .line 199
    aget v5, p5, v2

    iput v5, v4, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 201
    aget v5, p2, v2

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    move v5, v6

    .line 200
    :goto_2
    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 203
    aget v5, p2, v2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    move v5, v6

    .line 202
    :goto_3
    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 205
    aget v5, p2, v2

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9

    move v5, v6

    .line 204
    :goto_4
    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v4    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_3
    const/4 v5, 0x5

    if-ne v0, v5, :cond_4

    .line 175
    add-int/lit16 v3, v3, 0xc8

    goto :goto_1

    .line 176
    :cond_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    .line 177
    add-int/lit8 v3, v3, -0x57

    goto :goto_1

    .line 180
    :cond_5
    const/4 v5, 0x6

    if-ne v0, v5, :cond_6

    .line 181
    add-int/lit16 v3, v3, 0x12c

    goto :goto_1

    .line 183
    :cond_6
    if-eq v0, v6, :cond_0

    .line 184
    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto :goto_5

    .restart local v4    # "satellite":Landroid/location/GpsSatellite;
    :cond_7
    move v5, v7

    .line 201
    goto :goto_2

    :cond_8
    move v5, v7

    .line 203
    goto :goto_3

    :cond_9
    move v5, v7

    .line 205
    goto :goto_4

    .line 206
    .end local v4    # "satellite":Landroid/location/GpsSatellite;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "GpsStatus"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 212
    .end local v0    # "constellationType":I
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "prn":I
    :cond_a
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x154

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method setStatus(Landroid/location/GnssStatus;I)V
    .locals 6
    .param p1, "status"    # Landroid/location/GnssStatus;
    .param p2, "timeToFirstFix"    # I

    .prologue
    .line 221
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 222
    iget v1, p1, Landroid/location/GnssStatus;->mSvCount:I

    iget-object v2, p1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iget-object v3, p1, Landroid/location/GnssStatus;->mCn0DbHz:[F

    iget-object v4, p1, Landroid/location/GnssStatus;->mElevations:[F

    .line 223
    iget-object v5, p1, Landroid/location/GnssStatus;->mAzimuths:[F

    move-object v0, p0

    .line 222
    invoke-direct/range {v0 .. v5}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F)V

    .line 224
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 227
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 228
    return-void
.end method
