.class Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserFingerprint"
.end annotation


# instance fields
.field f:Landroid/hardware/fingerprint/Fingerprint;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "f"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p3, "userId"    # I

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    .line 181
    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->userId:I

    .line 182
    return-void
.end method
