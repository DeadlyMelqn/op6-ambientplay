.class Lcom/android/systemui/recents/views/TaskStackView$13;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->hideDismissAllButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$13;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    .line 2780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$13;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->-set0(Lcom/android/systemui/recents/views/TaskStackView;Z)Z

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$13;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackView;->-get2(Lcom/android/systemui/recents/views/TaskStackView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2785
    return-void
.end method
