.class final Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 1189
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x1020019

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1195
    .local v2, "id":I
    if-eq v2, v6, :cond_0

    const v4, 0x102001a

    if-ne v2, v4, :cond_4

    .line 1196
    :cond_0
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1197
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v5, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    if-ne v2, v6, :cond_3

    .line 1198
    const/4 v4, 0x2

    .line 1197
    :goto_0
    invoke-virtual {v5, v4}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    .line 1201
    :cond_1
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    .line 1230
    :cond_2
    :goto_1
    return-void

    .line 1199
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1202
    :cond_4
    sget v4, Landroid/support/v7/mediarouter/R$id;->mr_control_playback_ctrl:I

    if-ne v2, v4, :cond_9

    .line 1203
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v4, :cond_2

    .line 1204
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    const/4 v3, 0x1

    .line 1205
    .local v3, "isPlaying":Z
    :goto_2
    const/4 v0, 0x0

    .line 1206
    .local v0, "actionDescResId":I
    if-eqz v3, :cond_7

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->-wrap1(Landroid/support/v7/app/MediaRouteControllerDialog;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1207
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 1208
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_pause:I

    .line 1217
    :cond_5
    :goto_3
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1218
    if-eqz v0, :cond_2

    .line 1220
    const/16 v4, 0x4000

    .line 1219
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1221
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1222
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1223
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v5, v5, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    .line 1204
    .end local v0    # "actionDescResId":I
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "isPlaying":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isPlaying":Z
    goto :goto_2

    .line 1209
    .restart local v0    # "actionDescResId":I
    :cond_7
    if-eqz v3, :cond_8

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->-wrap3(Landroid/support/v7/app/MediaRouteControllerDialog;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1210
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 1211
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop:I

    goto :goto_3

    .line 1212
    :cond_8
    if-nez v3, :cond_5

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->-wrap2(Landroid/support/v7/app/MediaRouteControllerDialog;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1213
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 1214
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_play:I

    goto :goto_3

    .line 1227
    .end local v0    # "actionDescResId":I
    .end local v3    # "isPlaying":Z
    :cond_9
    sget v4, Landroid/support/v7/mediarouter/R$id;->mr_close:I

    if-ne v2, v4, :cond_2

    .line 1228
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    goto/16 :goto_1
.end method
