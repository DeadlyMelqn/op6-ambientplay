.class public final Lcom/google/android/gms/internal/ads/zzawa;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzawa$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzawa;",
        "Lcom/google/android/gms/internal/ads/zzawa$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzawa;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdix:Lcom/google/android/gms/internal/ads/zzawa;


# instance fields
.field private zzdir:I

.field private zzdiv:Lcom/google/android/gms/internal/ads/zzawc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzawa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawa;->zzdix:Lcom/google/android/gms/internal/ads/zzawa;

    const-class v0, Lcom/google/android/gms/internal/ads/zzawa;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzawa;->zzdix:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method public static zzq(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzawa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawa;->zzdix:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzawa;

    return-object p0
.end method

.method static synthetic zzxh()Lcom/google/android/gms/internal/ads/zzawa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawa;->zzdix:Lcom/google/android/gms/internal/ads/zzawa;

    return-object v0
.end method


# virtual methods
.method public final getKeySize()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzawa;->zzdir:I

    return p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzawb;->zzakf:[I

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawa;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/zzawa;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawa;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawa;->zzdix:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzawa;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawa;->zzdix:Lcom/google/android/gms/internal/ads/zzawa;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p3, "zzdiv"

    aput-object p3, p0, p1

    const-string p1, "zzdir"

    aput-object p1, p0, p2

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b"

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawa;->zzdix:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzawa;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawa$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawa$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawb;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawa;-><init>()V

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

.method public final zzxe()Lcom/google/android/gms/internal/ads/zzawc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawa;->zzdiv:Lcom/google/android/gms/internal/ads/zzawc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawc;->zzxi()Lcom/google/android/gms/internal/ads/zzawc;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawa;->zzdiv:Lcom/google/android/gms/internal/ads/zzawc;

    return-object p0
.end method
