.class public final Lcom/android/internal/telephony/NetworkScanResult;
.super Ljava/lang/Object;
.source "NetworkScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkScanResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/NetworkScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCAN_STATUS_COMPLETE:I = 0x2

.field public static final SCAN_STATUS_PARTIAL:I = 0x1


# instance fields
.field public networkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public scanError:I

.field public scanStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/NetworkScanResult$1;-><init>()V

    .line 115
    sput-object v0, Lcom/android/internal/telephony/NetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "scanStatus"    # I
    .param p2, "scanError"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "networkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    .line 65
    iput p2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 66
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "ni":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/NetworkScanResult;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Lcom/android/internal/telephony/NetworkScanResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(Landroid/os/Parcel;)V

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

    .line 94
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/NetworkScanResult;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v2, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    if-nez p1, :cond_0

    .line 100
    return v3

    .line 95
    .end local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 103
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    iget v5, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    if-ne v4, v5, :cond_1

    .line 104
    iget v4, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    iget v5, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    if-ne v4, v5, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 103
    :cond_1
    return v3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    mul-int/lit8 v1, v1, 0x17

    .line 110
    add-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    .line 110
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 79
    return-void
.end method
