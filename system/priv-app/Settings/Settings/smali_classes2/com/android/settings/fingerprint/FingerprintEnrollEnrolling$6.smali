.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->-wrap4(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 825
    return-void
.end method
