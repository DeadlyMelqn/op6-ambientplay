.class Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;
.super Lcom/android/systemui/qs/GlobalSetting;
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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    .line 112
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 1
    .param p1, "threekey"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->-wrap3(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V

    .line 116
    return-void
.end method
