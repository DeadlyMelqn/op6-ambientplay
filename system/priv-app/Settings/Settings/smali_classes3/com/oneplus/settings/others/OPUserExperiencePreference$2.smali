.class Lcom/oneplus/settings/others/OPUserExperiencePreference$2;
.super Ljava/lang/Object;
.source "OPUserExperiencePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPUserExperiencePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPUserExperiencePreference;

.field final synthetic val$experienceEheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPUserExperiencePreference;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/others/OPUserExperiencePreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$2;->this$0:Lcom/oneplus/settings/others/OPUserExperiencePreference;

    iput-object p2, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$2;->val$experienceEheckbox:Landroid/widget/CheckBox;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$2;->val$experienceEheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$2;->val$experienceEheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    return-void
.end method
