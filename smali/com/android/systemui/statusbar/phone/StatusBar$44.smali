.class Lcom/android/systemui/statusbar/phone/StatusBar$44;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 6735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 6739
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    .line 6740
    return v1

    .line 6742
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6743
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v2, "Trying to show notification guts, but not attached to window"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6744
    return v1

    :cond_1
    move-object v6, p1

    .line 6747
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 6748
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6749
    return v1

    .line 6751
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6752
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v2, v1

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 6756
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    return v1

    .line 6758
    .restart local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v6, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap2(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 6759
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v7

    .line 6762
    .local v7, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-nez v7, :cond_4

    .line 6764
    return v1

    .line 6767
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get13(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 6770
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 6772
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$44$1;

    move-object v5, p0

    move v8, p2

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBar$44$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$44;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/NotificationGuts;->post(Ljava/lang/Runnable;)Z

    .line 6810
    return v3
.end method
