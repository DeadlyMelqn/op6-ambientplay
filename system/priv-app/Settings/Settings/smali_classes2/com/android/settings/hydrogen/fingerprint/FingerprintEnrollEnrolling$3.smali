.class Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$3;
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
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, v1, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mToken:[B

    invoke-static {v0, v1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-wrap1(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;[B)V

    .line 430
    return-void
.end method
