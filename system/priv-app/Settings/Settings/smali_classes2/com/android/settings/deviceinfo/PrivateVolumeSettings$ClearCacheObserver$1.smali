.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-wrap2(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    .line 1214
    return-void
.end method