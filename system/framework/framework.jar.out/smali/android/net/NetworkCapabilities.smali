.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CAPABILITIES:J = 0xe000L

.field private static final MAX_NET_CAPABILITY:I = 0x12

.field public static final MAX_TRANSPORT:I = 0x6

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field public static final MIN_TRANSPORT:I = 0x0

.field private static final MUTABLE_CAPABILITIES:J = 0x74000L

.field public static final NET_CAPABILITY_CAPTIVE_PORTAL:I = 0x11

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_FOREGROUND:I = 0x12

.field public static final NET_CAPABILITY_FOTA:I = 0x3

.field public static final NET_CAPABILITY_IA:I = 0x7

.field public static final NET_CAPABILITY_IMS:I = 0x4

.field public static final NET_CAPABILITY_INTERNET:I = 0xc

.field public static final NET_CAPABILITY_MMS:I = 0x0

.field public static final NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final NET_CAPABILITY_RCS:I = 0x8

.field public static final NET_CAPABILITY_SUPL:I = 0x1

.field public static final NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final NET_CAPABILITY_VALIDATED:I = 0x10

.field public static final NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final NET_CAPABILITY_XCAP:I = 0x9

.field private static final NON_REQUESTABLE_CAPABILITIES:J = 0x70000L

.field static final RESTRICTED_CAPABILITIES:J = 0x7bcL

.field public static final SIGNAL_STRENGTH_UNSPECIFIED:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "NetworkCapabilities"

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_LOWPAN:I = 0x6

