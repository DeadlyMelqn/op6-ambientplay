.class Lcom/ice/box/fragments/Home$4;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/Home;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/Home;

.field final synthetic val$fragmentClass:Ljava/lang/String;

.field final synthetic val$fragmentTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/Home;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/ice/box/fragments/Home$4;->this$0:Lcom/ice/box/fragments/Home;

    iput-object p2, p0, Lcom/ice/box/fragments/Home$4;->val$fragmentTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/ice/box/fragments/Home$4;->val$fragmentClass:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/ice/box/fragments/Home$4;->this$0:Lcom/ice/box/fragments/Home;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/Home;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 408
    iget-object v1, p0, Lcom/ice/box/fragments/Home$4;->val$fragmentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/ice/box/fragments/Home$4;->this$0:Lcom/ice/box/fragments/Home;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/Home;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/high16 v1, 0x10b0000

    const v2, 0x10b0001

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 411
    iget-object v1, p0, Lcom/ice/box/fragments/Home$4;->this$0:Lcom/ice/box/fragments/Home;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/fragments/Home;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.ice.box.fragments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ice/box/fragments/Home$4;->val$fragmentClass:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    const v1, 0x7f090040

    invoke-virtual {v0, v1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
