.class Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;
.super Ljava/lang/Object;
.source "DarkIconDispatcherImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->addDarkReceiver(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;->val$imageView:Landroid/widget/ImageView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    float-to-int v2, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;->val$imageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkIconColor:I

    if-nez v2, :cond_1

    :cond_0
    iget v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconTintColor:I

    :cond_1
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public updateViews(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;->val$imageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateViews(F)V

    return-void
.end method
