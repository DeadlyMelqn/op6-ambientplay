.class Lcom/android/server/policy/ui/OpGlobalActionEntry$3;
.super Ljava/lang/Object;
.source "OpGlobalActionEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionText(I)V
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
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get3(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;->onMissClicked()V

    .line 126
    return-void
.end method
