.class final Lcom/google/android/gms/common/images/internal/zzb;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/images/internal/zza;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/images/internal/zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzcp()Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

    move-result-object p0

    return-object p0
.end method
