.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$5;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 105
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-wrap3(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V

    .line 109
    return-void
.end method
