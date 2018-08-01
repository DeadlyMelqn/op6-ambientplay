.class Landroid/support/v17/leanback/widget/SearchBar$11;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iput p2, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->val$resId:I

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 814
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    iget v3, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->val$resId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 815
    .local v1, "sound":I
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    .line 816
    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    .line 815
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 817
    return-void
.end method
