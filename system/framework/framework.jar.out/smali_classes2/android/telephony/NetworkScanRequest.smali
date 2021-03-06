.class public final Landroid/telephony/NetworkScanRequest;
.super Ljava/lang/Object;
.source "NetworkScanRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkScanRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/NetworkScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_BANDS:I = 0x8

.field public static final MAX_CHANNELS:I = 0x20

.field public static final MAX_RADIO_ACCESS_NETWORKS:I = 0x8

.field public static final SCAN_TYPE_ONE_SHOT:I = 0x0

.field public static final SCAN_TYPE_PERIODIC:I = 0x1


# instance fields
.field public scanType:I

.field public specifiers:[Landroid/telephony/RadioAccessSpecifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Landroid/telephony/NetworkScanRequest$1;

    invoke-direct {v0}, Landroid/telephony/NetworkScanRequest$1;-><init>()V

    .line 111
    sput-object v0, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>(I[Landroid/telephony/RadioAccessSpecifier;)V
    .locals 0
    .param p1, "scanType"    # I
    .param p2, "specifiers"    # [Landroid/telephony/RadioAccessSpecifier;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 66
    iput-object p2, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 83
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    const-class v1, Landroid/telephony/RadioAccessSpecifier;

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/telephony/RadioAccessSpecifier;

    iput-object v0, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/NetworkScanRequest;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/telephony/NetworkScanRequest;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/NetworkScanRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/NetworkScanRequest;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v2, "nsr":Landroid/telephony/NetworkScanRequest;
    if-nez p1, :cond_0

    .line 98
    return v3

    .line 93
    .end local v2    # "nsr":Landroid/telephony/NetworkScanRequest;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 101
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "nsr":Landroid/telephony/NetworkScanRequest;
    :cond_0
    iget v4, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    iget v5, v2, Landroid/telephony/NetworkScanRequest;->scanType:I

    if-ne v4, v5, :cond_1

    .line 102
    iget-object v3, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    iget-object v4, v2, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 101
    :cond_1
    return v3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v1, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    .line 107
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 78
    return-void
.end method
