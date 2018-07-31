.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavBarSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 748
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 749
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 753
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NavigationBar"

    const-string/jumbo v4, "mNavBarSettingObserver onChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 755
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 756
    const-string/jumbo v4, "op_navigation_bar_type"

    .line 755
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 756
    const/4 v4, 0x2

    .line 755
    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    .line 758
    .local v0, "config":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_2

    .line 759
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonState(Z)V

    .line 762
    :cond_2
    if-nez v0, :cond_5

    .line 763
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "systemui_navigation_bar_hided"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    .line 769
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get3(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHideNavBar(Z)V

    .line 771
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setHideNavBarOn(Z)V

    .line 772
    :cond_3
    return-void

    .line 755
    .end local v0    # "config":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "config":Z
    goto :goto_0

    .line 766
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "systemui_navigation_bar_hided"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_6

    :goto_2
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method
