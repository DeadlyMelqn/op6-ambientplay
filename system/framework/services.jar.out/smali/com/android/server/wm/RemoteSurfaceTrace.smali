.class Lcom/android/server/wm/RemoteSurfaceTrace;
.super Lcom/android/server/wm/SurfaceControlWithBackground;
.source "RemoteSurfaceTrace.java"


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteSurfaceTrace"


# instance fields
.field final mOut:Ljava/io/DataOutputStream;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindow:Lcom/android/server/wm/WindowState;

.field final mWriteFd:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;Lcom/android/server/wm/SurfaceControlWithBackground;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "wrapped"    # Lcom/android/server/wm/SurfaceControlWithBackground;
    .param p3, "window"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/android/server/wm/SurfaceControlWithBackground;-><init>(Lcom/android/server/wm/SurfaceControlWithBackground;)V

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWriteFd:Ljava/io/FileDescriptor;

    .line 49
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    .line 51
    iput-object p3, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 53
    return-void
.end method

.method private writeEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_0
.end method

.method private varargs writeFloatEvent(Ljava/lang/String;[F)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p2, v2

    .line 151
    .local v1, "value":F
    iget-object v4, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "value":F
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_1
.end method

.method private varargs writeIntEvent(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p2, v2

    .line 137
    .local v1, "value":I
    iget-object v4, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "value":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_1
.end method

.method private writeRectEvent(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Rect;

    .prologue
    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    .line 162
    return-void
.end method

.method private writeSigil()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/android/server/wm/RemoteEventTrace;->sigil:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 166
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "Hide"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeEvent(Ljava/lang/String;)V

    .line 112
    invoke-super {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->hide()V

    .line 113
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 57
    const-string/jumbo v0, "Alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    .line 58
    invoke-super {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setAlpha(F)V

    .line 59
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    const-string/jumbo v0, "FinalCrop"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeRectEvent(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 94
    invoke-super {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 95
    return-void
.end method

.method public setGeometryAppliesWithResize()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "GeometryAppliesWithResize"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeEvent(Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->setGeometryAppliesWithResize()V

    .line 77
    return-void
.end method

.method public setLayer(I)V
    .locals 3
    .param p1, "zorder"    # I

    .prologue
    .line 63
    const-string/jumbo v0, "Layer"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeIntEvent(Ljava/lang/String;[I)V

    .line 64
    invoke-super {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setLayer(I)V

    .line 65
    return-void
.end method

.method public setLayerStack(I)V
    .locals 3
    .param p1, "layerStack"    # I

    .prologue
    .line 99
    const-string/jumbo v0, "LayerStack"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeIntEvent(Ljava/lang/String;[I)V

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setLayerStack(I)V

    .line 101
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 3
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 105
    const-string/jumbo v0, "Matrix"

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/SurfaceControlWithBackground;->setMatrix(FFFF)V

    .line 107
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 69
    const-string/jumbo v0, "Position"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/SurfaceControlWithBackground;->setPosition(FF)V

    .line 71
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 81
    const-string/jumbo v0, "Size"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeIntEvent(Ljava/lang/String;[I)V

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/SurfaceControlWithBackground;->setSize(II)V

    .line 83
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    const-string/jumbo v0, "Crop"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeRectEvent(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 88
    invoke-super {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 89
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "Show"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeEvent(Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->show()V

    .line 119
    return-void
.end method
