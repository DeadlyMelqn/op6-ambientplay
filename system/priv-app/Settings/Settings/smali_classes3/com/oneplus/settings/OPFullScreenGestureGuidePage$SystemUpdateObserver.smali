.class Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;
.super Landroid/database/ContentObserver;
.source "OPFullScreenGestureGuidePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFullScreenGestureGuidePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUpdateObserver"
.end annotation


# instance fields
.field private final GUIDE_STATE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .line 261
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 259
    const-string/jumbo v0, "op_gesture_button_guide_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->GUIDE_STATE_URI:Landroid/net/Uri;

    .line 263
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->onChange(ZLandroid/net/Uri;)V

    .line 279
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->GUIDE_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-static {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->-wrap4(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V

    .line 273
    :cond_1
    return-void
.end method

.method public startObserving()V
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->GUIDE_STATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 290
    return-void
.end method
