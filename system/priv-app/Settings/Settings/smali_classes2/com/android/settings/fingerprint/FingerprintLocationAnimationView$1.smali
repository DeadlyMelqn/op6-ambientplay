.class Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->-wrap0(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    .line 183
    return-void
.end method