.class final synthetic Lcom/google/android/gms/internal/ads/zzafo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanj;


# static fields
.field static final zzxn:Lcom/google/android/gms/internal/ads/zzanj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafo;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzafo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafo;->zzxn:Lcom/google/android/gms/internal/ads/zzanj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzanz;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafn;->zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object p0

    return-object p0
.end method