.class Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;->this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;->val$view:Landroid/view/View;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 522
    return-void
.end method
