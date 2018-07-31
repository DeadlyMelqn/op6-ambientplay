.class public final Lcom/google/android/gms/internal/ads/zzaxr;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxr$zza;,
        Lcom/google/android/gms/internal/ads/zzaxr$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxr;",
        "Lcom/google/android/gms/internal/ads/zzaxr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;


# instance fields
.field private zzdlq:I

.field private zzdlr:I

.field private zzdls:Lcom/google/android/gms/internal/ads/zzbbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbt<",
            "Lcom/google/android/gms/internal/ads/zzaxr$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaxr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;

    const-class v0, Lcom/google/android/gms/internal/ads/zzaxr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxr;->zzadd()Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdls:Lcom/google/android/gms/internal/ads/zzbbt;

    return-void
.end method

.method public static zzj([B)Lcom/google/android/gms/internal/ads/zzaxr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zzb(Lcom/google/android/gms/internal/ads/zzbbo;[B)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaxr;

    return-object p0
.end method

.method static synthetic zzzn()Lcom/google/android/gms/internal/ads/zzaxr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxs;->zzakf:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    :pswitch_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/zzaxr;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p3, "zzdlq"

    aput-object p3, p0, p1

    const-string p1, "zzdlr"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "zzdls"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-class p2, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlt:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaxr$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxs;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxr;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzzk()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdlr:I

    return p0
.end method

.method public final zzzl()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaxr$zzb;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdls:Lcom/google/android/gms/internal/ads/zzbbt;

    return-object p0
.end method

.method public final zzzm()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzdls:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbt;->size()I

    move-result p0

    return p0
.end method
