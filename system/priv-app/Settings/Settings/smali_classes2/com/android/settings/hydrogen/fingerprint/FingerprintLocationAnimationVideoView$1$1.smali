.class Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;


# direct methods
.method constructor <init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1$1;->this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 70
    return-void
.end method