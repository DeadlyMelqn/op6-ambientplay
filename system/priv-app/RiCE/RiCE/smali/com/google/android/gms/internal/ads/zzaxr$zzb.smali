.class public final Lcom/google/android/gms/internal/ads/zzaxr$zzb;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzaxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxr$zzb;",
        "Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxr$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;


# instance fields
.field private zzdlj:I

.field private zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

.field private zzdlv:I

.field private zzdlw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaxr$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    const-class v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method static synthetic zzzt()Lcom/google/android/gms/internal/ads/zzaxr$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p3, "zzdlu"

    aput-object p3, p0, p1

    const-string p1, "zzdlv"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "zzdlw"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "zzdlj"

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxs;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxr$zzb;-><init>()V

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

.method public final zzzo()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzzp()Lcom/google/android/gms/internal/ads/zzaxi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxi;->zzza()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

    return-object p0
.end method

.method public final zzzq()Lcom/google/android/gms/internal/ads/zzaxl;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlv:I

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxl;->zzax(I)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlh:Lcom/google/android/gms/internal/ads/zzaxl;

    :cond_0
    return-object p0
.end method

.method public final zzzr()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlw:I

    return p0
.end method

.method public final zzzs()Lcom/google/android/gms/internal/ads/zzayd;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlj:I

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzayd;->zzbg(I)Lcom/google/android/gms/internal/ads/zzayd;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmp:Lcom/google/android/gms/internal/ads/zzayd;

    :cond_0
    return-object p0
.end method
