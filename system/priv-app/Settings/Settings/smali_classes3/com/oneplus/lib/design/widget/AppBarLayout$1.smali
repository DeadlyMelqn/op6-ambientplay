.class Lcom/oneplus/lib/design/widget/AppBarLayout$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/AppBarLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$1;->this$0:Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$1;->this$0:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
