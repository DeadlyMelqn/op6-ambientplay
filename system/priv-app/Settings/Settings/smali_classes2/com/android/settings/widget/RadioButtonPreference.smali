.class public Lcom/android/settings/widget/RadioButtonPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const v0, 0x7f0101c3

    .line 53
    const v1, 0x101008e

    .line 51
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    .line 47
    const v0, 0x7f040175

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 75
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 78
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    .line 62
    return-void
.end method
