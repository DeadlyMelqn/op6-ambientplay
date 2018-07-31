.class public final Landroid/net/NetworkScorerAppData;
.super Ljava/lang/Object;
.source "NetworkScorerAppData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkScorerAppData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

.field private final mNetworkAvailableNotificationChannelId:Ljava/lang/String;

.field private final mRecommendationService:Landroid/content/ComponentName;

.field private final mRecommendationServiceLabel:Ljava/lang/String;

.field public final packageUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/net/NetworkScorerAppData$1;

    invoke-direct {v0}, Landroid/net/NetworkScorerAppData$1;-><init>()V

    .line 64
    sput-object v0, Landroid/net/NetworkScorerAppData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageUid"    # I
    .param p2, "recommendationServiceComp"    # Landroid/content/ComponentName;
    .param p3, "recommendationServiceLabel"    # Ljava/lang/String;
    .param p4, "enableUseOpenWifiActivity"    # Landroid/content/ComponentName;
    .param p5, "networkAvailableNotificationChannelId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 36
    iput-object p2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 37
    iput-object p3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 39
    iput-object p5, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 44
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 114
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkScorerAppData;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 116
    check-cast v0, Landroid/net/NetworkScorerAppData;

    .line 117
    .local v0, "that":Landroid/net/NetworkScorerAppData;
    iget v2, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    iget v3, v0, Landroid/net/NetworkScorerAppData;->packageUid:I

    if-ne v2, v3, :cond_3

    .line 118
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 121
    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 122
    iget-object v2, v0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 121
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 117
    :cond_3
    return v1
.end method

.method public getEnableUseOpenWifiActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNetworkAvailableNotificationChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getRecommendationServiceLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServicePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 128
    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 127
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkScorerAppData{packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, ", mRecommendationService="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, ", mRecommendationServiceLabel="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    const-string/jumbo v1, ", mEnableUseOpenWifiActivity="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    const-string/jumbo v1, ", mNetworkAvailableNotificationChannelId="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    const/16 v1, 0x7d

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 54
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 56
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
