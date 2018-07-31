.class Lcom/android/systemui/volume/ZenFooter$1;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenFooter;
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
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->-wrap3(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V

    .line 244
    return-void
.end method

.method public onZenChanged(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->-wrap4(Lcom/android/systemui/volume/ZenFooter;I)V

    .line 240
    return-void
.end method
