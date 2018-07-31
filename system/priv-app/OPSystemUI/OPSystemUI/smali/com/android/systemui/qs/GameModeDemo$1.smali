.class Lcom/android/systemui/qs/GameModeDemo$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "GameModeDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/GameModeDemo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/GameModeDemo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/GameModeDemo;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/GameModeDemo;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/GameModeDemo$1;->this$0:Lcom/android/systemui/qs/GameModeDemo;

    .line 35
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
    const/4 v1, 0x1

    .line 38
    if-ne p1, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/GameModeDemo$1;->this$0:Lcom/android/systemui/qs/GameModeDemo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/GameModeDemo;->-wrap0(Lcom/android/systemui/qs/GameModeDemo;Z)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/GameModeDemo$1;->this$0:Lcom/android/systemui/qs/GameModeDemo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/GameModeDemo;->-wrap0(Lcom/android/systemui/qs/GameModeDemo;Z)V

    goto :goto_0
.end method
