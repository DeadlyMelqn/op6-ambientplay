.class Lcom/android/systemui/volume/ZenFooter$3;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/SystemUI;Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$3;->this$0:Lcom/android/systemui/volume/ZenFooter;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 137
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$3;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenFooter;->-wrap1(Lcom/android/systemui/volume/ZenFooter;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$3;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenFooter;->-get0(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/SystemUI;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$3;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenFooter;->-get1(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/VolumeDialogImpl;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissWaitForRipple(I)V

    .line 143
    return-void

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$3;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenFooter;->-wrap0(Lcom/android/systemui/volume/ZenFooter;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SILENT_MODE_SETTINGS:Landroid/content/Intent;

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 139
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_RING_MODE_SETTINGS:Landroid/content/Intent;

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
