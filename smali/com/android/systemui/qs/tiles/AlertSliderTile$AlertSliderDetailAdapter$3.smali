.class Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$3;
.super Ljava/lang/Object;
.source "AlertSliderTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DndConfirmedPriorityIntroduction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get4(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get2()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 271
    return-void
.end method
