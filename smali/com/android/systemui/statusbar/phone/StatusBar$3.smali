.class Lcom/android/systemui/statusbar/phone/StatusBar$3;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 579
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 582
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 584
    .local v1, "newConfiguration":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_enabled"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 583
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 585
    .local v0, "mUseNavBar":I
    if-ne v0, v6, :cond_1

    .line 586
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    .line 587
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    .line 592
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method
