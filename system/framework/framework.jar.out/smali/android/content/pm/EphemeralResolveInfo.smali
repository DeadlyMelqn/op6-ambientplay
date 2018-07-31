.class public final Landroid/content/pm/EphemeralResolveInfo;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$1;,
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

.field private final mLegacyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$1;-><init>()V

    .line 148
    sput-object v0, Landroid/content/pm/EphemeralResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "digest"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralIntentFilter;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/pm/EphemeralResolveInfo;-><init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .param p1, "digest"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralIntentFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo;

    .line 72
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->getInstantAppDigest()Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v1

    .line 73
    invoke-static {p3}, Landroid/content/pm/EphemeralResolveInfo;->createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 71
    invoke-direct {v0, v1, p2, v2, p4}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 52
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v0, "ephemeralFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralIntentFilter;>;"
    new-instance v1, Landroid/content/pm/EphemeralIntentFilter;

    invoke-direct {v1, p2, p3}, Landroid/content/pm/EphemeralIntentFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v0}, Landroid/content/pm/EphemeralResolveInfo;->createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 57
    invoke-direct {v1, v2, p2, v3}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    .line 60
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppResolveInfo;

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    .line 85
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralIntentFilter;>;"
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-direct {v0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/content/pm/EphemeralResolveInfo;-><init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;)V

    .line 80
    return-void
.end method

.method private static createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralIntentFilter;>;"
    const/4 v3, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 96
    return-object v3

    .line 98
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    .local v0, "filterCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 101
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/EphemeralIntentFilter;

    invoke-virtual {v3}, Landroid/content/pm/EphemeralIntentFilter;->getInstantAppIntentFilter()Landroid/content/pm/InstantAppIntentFilter;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getDigestPrefix()I

    move-result v0

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getInstantAppResolveInfo()Landroid/content/pm/InstantAppResolveInfo;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    return-object v0
.end method

.method public getIntentFilters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v4, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    .local v0, "filterCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v3, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralIntentFilter;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 123
    new-instance v5, Landroid/content/pm/EphemeralIntentFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/InstantAppIntentFilter;

    invoke-direct {v5, v4}, Landroid/content/pm/EphemeralIntentFilter;-><init>(Landroid/content/pm/InstantAppIntentFilter;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-object v3
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 144
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 146
    return-void
.end method
