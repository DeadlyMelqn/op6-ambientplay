.class Lcom/oneplus/settings/apploader/OPApplicationLoader$3;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;->onPostExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-get1(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-get1(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_0
    return-void
.end method