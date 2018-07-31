.class public final Lcom/google/android/gms/internal/ads/zzabk;
.super Ljava/lang/Exception;


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzabk;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzabk;->mErrorCode:I

    return p0
.end method
