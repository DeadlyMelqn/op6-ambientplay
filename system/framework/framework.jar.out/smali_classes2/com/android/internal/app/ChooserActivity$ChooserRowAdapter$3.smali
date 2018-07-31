.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$column:I

.field final synthetic val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$column:I

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1455
    sget-boolean v0, Lcom/android/internal/app/ChooserActivity;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ChooserActivity onLongClick column:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$column:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 1458
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    .line 1459
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$column:I

    aget v2, v2, v3

    .line 1458
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1457
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 1460
    return v4
.end method
