.class Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-get1(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-wrap2(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    .line 374
    :cond_0
    return-void
.end method
