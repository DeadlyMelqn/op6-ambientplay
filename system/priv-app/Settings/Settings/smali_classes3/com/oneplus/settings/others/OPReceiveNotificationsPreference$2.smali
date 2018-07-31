.class Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$2;
.super Ljava/lang/Object;
.source "OPReceiveNotificationsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

.field final synthetic val$mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$2;->this$0:Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

    iput-object p2, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    return-void
.end method
