.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonViewHolder"
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;

    .prologue
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;->button:Landroid/widget/Button;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 100
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    const v0, 0x7f0a025b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;->button:Landroid/widget/Button;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/view/View;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "-this2"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/view/View;)V

    return-void
.end method
