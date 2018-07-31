.class public final Lcom/google/android/gms/internal/ads/zzatv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GassResponseParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzatv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private zzdhe:Lcom/google/android/gms/internal/ads/zzba;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAfmaSignalsAsBytes"
        id = 0x2
        type = "byte[]"
    .end annotation
.end field

.field private zzdhf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatw;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzatw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatv;->versionCode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzatv;->zzwf()V

    return-void
.end method

.method private final zzwf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid internal representation - full"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid internal representation - empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Impossible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v1, p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzwe()Lcom/google/android/gms/internal/ads/zzba;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    new-instance v1, Lcom/google/android/gms/internal/ads/zzba;

    invoke-direct/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzba;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zza(Lcom/google/android/gms/internal/ads/zzbfi;[B)Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzba;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzatv;->zzwf()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    return-object p0
.end method
