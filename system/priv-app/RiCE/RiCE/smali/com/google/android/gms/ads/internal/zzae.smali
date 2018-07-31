.class final synthetic Lcom/google/android/gms/ads/internal/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanj;


# static fields
.field static final zzxn:Lcom/google/android/gms/internal/ads/zzanj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzae;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/ads/internal/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzae;->zzxn:Lcom/google/android/gms/internal/ads/zzanj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzanz;
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    const-string p0, "isSuccessful"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "appSettingsJson"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzakd;->zzcs(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzano;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object p0

    return-object p0
.end method
