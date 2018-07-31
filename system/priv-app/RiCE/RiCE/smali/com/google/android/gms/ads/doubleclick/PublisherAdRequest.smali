.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I


# instance fields
.field private final zzun:Lcom/google/android/gms/internal/ads/zzlw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlw;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zza(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzlx;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;-><init>(Lcom/google/android/gms/internal/ads/zzlx;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/google/android/gms/ads/doubleclick/zza;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;-><init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)V

    return-void
.end method

.method public static updateCorrelator()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getBirthday()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getContentUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getCustomTargeting()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getGender()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getGender()I

    move-result p0

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

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getKeywords()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getManualImpressionsEnabled()Z

    move-result p0

    return p0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object p0

    return-object p0
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlw;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->isTestDevice(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final zzay()Lcom/google/android/gms/internal/ads/zzlw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    return-object p0
.end method
