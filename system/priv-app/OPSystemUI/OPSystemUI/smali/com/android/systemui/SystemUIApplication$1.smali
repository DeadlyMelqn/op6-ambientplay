.class Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 137
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get1(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SystemUIService"

    const-string/jumbo v3, "BOOT_COMPLETED received"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v2, p0}, Lcom/android/systemui/SystemUIApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/SystemUIApplication;->-set0(Lcom/android/systemui/SystemUIApplication;Z)Z

    .line 145
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get3(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get2(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    array-length v0, v2

    .line 147
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 148
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get2(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
