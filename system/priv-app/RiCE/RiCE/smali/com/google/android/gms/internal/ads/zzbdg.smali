.class final Lcom/google/android/gms/internal/ads/zzbdg;
.super Ljava/lang/Object;


# static fields
.field private static final zzdxa:Lcom/google/android/gms/internal/ads/zzbdg;


# instance fields
.field private final zzdxb:Lcom/google/android/gms/internal/ads/zzbdn;

.field private final zzdxc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzbdm<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdxa:Lcom/google/android/gms/internal/ads/zzbdg;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v0 .. v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdxc:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "com.google.protobuf.AndroidProto3SchemaFactory"

    filled-new-array/range {v0 .. v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-gtz v2, :cond_0

    aget-object v3, v0, v1

    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzbdg;->zzeq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdn;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbcj;

    invoke-direct/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzbcj;-><init>()V

    :cond_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdxb:Lcom/google/android/gms/internal/ads/zzbdn;

    return-void
.end method

.method public static zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdxa:Lcom/google/android/gms/internal/ads/zzbdg;

    return-object v0
.end method

.method private static zzeq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdn;
    .locals 2

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdn;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzbdm<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdg;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbdm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzbdm<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdxc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdxb:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdn;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    const-string v1, "messageType"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "schema"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdxc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdm;

    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method
