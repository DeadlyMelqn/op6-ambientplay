.class public final Lcom/google/android/gms/internal/ads/zzawq;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzawq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzawq;",
        "Lcom/google/android/gms/internal/ads/zzawq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzawq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjo:Lcom/google/android/gms/internal/ads/zzawq;


# instance fields
.field private zzdjl:Lcom/google/android/gms/internal/ads/zzaww;

.field private zzdjm:Lcom/google/android/gms/internal/ads/zzawm;

.field private zzdjn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzawq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    const-class v0, Lcom/google/android/gms/internal/ads/zzawq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method public static zzxx()Lcom/google/android/gms/internal/ads/zzawq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    return-object v0
.end method

.method static synthetic zzxy()Lcom/google/android/gms/internal/ads/zzawq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzawr;->zzakf:[I

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/zzawq;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzawq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p3, "zzdjl"

    aput-object p3, p0, p1

    const-string p1, "zzdjm"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "zzdjn"

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzawq;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawq$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawq$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawr;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawq;-><init>()V

    return-object p0

    nop

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

.method public final zzxu()Lcom/google/android/gms/internal/ads/zzaww;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjl:Lcom/google/android/gms/internal/ads/zzaww;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaww;->zzyk()Lcom/google/android/gms/internal/ads/zzaww;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjl:Lcom/google/android/gms/internal/ads/zzaww;

    return-object p0
.end method

.method public final zzxv()Lcom/google/android/gms/internal/ads/zzawm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjm:Lcom/google/android/gms/internal/ads/zzawm;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawm;->zzxq()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjm:Lcom/google/android/gms/internal/ads/zzawm;

    return-object p0
.end method

.method public final zzxw()Lcom/google/android/gms/internal/ads/zzawk;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjn:I

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawk;->zzaq(I)Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzawk;->zzdjf:Lcom/google/android/gms/internal/ads/zzawk;

    :cond_0
    return-object p0
.end method