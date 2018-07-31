.class public Lcom/android/systemui/colorextraction/SysuiColorExtractor;
.super Lcom/android/internal/colorextraction/ColorExtractor;
.source "SysuiColorExtractor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mWallpaperVisible:Z

.field private final mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/android/internal/colorextraction/types/ExtractionType;
    .param p3, "registerVisibility"    # Z

    .prologue
    const/4 v8, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;)V

    .line 59
    new-instance v6, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v6}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 61
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 62
    .local v2, "systemColors":Landroid/app/WallpaperColors;
    invoke-direct {p0, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->updateDefaultGradients(Landroid/app/WallpaperColors;)V

    .line 64
    if-eqz p3, :cond_0

    .line 66
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    .line 67
    .local v5, "windowManagerService":Landroid/view/IWindowManager;
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    .line 69
    .local v1, "handler":Landroid/os/Handler;
    new-instance v6, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;-><init>(Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/os/Handler;)V

    .line 78
    const/4 v7, 0x0

    .line 68
    invoke-interface {v5, v6, v7}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v3

    .line 79
    .local v3, "visible":Z
    invoke-virtual {p0, v3}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setWallpaperVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v3    # "visible":Z
    .end local v5    # "windowManagerService":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    const-class v6, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 86
    .local v4, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {v4, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 90
    const/4 v6, -0x1

    .line 89
    invoke-virtual {v4, p0, v8, v6}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 92
    :cond_1
    return-void

    .line 80
    .end local v4    # "wallpaperManager":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "SysuiColorExtractor"

    const-string/jumbo v7, "Can\'t listen to wallpaper visibility changes"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateDefaultGradients(Landroid/app/WallpaperColors;)V
    .locals 4
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "SysuiColorExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDefaultGradients, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-static {p1, v0}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 101
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 188
    const-string/jumbo v2, "SysuiColorExtractor:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v2, "  Current wallpaper colors:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 195
    .local v1, "system":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v2, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 196
    .local v0, "lock":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    const-string/jumbo v2, "  Gradients:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Default scrim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mWallpaperVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWallpaperVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I
    .param p2, "type"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I
    .param p2, "type"    # I
    .param p3, "ignoreWallpaperVisibility"    # Z

    .prologue
    .line 168
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 169
    const/4 p3, 0x1

    .line 171
    .end local p3    # "ignoreWallpaperVisibility":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWallpaperVisible:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    .line 172
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object v0
.end method

.method public getColors(IZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I
    .param p2, "ignoreWallpaperVisibility"    # Z

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method getFallbackColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWpHiddenColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object v0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 1
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .prologue
    .line 105
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->onColorsChanged(Landroid/app/WallpaperColors;I)V

    .line 112
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->updateDefaultGradients(Landroid/app/WallpaperColors;)V

    .line 115
    :cond_1
    return-void
.end method

.method setWallpaperVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWallpaperVisible:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mWallpaperVisible:Z

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->triggerColorsChanged(I)V

    .line 184
    :cond_0
    return-void
.end method
