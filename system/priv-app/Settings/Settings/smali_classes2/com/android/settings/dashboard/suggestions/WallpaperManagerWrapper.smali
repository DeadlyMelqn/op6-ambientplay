.class public Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;
.super Ljava/lang/Object;
.source "WallpaperManagerWrapper.java"


# instance fields
.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 28
    return-void
.end method


# virtual methods
.method public getWallpaperId(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    return v0
.end method
