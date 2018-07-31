.class Lcom/android/systemui/volume/ZenModePanel$3;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/Interaction$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-wrap2(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 1020
    return-void
.end method
