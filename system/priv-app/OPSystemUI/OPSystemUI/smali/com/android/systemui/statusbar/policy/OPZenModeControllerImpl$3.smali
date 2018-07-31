.class Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;
.super Lcom/android/systemui/qs/SystemSetting;
.source "OPZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    .line 103
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 106
    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 107
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V

    .line 108
    return-void

    .line 106
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0
.end method
