.class Lcom/android/server/policy/ui/OpGlobalActionEntry$1;
.super Ljava/lang/Object;
.source "OpGlobalActionEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionIcon(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get5(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$ActionState;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get5(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$ActionState;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-set0(Lcom/android/server/policy/ui/OpGlobalActionEntry;Z)Z

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get4(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get3(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get0(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;->onClicked(Lcom/android/server/policy/OpGlobalActions$Action;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get3(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;->onMissClicked()V

    goto :goto_0
.end method
