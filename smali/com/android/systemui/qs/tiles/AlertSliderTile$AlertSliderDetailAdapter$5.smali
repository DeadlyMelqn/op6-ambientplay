.class Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;
.super Ljava/lang/Object;
.source "AlertSliderTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 288
    invoke-static {}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get1(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrefChange allowReminders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-wrap1(Lcom/android/systemui/qs/tiles/AlertSliderTile;ZI)I

    move-result v1

    .line 290
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get7(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get7(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 291
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get7(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 289
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-wrap4(Lcom/android/systemui/qs/tiles/AlertSliderTile;IIII)V

    .line 292
    return-void
.end method
