.class interface abstract Lcom/android/server/wm/DimLayer$DimLayerUser;
.super Ljava/lang/Object;
.source "DimLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DimLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DimLayerUser"
.end annotation


# virtual methods
.method public abstract dimFullscreen()Z
.end method

.method public abstract getDimBounds(Landroid/graphics/Rect;)V
.end method

.method public abstract getDisplayInfo()Landroid/view/DisplayInfo;
.end method

.method public getLayerForDim(Lcom/android/server/wm/WindowStateAnimator;II)I
    .locals 0
    .param p1, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "layerOffset"    # I
    .param p3, "defaultLayer"    # I

    .prologue
    .line 87
    return p3
.end method

.method public abstract isAttachedToDisplay()Z
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method
