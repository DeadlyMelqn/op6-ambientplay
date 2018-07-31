.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 4169
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 4170
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4166
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 4167
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 4171
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 4175
    iget v8, p1, Landroid/os/Message;->what:I

    .line 4176
    .local v8, "type":I
    packed-switch v8, :pswitch_data_0

    .line 4210
    :pswitch_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4178
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 4179
    .local v4, "gestureId":I
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap6(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    .line 4213
    .end local v4    # "gestureId":I
    :goto_0
    return-void

    .line 4183
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap5(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_0

    .line 4187
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4188
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    .line 4189
    .local v5, "region":Landroid/graphics/Region;
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 4190
    .local v6, "scale":F
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 4191
    .local v2, "centerX":F
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 4192
    .local v3, "centerY":F
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v5, v6, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap7(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/graphics/Region;FFF)V

    goto :goto_0

    .line 4196
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "centerX":F
    .end local v3    # "centerY":F
    .end local v5    # "region":Landroid/graphics/Region;
    .end local v6    # "scale":F
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 4197
    .local v7, "showState":I
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap8(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    goto :goto_0

    .line 4201
    .end local v7    # "showState":I
    :pswitch_5
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_0

    .line 4205
    :pswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_0

    const/4 v1, 0x1

    .line 4206
    .local v1, "available":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Z)V

    goto :goto_0

    .line 4205
    .end local v1    # "available":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "available":Z
    goto :goto_1

    .line 4176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4256
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 4255
    :goto_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4257
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4258
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 4256
    goto :goto_0
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .locals 2

    .prologue
    .line 4250
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4251
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4252
    return-void
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 4217
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    if-nez v2, :cond_0

    .line 4219
    return-void

    .line 4222
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4223
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4224
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4225
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4226
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 4228
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4229
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4230
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 3
    .param p1, "showState"    # I

    .prologue
    .line 4237
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v1, :cond_0

    .line 4238
    return-void

    .line 4241
    :cond_0
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4242
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4243
    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 4233
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 4234
    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 4246
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 4247
    return-void
.end method
