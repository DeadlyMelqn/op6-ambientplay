.class Lcom/android/settings/widget/EntityHeaderController$3;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/EntityHeaderController;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/EntityHeaderController;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$3;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController$3;->val$intent:Landroid/content/Intent;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$3;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->-get0(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$3;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v1}, Lcom/android/settings/widget/EntityHeaderController;->-get0(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController$3;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v2}, Lcom/android/settings/widget/EntityHeaderController;->-get3(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v2

    .line 348
    const/16 v3, 0x3f9

    .line 346
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->actionWithSource(Landroid/content/Context;II)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$3;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->-get2(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 350
    return-void
.end method
