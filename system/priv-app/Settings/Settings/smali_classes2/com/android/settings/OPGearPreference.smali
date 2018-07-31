.class public Lcom/android/settings/OPGearPreference;
.super Lcom/android/settingslib/OPRestrictedPreference;
.source "OPGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OPGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/OPRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x7f040178

    invoke-virtual {p0, v0}, Lcom/android/settings/OPGearPreference;->setWidgetLayoutResource(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/OPRestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 50
    const v1, 0x7f0a02c4

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "gear":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/OPGearPreference;->mOnGearClickListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    return-void

    .line 55
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02c4

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/OPGearPreference;->mOnGearClickListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/OPGearPreference;->mOnGearClickListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/OPGearPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/OPGearPreference;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/OPGearPreference$OnGearClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/OPGearPreference$OnGearClickListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/OPGearPreference;->mOnGearClickListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/OPGearPreference;->notifyChanged()V

    .line 45
    return-void
.end method
