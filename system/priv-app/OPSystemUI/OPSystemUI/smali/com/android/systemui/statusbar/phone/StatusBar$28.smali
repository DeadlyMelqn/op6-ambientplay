.class Lcom/android/systemui/statusbar/phone/StatusBar$28;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 8739
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 8742
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8743
    const-string/jumbo v2, "oem_acc_key_lock_mode"

    const/4 v3, 0x0

    .line 8742
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 8743
    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->FOOT:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->ordinal()I

    move-result v2

    .line 8742
    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 8744
    .local v0, "keylock":Z
    :goto_0
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keylock ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8745
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get3(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 8746
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set1(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 8747
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get23(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8748
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap18(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 8751
    :cond_0
    return-void

    .line 8742
    .end local v0    # "keylock":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "keylock":Z
    goto :goto_0
.end method
