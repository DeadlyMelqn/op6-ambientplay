.class final synthetic Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_14167(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$1;->$m$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method
