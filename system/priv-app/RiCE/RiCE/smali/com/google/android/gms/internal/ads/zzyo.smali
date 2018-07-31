.class public final Lcom/google/android/gms/internal/ads/zzyo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzaqn:I

.field private final zzaqz:Z

.field private final zzbur:I

.field private final zzbva:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhl:Ljava/util/Date;

.field private final zzhn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzho:Z

.field private final zzhp:Landroid/location/Location;

.field private final zzyb:Lcom/google/android/gms/internal/ads/zzpl;

.field private final zzyc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzpl;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/internal/ads/zzpl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzhl:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzaqn:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzhn:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzhp:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzho:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzbur:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzaqz:Z

    const-string p1, "custom:"

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzbva:Ljava/util/Map;

    if-eqz p8, :cond_3

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, ":"

    const/4 p5, 0x3

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    if-ne p4, p5, :cond_0

    const-string p4, "true"

    const/4 p5, 0x2

    aget-object p6, p3, p5

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p6, 0x1

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzbva:Ljava/util/Map;

    aget-object p3, p3, p6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    :goto_1
    invoke-interface {p4, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p4, "false"

    aget-object p5, p3, p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzbva:Ljava/util/Map;

    aget-object p3, p3, p6

    const/4 p5, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final getAdVolume()F
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzmb;->zziv()Lcom/google/android/gms/internal/ads/zzmb;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzmb;->zzdo()F

    move-result p0

    return p0
.end method

.method public final getBirthday()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzhl:Ljava/util/Date;

    return-object p0
.end method

.method public final getGender()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzaqn:I

    return p0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzhn:Ljava/util/Set;

    return-object p0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzhp:Landroid/location/Location;

    return-object p0
.end method

.method public final getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->zzbjn:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->zzbjo:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->zzbjp:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->versionCode:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->zzbjq:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->versionCode:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->zzbjr:Lcom/google/android/gms/internal/ads/zzmu;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/ads/VideoOptions;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbjr:Lcom/google/android/gms/internal/ads/zzmu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/internal/ads/zzmu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_2
    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p0

    return-object p0
.end method

.method public final isAdMuted()Z
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzmb;->zziv()Lcom/google/android/gms/internal/ads/zzmb;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzmb;->zzdp()Z

    move-result p0

    return p0
.end method

.method public final isAppInstallAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    const-string v0, "6"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isContentAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    const-string v0, "6"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isDesignedForFamilies()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzaqz:Z

    return p0
.end method

.method public final isTesting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzho:Z

    return p0
.end method

.method public final isUnifiedNativeAdRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    const-string v0, "6"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final taggedForChildDirectedTreatment()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzbur:I

    return p0
.end method

.method public final zzna()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzyc:Ljava/util/List;

    const-string v0, "3"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zznb()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzbva:Ljava/util/Map;

    return-object p0
.end method
