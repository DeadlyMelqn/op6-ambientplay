.class public final Lcom/google/android/gms/internal/ads/zzawi;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzawi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzawi;",
        "Lcom/google/android/gms/internal/ads/zzawi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzawi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjb:Lcom/google/android/gms/internal/ads/zzawi;


# instance fields
.field private zzdih:I

.field private zzdip:Lcom/google/android/gms/internal/ads/zzbah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzawi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    const-class v0, Lcom/google/android/gms/internal/ads/zzawi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawi;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzawi;->zzdih:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzawi;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawi;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzawi;Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzawi;->zzk(Lcom/google/android/gms/internal/ads/zzbah;)V

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawi;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static zzu(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzawi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzawi;

    return-object p0
.end method

.method public static zzxn()Lcom/google/android/gms/internal/ads/zzawi$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawi$zza;

    return-object v0
.end method

.method static synthetic zzxo()Lcom/google/android/gms/internal/ads/zzawi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    return-object v0
.end method


# virtual methods
.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzawi;->zzdih:I

    return p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzawj;->zzakf:[I

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawi;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/zzawi;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawi;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzawi;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p3, "zzdih"

    aput-object p3, p0, p1

    const-string p1, "zzdip"

    aput-object p1, p0, p2

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n"

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawi;->zzdjb:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzawi;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawi$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawj;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawi;-><init>()V

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

.method public final zzwv()Lcom/google/android/gms/internal/ads/zzbah;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawi;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-object p0
.end method