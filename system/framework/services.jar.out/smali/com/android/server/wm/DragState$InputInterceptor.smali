.class Lcom/android/server/wm/DragState$InputInterceptor;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputInterceptor"
.end annotation


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

.field mServerChannel:Landroid/view/InputChannel;

.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/wm/DragState;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    const-wide v8, 0x12a05f200L

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 138
    iput-object p1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string/jumbo v1, "drag"

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 140
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 141
    aget-object v1, v0, v7

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 142
    iget-object v1, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 143
    new-instance v1, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    iget-object v2, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 144
    iget-object v4, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 143
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 146
    new-instance v1, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v1, v6}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string/jumbo v2, "drag"

    iput-object v2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v8, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 151
    new-instance v1, Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 152
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 151
    invoke-direct {v1, v2, v6, v6, v3}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string/jumbo v2, "drag"

    iput-object v2, v1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v5, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v2, 0x7e0

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v8, v1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v5, v1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 162
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v5, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v5, v1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v5, v1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v1, v1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v5, v1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v5, v1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 176
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->-get0(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->-get0(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 180
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_0

    .line 181
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Pausing rotation during drag"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 184
    return-void
.end method


# virtual methods
.method tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V

    .line 189
    iput-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 192
    iput-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 193
    iput-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 195
    iput-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 196
    iput-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 199
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    .line 200
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Resuming rotation after drag"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    .line 203
    return-void
.end method
