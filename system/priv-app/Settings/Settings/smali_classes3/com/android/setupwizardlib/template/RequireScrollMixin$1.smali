.class Lcom/android/setupwizardlib/template/RequireScrollMixin$1;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;->val$listener:Landroid/view/View$OnClickListener;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->-get2(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->-get0(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;->pageScrollDown()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
