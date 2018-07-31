.class Lcom/android/server/policy/OpGlobalActions$2;
.super Ljava/lang/Object;
.source "OpGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpGlobalActions;->initViewEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OpGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OpGlobalActions$2;->this$0:Lcom/android/server/policy/OpGlobalActions;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public OnQuit()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions$2;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/OpGlobalActions;->-wrap0(Lcom/android/server/policy/OpGlobalActions;)V

    .line 194
    return-void
.end method
