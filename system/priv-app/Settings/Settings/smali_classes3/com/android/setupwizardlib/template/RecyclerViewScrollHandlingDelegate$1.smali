.class Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollHandlingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    .line 61
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    invoke-static {v0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->-get0(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Lcom/android/setupwizardlib/template/RequireScrollMixin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    invoke-static {v1}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->-wrap0(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    .line 65
    return-void
.end method
