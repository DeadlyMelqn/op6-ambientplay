.class Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureHandler"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    .line 915
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 916
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    .line 917
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->mGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 918
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->mGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)V

    .line 931
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 922
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 926
    return-void
.end method
