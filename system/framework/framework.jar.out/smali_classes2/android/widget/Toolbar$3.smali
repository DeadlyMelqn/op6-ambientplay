.class Landroid/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Toolbar;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/Toolbar$3;->this$0:Landroid/widget/Toolbar;

    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/widget/Toolbar$3;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    .line 1394
    return-void
.end method
