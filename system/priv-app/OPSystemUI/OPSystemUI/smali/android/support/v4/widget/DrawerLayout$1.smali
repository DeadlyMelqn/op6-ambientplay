.class Landroid/support/v4/widget/DrawerLayout$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$1;->this$0:Landroid/support/v4/widget/DrawerLayout;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    move-object v0, p1

    .line 341
    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 342
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, p2, v1}, Landroid/support/v4/widget/DrawerLayout;->setChildInsets(Ljava/lang/Object;Z)V

    .line 343
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method