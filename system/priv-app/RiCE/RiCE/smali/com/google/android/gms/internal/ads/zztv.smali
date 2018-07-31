.class final synthetic Lcom/google/android/gms/internal/ads/zztv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final zzboj:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zztv;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zztv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztv;->zzboj:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzex()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztw;->zzld()V

    return-void
.end method
