.class Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V
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
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-get0(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollEnrolling;)Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->showContinueView()V

    .line 338
    return-void
.end method
