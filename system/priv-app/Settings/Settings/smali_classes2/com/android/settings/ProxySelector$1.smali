.class Lcom/android/settings/ProxySelector$1;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ProxySelector;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/ProxySelector$1;->this$0:Lcom/android/settings/ProxySelector;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/ProxySelector$1;->this$0:Lcom/android/settings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/settings/ProxySelector;->saveToDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/ProxySelector$1;->this$0:Lcom/android/settings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 247
    :cond_0
    return-void
.end method
