.class Lcom/android/server/policy/OemGestureButton$6;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iput-object p2, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1072
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iput-object v2, v1, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    .line 1075
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1077
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v1}, Lcom/android/server/policy/OemGestureButton;->setIgnoreNotchWallpaper()V

    .line 1079
    :cond_1
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    .line 1080
    const-string/jumbo v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preloadWallapepr: mPreLoadWallpaperBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1081
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1080
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :cond_2
    :goto_0
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preloadWallapepr: failed mPreLoadWallpaperBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1085
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
