.class final Lcom/google/android/gms/internal/ads/zzbcr;
.super Ljava/lang/Object;


# static fields
.field private static final zzdwd:Lcom/google/android/gms/internal/ads/zzbcp;

.field private static final zzdwe:Lcom/google/android/gms/internal/ads/zzbcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcr;->zzaeg()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcr;->zzdwd:Lcom/google/android/gms/internal/ads/zzbcp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcq;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbcq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcr;->zzdwe:Lcom/google/android/gms/internal/ads/zzbcp;

    return-void
.end method

.method static zzaee()Lcom/google/android/gms/internal/ads/zzbcp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcr;->zzdwd:Lcom/google/android/gms/internal/ads/zzbcp;

    return-object v0
.end method

.method static zzaef()Lcom/google/android/gms/internal/ads/zzbcp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcr;->zzdwe:Lcom/google/android/gms/internal/ads/zzbcp;

    return-object v0
.end method

.method private static zzaeg()Lcom/google/android/gms/internal/ads/zzbcp;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static/range {v0 .. v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
