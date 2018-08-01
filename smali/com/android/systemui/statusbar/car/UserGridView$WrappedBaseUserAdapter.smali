.class final Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WrappedBaseUserAdapter"
.end annotation


# instance fields
.field private mContainer:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/car/UserGridView$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/UserGridView;
    .param p2, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p3, "container"    # Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    .line 369
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 370
    iput-object p3, p0, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;->mContainer:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    .line 371
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unused"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 380
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->notifyDataSetChanged()V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;->mContainer:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->notifyDataSetChanged()V

    .line 382
    return-void
.end method
