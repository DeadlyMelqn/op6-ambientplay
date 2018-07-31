.class public Lcom/android/systemui/qs/QSSpinner;
.super Landroid/widget/Spinner;
.source "QSSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;

.field private mOpenInitiated:Z

.field private mPopUp:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;

    .line 22
    return-void
.end method


# virtual methods
.method public getPopupWindow()Landroid/widget/ListPopupWindow;
    .locals 5

    .prologue
    .line 46
    iget-object v3, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;

    if-nez v3, :cond_1

    .line 48
    :try_start_0
    const-class v3, Landroid/widget/Spinner;

    const-string/jumbo v4, "mPopup"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 49
    .local v1, "popup":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    .local v2, "popupView":Ljava/lang/Object;
    instance-of v3, v2, Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_2

    .line 53
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "QSSpinner"

    const-string/jumbo v4, "setPopupAnchor:get ListPopupWindow:set Anchor view to it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    check-cast v2, Landroid/widget/ListPopupWindow;

    .end local v2    # "popupView":Ljava/lang/Object;
    iput-object v2, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "popup":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSSpinner;->mPopUp:Landroid/widget/ListPopupWindow;

    return-object v3

    .line 56
    .restart local v1    # "popup":Ljava/lang/reflect/Field;
    .restart local v2    # "popupView":Ljava/lang/Object;
    :cond_2
    :try_start_1
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "QSSpinner"

    const-string/jumbo v4, "setPopupAnchor:no ListPopupWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    .end local v1    # "popup":Ljava/lang/reflect/Field;
    .end local v2    # "popupView":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "QSSpinner"

    const-string/jumbo v4, "Exception in setPopupAnchor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasBeenOpened()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onWindowFocusChanged(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSpinner;->hasBeenOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSpinner;->performClosedEvent()V

    .line 125
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    .line 89
    .local v0, "ret":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    .line 90
    iget-object v1, p0, Lcom/android/systemui/qs/QSSpinner;->mListener:Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/QSSpinner;->mListener:Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;->onSpinnerOpened()V

    .line 93
    :cond_0
    return v0
.end method

.method public performClosedEvent()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSpinner;->mOpenInitiated:Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QSSpinner;->mListener:Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/QSSpinner;->mListener:Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;->onSpinnerClosed()V

    .line 108
    :cond_0
    return-void
.end method

.method public setPopupAnchor(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 66
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "QSSpinner"

    const-string/jumbo v2, "setPopupAnchor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSpinner;->getPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 68
    .local v0, "popupWindow":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 71
    :cond_1
    return-void
.end method

.method public setPopupMargins(IIIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "height"    # I

    .prologue
    .line 74
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "QSSpinner"

    const-string/jumbo v3, "setPopupHeight"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSpinner;->getPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v1

    .line 76
    .local v1, "popupWindow":Landroid/widget/ListPopupWindow;
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 78
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 79
    add-int v2, p5, p2

    add-int/2addr v2, p4

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 81
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public setSpinnerEventsListener(Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;)V
    .locals 0
    .param p1, "onSpinnerEventsListener"    # Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/qs/QSSpinner;->mListener:Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;

    .line 98
    return-void
.end method
