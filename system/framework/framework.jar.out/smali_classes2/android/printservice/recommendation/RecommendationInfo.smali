.class public final Landroid/printservice/recommendation/RecommendationInfo;
.super Ljava/lang/Object;
.source "RecommendationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/RecommendationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDiscoveredPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/CharSequence;

.field private final mRecommendsMultiVendorService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Landroid/printservice/recommendation/RecommendationInfo$1;

    invoke-direct {v0}, Landroid/printservice/recommendation/RecommendationInfo$1;-><init>()V

    .line 185
    sput-object v0, Landroid/printservice/recommendation/RecommendationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1}, Landroid/printservice/recommendation/RecommendationInfo;->readDiscoveredPrinters(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    invoke-direct {p0, v1, v2, v3, v0}, Landroid/printservice/recommendation/RecommendationInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/printservice/recommendation/RecommendationInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/printservice/recommendation/RecommendationInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/printservice/recommendation/RecommendationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "numDiscoveredPrinters"    # I
    .param p4, "recommendsMultiVendorService"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This constructor has been deprecated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p4, "recommendsMultiVendorService"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "discoveredPrinters":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 64
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    .line 66
    const-string/jumbo v0, "discoveredPrinters"

    .line 65
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    .line 67
    iput-boolean p4, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    .line 68
    return-void
.end method

.method private static readDiscoveredPrinters(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .local v3, "numDiscoveredPrinters":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v0, "discoveredPrinters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 110
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getDiscoveredPrinters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNumDiscoveredPrinters()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public recommendsMultiVendorService()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 167
    iget-object v3, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    .local v0, "numDiscoveredPrinters":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v3, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "printer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 174
    .local v1, "printer":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBlob([B)V

    goto :goto_0

    .line 177
    .end local v1    # "printer":Ljava/net/InetAddress;
    :cond_0
    iget-boolean v3, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    return-void

    .line 177
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
