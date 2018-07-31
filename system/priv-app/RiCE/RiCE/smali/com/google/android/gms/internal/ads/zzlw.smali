.class public final Lcom/google/android/gms/internal/ads/zzlw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzaqn:I

.field private final zzaqq:I

.field private final zzaqr:Ljava/lang/String;

.field private final zzaqt:Ljava/lang/String;

.field private final zzaqv:Landroid/os/Bundle;

.field private final zzaqx:Ljava/lang/String;

.field private final zzaqz:Z

.field private final zzask:Landroid/os/Bundle;

.field private final zzasl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzasm:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzasn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaso:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
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

.field private final zzhp:Landroid/location/Location;

.field private final zzvm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzlw;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zza(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzhl:Ljava/util/Date;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzb(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqt:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzc(Lcom/google/android/gms/internal/ads/zzlx;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqn:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzd(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzhn:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zze(Lcom/google/android/gms/internal/ads/zzlx;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzhp:Landroid/location/Location;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzf(Lcom/google/android/gms/internal/ads/zzlx;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzvm:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzg(Lcom/google/android/gms/internal/ads/zzlx;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzask:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzh(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzasl:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzi(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqr:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzj(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqx:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzasm:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzk(Lcom/google/android/gms/internal/ads/zzlx;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqq:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzl(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzasn:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzm(Lcom/google/android/gms/internal/ads/zzlx;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqv:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzn(Lcom/google/android/gms/internal/ads/zzlx;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaso:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzo(Lcom/google/android/gms/internal/ads/zzlx;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqz:Z

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzhl:Ljava/util/Date;

    return-object p0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqt:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzask:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqv:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getGender()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqn:I

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzhn:Ljava/util/Set;

    return-object p0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzhp:Landroid/location/Location;

    return-object p0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzvm:Z

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzasl:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object p0
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzask:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqr:Ljava/lang/String;

    return-object p0
.end method

.method public final isDesignedForFamilies()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqz:Z

    return p0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzasn:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzbc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final zzip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqx:Ljava/lang/String;

    return-object p0
.end method

.method public final zziq()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzasm:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object p0
.end method

.method public final zzir()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzasl:Ljava/util/Map;

    return-object p0
.end method

.method public final zzis()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzask:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzit()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaqq:I

    return p0
.end method

.method public final zziu()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzaso:Ljava/util/Set;

    return-object p0
.end method
