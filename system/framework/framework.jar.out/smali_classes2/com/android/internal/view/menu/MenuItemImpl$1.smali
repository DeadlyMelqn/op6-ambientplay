.class Lcom/android/internal/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/MenuItemImpl;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-static {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->-get0(Lcom/android/internal/view/menu/MenuItemImpl;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 736
    return-void
.end method
