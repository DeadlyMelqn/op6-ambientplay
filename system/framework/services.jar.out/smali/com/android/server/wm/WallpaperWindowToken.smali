.class Lcom/android/server/wm/WallpaperWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "WallpaperWindowToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "explicit"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "ownerCanManageAppTokens"    # Z

    .prologue
    .line 44
    const/16 v3, 0x7dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 45
    iget-object v0, p4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 46
    return-void
.end method


# virtual methods
.method hasVisibleNotDrawnWallpaper()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 154
    .local v1, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, 0x1

    return v2

    .line 152
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    .end local v1    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_1
    return v3
.end method

.method hideWallpaperToken(ZLjava/lang/String;)V
    .locals 3
    .param p1, "wasDeferred"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 57
    .local v1, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 55
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 59
    .end local v1    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->hidden:Z

    .line 60
    return-void
.end method

.method sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .end local p6    # "sync":Z
    .local v9, "wallpaperNdx":I
    :goto_0
    if-ltz v9, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 67
    .local v8, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/16 p6, 0x0

    .line 64
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 73
    .end local v8    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void

    .line 70
    .restart local v8    # "wallpaper":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method setExiting()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 52
    return-void
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "ndx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 118
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "WallpaperWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    .line 170
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateWallpaperOffset(IIZ)V
    .locals 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "sync"    # Z

    .prologue
    .line 76
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 77
    .local v1, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .end local p3    # "sync":Z
    .local v2, "wallpaperNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 78
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 79
    .local v0, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 81
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 83
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(Landroid/graphics/Point;)V

    .line 85
    const/4 p3, 0x0

    .line 77
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const/4 v7, 0x0

    .line 91
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 92
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 93
    .local v2, "dw":I
    iget v0, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 95
    .local v0, "dh":I
    iget-boolean v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->hidden:Z

    if-ne v6, p1, :cond_0

    .line 96
    xor-int/lit8 v6, p1, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->hidden:Z

    .line 98
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 101
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 102
    .local v4, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "wallpaperNdx":I
    :goto_0
    if-ltz v5, :cond_2

    .line 103
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 104
    .local v3, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {v4, v3, v2, v0, v7}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 108
    :cond_1
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 102
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 110
    .end local v3    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method updateWallpaperWindows(ZI)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "animLayerAdj"    # I

    .prologue
    const/4 v9, 0x0

    .line 124
    iget-boolean v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->hidden:Z

    if-ne v6, p1, :cond_1

    .line 125
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/wm/WallpaperWindowToken;->TAG:Ljava/lang/String;

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wallpaper token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " hidden="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    xor-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    xor-int/lit8 v6, p1, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->hidden:Z

    .line 129
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 132
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 133
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 134
    .local v2, "dw":I
    iget v0, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 135
    .local v0, "dh":I
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 136
    .local v4, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "wallpaperNdx":I
    :goto_0
    if-ltz v5, :cond_5

    .line 137
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 139
    .local v3, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {v4, v3, v2, v0, v9}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 144
    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 146
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_4

    :cond_3
    sget-object v6, Lcom/android/server/wm/WallpaperWindowToken;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "adjustWallpaper win "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 147
    const-string/jumbo v8, " anim layer: "

    .line 146
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 147
    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 146
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 149
    .end local v3    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_5
    return-void
.end method