.field private static final TRANSPORT_NAMES:[Ljava/lang/String;

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1

.field public static final TRANSPORT_WIFI_AWARE:I = 0x5

.field static final UNRESTRICTED_CAPABILITIES:J = 0x1043L


# instance fields
.field private mLinkDownBandwidthKbps:I

.field private mLinkUpBandwidthKbps:I

.field private mNetworkCapabilities:J

.field private mNetworkSpecifier:Landroid/net/NetworkSpecifier;

.field private mSignalStrength:I

.field private mTransportTypes:J


# direct methods
.method static synthetic -set0(Landroid/net/NetworkCapabilities;I)I
    .locals 0
    .param p0, "-this"    # Landroid/net/NetworkCapabilities;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return p1
.end method

.method static synthetic -set1(Landroid/net/NetworkCapabilities;I)I
    .locals 0
    .param p0, "-this"    # Landroid/net/NetworkCapabilities;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return p1
.end method

.method static synthetic -set2(Landroid/net/NetworkCapabilities;J)J
    .locals 1
    .param p0, "-this"    # Landroid/net/NetworkCapabilities;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-wide p1
.end method

.method static synthetic -set3(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkSpecifier;
    .locals 0
    .param p0, "-this"    # Landroid/net/NetworkCapabilities;
    .param p1, "-value"    # Landroid/net/NetworkSpecifier;

    .prologue
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/NetworkCapabilities;I)I
    .locals 0
    .param p0, "-this"    # Landroid/net/NetworkCapabilities;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return p1
.end method

.method static synthetic -set5(Landroid/net/NetworkCapabilities;J)J
    .locals 1
    .param p0, "-this"    # Landroid/net/NetworkCapabilities;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 434
    const-string/jumbo v1, "CELLULAR"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 435
    const-string/jumbo v1, "WIFI"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 436
    const-string/jumbo v1, "BLUETOOTH"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 437
    const-string/jumbo v1, "ETHERNET"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 438
    const-string/jumbo v1, "VPN"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 439
    const-string/jumbo v1, "WIFI_AWARE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 440
    const-string/jumbo v1, "LOWPAN"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 433
    sput-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    .line 852
    new-instance v0, Landroid/net/NetworkCapabilities$1;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    .line 851
    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 47
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 48
    const-wide/32 v0, 0xe000

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 54
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 55
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 56
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 57
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 58
    iget v0, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 60
    :cond_0
    return-void
.end method

.method public static capabilityNameOf(I)Ljava/lang/String;
    .locals 1
    .param p0, "capability"    # I

    .prologue
    .line 915
    packed-switch p0, :pswitch_data_0

    .line 935
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 916
    :pswitch_0
    const-string/jumbo v0, "MMS"

    return-object v0

    .line 917
    :pswitch_1
    const-string/jumbo v0, "SUPL"

    return-object v0

    .line 918
    :pswitch_2
    const-string/jumbo v0, "DUN"

    return-object v0

    .line 919
    :pswitch_3
    const-string/jumbo v0, "FOTA"

    return-object v0

    .line 920
    :pswitch_4
    const-string/jumbo v0, "IMS"

    return-object v0

    .line 921
    :pswitch_5
    const-string/jumbo v0, "CBS"

    return-object v0

    .line 922
    :pswitch_6
    const-string/jumbo v0, "WIFI_P2P"

    return-object v0

    .line 923
    :pswitch_7
    const-string/jumbo v0, "IA"

    return-object v0

    .line 924
    :pswitch_8
    const-string/jumbo v0, "RCS"

    return-object v0

    .line 925
    :pswitch_9
    const-string/jumbo v0, "XCAP"

    return-object v0

    .line 926
    :pswitch_a
    const-string/jumbo v0, "EIMS"

    return-object v0

    .line 927
    :pswitch_b
    const-string/jumbo v0, "NOT_METERED"

    return-object v0

    .line 928
    :pswitch_c
    const-string/jumbo v0, "INTERNET"

    return-object v0

    .line 929
    :pswitch_d
    const-string/jumbo v0, "NOT_RESTRICTED"

    return-object v0

    .line 930
    :pswitch_e
    const-string/jumbo v0, "TRUSTED"

    return-object v0

    .line 931
    :pswitch_f
    const-string/jumbo v0, "NOT_VPN"

    return-object v0

    .line 932
    :pswitch_10
    const-string/jumbo v0, "VALIDATED"

    return-object v0

    .line 933
    :pswitch_11
    const-string/jumbo v0, "CAPTIVE_PORTAL"

    return-object v0

    .line 934
    :pswitch_12
    const-string/jumbo v0, "FOREGROUND"

    return-object v0

    .line 915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static capabilityNamesOf([I)Ljava/lang/String;
    .locals 5
    .param p0, "capabilities"    # [I

    .prologue
    .line 902
    new-instance v1, Ljava/util/StringJoiner;

    const-string/jumbo v2, "|"

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 903
    .local v1, "joiner":Ljava/util/StringJoiner;
    if-eqz p0, :cond_0

    .line 904
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 905
    .local v0, "c":I
    invoke-static {v0}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "c":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static checkValidTransportType(I)V
    .locals 3
    .param p0, "transport"    # I

    .prologue
    .line 964
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid TransportType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 965
    return-void
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 580
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 579
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 582
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 581
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 583
    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 315
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 316
    return-void
.end method

.method private combineSignalStrength(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 696
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 697
    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 630
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t combine two networkSpecifiers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 634
    return-void
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 499
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 500
    return-void
.end method

.method private equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v0, 0x0

    .line 589
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-ne v1, v2, :cond_0

    .line 590
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 589
    :cond_0
    return v0
.end method

.method private equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z
    .locals 6
    .param p1, "that"    # Landroid/net/NetworkCapabilities;

    .prologue
    const-wide/32 v4, -0x70001

    .line 352
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v4

    .line 353
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v2, v4

    .line 352
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 704
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 642
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidTransport(I)Z
    .locals 2
    .param p0, "transportType"    # I

    .prologue
    const/4 v0, 0x0

    .line 430
    if-ltz p0, :cond_0

    const/4 v1, 0x6

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v0, 0x0

    .line 585
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-gt v1, v2, :cond_0

    .line 586
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 585
    :cond_0
    return v0
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "onlyImmutable"    # Z

    .prologue
    .line 339
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 340
    .local v0, "networkCapabilities":J
    if-eqz p2, :cond_0

    .line 341
    const-wide/32 v2, -0x74001

    and-long/2addr v0, v2

    .line 343
    :cond_0
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "onlyImmutable"    # Z

    .prologue
    .line 729
    if-eqz p1, :cond_2

    .line 730
    invoke-direct {p0, p1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_2

    .line 731
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_2

    .line 732
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_2

    .line 733
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_2

    .line 734
    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 729
    :goto_0
    return v0

    .line 734
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 729
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 700
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 637
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->satisfiedBy(Landroid/net/NetworkSpecifier;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    instance-of v0, v0, Landroid/net/MatchAllNetworkSpecifier;

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 8
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 503
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 504
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transportNameOf(I)Ljava/lang/String;
    .locals 1
    .param p0, "transport"    # I

    .prologue
    .line 956
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 959
    :cond_0
    sget-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static transportNamesOf([I)Ljava/lang/String;
    .locals 5
    .param p0, "types"    # [I

    .prologue
    .line 943
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v2, "|"

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 944
    .local v0, "joiner":Ljava/util/StringJoiner;
    if-eqz p0, :cond_0

    .line 945
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 946
    .local v1, "t":I
    invoke-static {v1}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v1    # "t":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    .prologue
    .line 268
    if-ltz p1, :cond_0

    const/16 v0, 0x12

    if-le p1, v0, :cond_1

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 272
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    .prologue
    .line 457
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    .line 458
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 459
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 460
    return-object p0
.end method

.method public clearAll()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 68
    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 69
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 71
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 72
    return-void
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 713
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    .line 714
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    .line 715
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    .line 716
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSignalStrength(Landroid/net/NetworkCapabilities;)V

    .line 717
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public describeFirstNonRequestableCapability()Ljava/lang/String;
    .locals 4

    .prologue
    .line 326
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NET_CAPABILITY_VALIDATED"

    return-object v0

    .line 327
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NET_CAPABILITY_CAPTIVE_PORTAL"

    return-object v0

    .line 328
    :cond_1
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NET_CAPABILITY_FOREGROUND"

    return-object v0

    .line 330
    :cond_2
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v2, 0x70000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown non-requestable capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :cond_3
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-nez v0, :cond_4

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "link bandwidth"

    return-object v0

    .line 334
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "signalStrength"

    return-object v0

    .line 335
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 18
    .param p1, "that"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 767
    if-nez p1, :cond_0

    .line 768
    const-string/jumbo v7, "other NetworkCapabilities was null"

    return-object v7

    .line 771
    :cond_0
    new-instance v6, Ljava/util/StringJoiner;

    const-string/jumbo v7, ", "

    invoke-direct {v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 776
    .local v6, "joiner":Ljava/util/StringJoiner;
    const-wide/32 v8, -0x74805

    .line 778
    .local v8, "mask":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v16, -0x74805

    and-long v12, v14, v16

    .line 779
    .local v12, "oldImmutableCapabilities":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v16, -0x74805

    and-long v10, v14, v16

    .line 780
    .local v10, "newImmutableCapabilities":J
    cmp-long v7, v12, v10

    if-eqz v7, :cond_1

    .line 781
    invoke-static {v12, v13}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "before":Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, "after":Ljava/lang/String;
    const-string/jumbo v7, "immutable capabilities changed: %s -> %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 786
    .end local v3    # "after":Ljava/lang/String;
    .end local v5    # "before":Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v4

    .line 788
    .local v4, "before":Landroid/net/NetworkSpecifier;
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    .line 789
    .local v2, "after":Landroid/net/NetworkSpecifier;
    const-string/jumbo v7, "specifier changed: %s -> %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 792
    .end local v2    # "after":Landroid/net/NetworkSpecifier;
    .end local v4    # "before":Landroid/net/NetworkSpecifier;
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5    # "before":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v3

    .line 795
    .restart local v3    # "after":Ljava/lang/String;
    const-string/jumbo v7, "transports changed: %s -> %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 798
    .end local v3    # "after":Ljava/lang/String;
    .end local v5    # "before":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v0, 0x0

    .line 808
    if-nez p1, :cond_0

    return v0

    .line 809
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    .line 809
    if-eqz v1, :cond_1

    .line 811
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 809
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 816
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/net/NetworkCapabilities;

    if-nez v2, :cond_1

    :cond_0
    return v1

    :cond_1
    move-object v0, p1

    .line 817
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 818
    .local v0, "that":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    .line 818
    if-eqz v2, :cond_2

    .line 820
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    .line 818
    if-eqz v2, :cond_2

    .line 821
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    .line 818
    if-eqz v2, :cond_2

    .line 822
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    .line 818
    :cond_2
    return v1
.end method

.method public equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 348
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 509
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCapabilities()[I
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getLinkDownstreamBandwidthKbps()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return v0
.end method

.method public getNetworkSpecifier()Landroid/net/NetworkSpecifier;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return v0
.end method

.method public getTransportTypes()[I
    .locals 2

    .prologue
    .line 485
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .locals 6
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    if-ltz p1, :cond_0

    const/16 v2, 0x12

    if-le p1, v2, :cond_1

    .line 309
    :cond_0
    return v1

    .line 311
    :cond_1
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hasSignalStrength()Z
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransport(I)Z
    .locals 6
    .param p1, "transportType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 495
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/16 v4, 0x20

    .line 827
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v6

    long-to-int v0, v0

    .line 828
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x3

    .line 827
    add-int/2addr v0, v1

    .line 829
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v6

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x5

    .line 827
    add-int/2addr v0, v1

    .line 830
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x7

    .line 827
    add-int/2addr v0, v1

    .line 831
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xb

    .line 827
    add-int/2addr v0, v1

    .line 832
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xd

    .line 827
    add-int/2addr v0, v1

    .line 833
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    .line 827
    add-int/2addr v0, v1

    .line 834
    iget v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    mul-int/lit8 v1, v1, 0x13

    .line 827
    add-int/2addr v0, v1

    return v0
.end method

.method public maybeMarkCapabilitiesRestricted()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 369
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v4, 0x1043

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 373
    .local v1, "hasUnrestrictedCapabilities":Z
    :goto_0
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v4, 0x7bc

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 375
    .local v0, "hasRestrictedCapabilities":Z
    :goto_1
    if-eqz v0, :cond_0

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 376
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 378
    :cond_0
    return-void

    .line 369
    .end local v0    # "hasRestrictedCapabilities":Z
    .end local v1    # "hasUnrestrictedCapabilities":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasUnrestrictedCapabilities":Z
    goto :goto_0

    .line 373
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasRestrictedCapabilities":Z
    goto :goto_1
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    .prologue
    .line 283
    if-ltz p1, :cond_0

    const/16 v0, 0x12

    if-le p1, v0, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 287
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    .prologue
    .line 471
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    .line 472
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 473
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 474
    return-object p0
.end method

.method public satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 756
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 745
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public setLinkDownstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "downKbps"    # I

    .prologue
    .line 565
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 566
    return-void
.end method

.method public setLinkUpstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "upKbps"    # I

    .prologue
    .line 536
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 537
    return-void
.end method

.method public setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "networkSpecifier"    # Landroid/net/NetworkSpecifier;

    .prologue
    .line 608
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must have a single transport specified to use setNetworkSpecifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 615
    return-object p0
.end method

.method public setSignalStrength(I)V
    .locals 0
    .param p1, "signalStrength"    # I

    .prologue
    .line 673
    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 674
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 875
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v6

    .line 876
    .local v6, "types":[I
    array-length v8, v6

    if-lez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Transports: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 878
    .local v5, "transports":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v6

    .line 879
    array-length v8, v6

    if-lez v8, :cond_2

    const-string/jumbo v0, " Capabilities: "

    .line 880
    .local v0, "capabilities":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 881
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v2

    invoke-static {v9}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    add-int/lit8 v2, v2, 0x1

    array-length v8, v6

    if-ge v2, v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 876
    .end local v0    # "capabilities":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "transports":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, ""

    .restart local v5    # "transports":Ljava/lang/String;
    goto :goto_0

    .line 879
    :cond_2
    const-string/jumbo v0, ""

    .restart local v0    # "capabilities":Ljava/lang/String;
    goto :goto_1

    .line 885
    .restart local v2    # "i":I
    :cond_3
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " LinkUpBandwidth>="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 886
    iget v9, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 885
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 886
    const-string/jumbo v9, "Kbps"

    .line 885
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 887
    .local v7, "upBand":Ljava/lang/String;
    :goto_3
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-lez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " LinkDnBandwidth>="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 888
    iget v9, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 887
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 888
    const-string/jumbo v9, "Kbps"

    .line 887
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "dnBand":Ljava/lang/String;
    :goto_4
    iget-object v8, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-nez v8, :cond_6

    .line 891
    const-string/jumbo v4, ""

    .line 893
    .local v4, "specifier":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " SignalStrength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, "signalStrength":Ljava/lang/String;
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 886
    .end local v1    # "dnBand":Ljava/lang/String;
    .end local v3    # "signalStrength":Ljava/lang/String;
    .end local v4    # "specifier":Ljava/lang/String;
    .end local v7    # "upBand":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, ""

    .restart local v7    # "upBand":Ljava/lang/String;
    goto :goto_3

    .line 888
    :cond_5
    const-string/jumbo v1, ""

    .restart local v1    # "dnBand":Ljava/lang/String;
    goto :goto_4

    .line 891
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Specifier: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "specifier":Ljava/lang/String;
    goto :goto_5

    .line 893
    :cond_7
    const-string/jumbo v3, ""

    .restart local v3    # "signalStrength":Ljava/lang/String;
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 843
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 844
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 845
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 848
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    return-void
.end method
