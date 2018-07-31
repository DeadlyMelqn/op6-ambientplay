.class Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$2;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar$2;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 181
    return-void
.end method
