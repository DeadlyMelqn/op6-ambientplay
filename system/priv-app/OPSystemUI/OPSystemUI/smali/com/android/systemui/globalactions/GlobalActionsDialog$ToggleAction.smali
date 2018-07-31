.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 923
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledIconResId:I

    .line 924
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledIconResid:I

    .line 925
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mMessageResId:I

    .line 926
    iput p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledStatusMessageResId:I

    .line 927
    iput p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledStatusMessageResId:I

    .line 928
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1001
    return-void

    .line 1000
    :cond_0
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v8, 0x0

    .line 945
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->willCreate()V

    .line 947
    const v6, 0x1090066

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 950
    .local v5, "v":Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 951
    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 952
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x1020403

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 953
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->isEnabled()Z

    move-result v0

    .line 955
    .local v0, "enabled":Z
    if-eqz v2, :cond_0

    .line 956
    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 957
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 960
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-ne v6, v7, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 961
    .local v3, "on":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 963
    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledIconResId:I

    .line 962
    :goto_1
    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 967
    :cond_2
    if-eqz v4, :cond_3

    .line 968
    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 969
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 972
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 974
    return-object v5

    .line 960
    .end local v3    # "on":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "on":Z
    goto :goto_0

    .line 963
    :cond_5
    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 968
    :cond_6
    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 940
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    .line 978
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const-string/jumbo v1, "GlobalActionsDialog"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 984
    .local v0, "nowOn":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->onToggle(Z)V

    .line 985
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->changeStateFromPress(Z)V

    .line 986
    return-void

    .line 983
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "nowOn":Z
    goto :goto_0
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1007
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 936
    return-void
.end method
