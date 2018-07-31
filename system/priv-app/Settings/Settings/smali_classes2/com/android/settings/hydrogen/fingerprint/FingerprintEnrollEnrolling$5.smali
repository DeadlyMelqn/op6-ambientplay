.class Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;
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
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-wrap0(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    .line 443
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    const v2, 0x7f0f0735

    invoke-virtual {v1, v2}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-wrap3(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method
