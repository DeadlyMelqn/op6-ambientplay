.class Landroid/support/v7/preference/CheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/CheckBoxPreference;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/support/v7/preference/CheckBoxPreference$Listener;->this$0:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/CheckBoxPreference;Landroid/support/v7/preference/CheckBoxPreference$Listener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/CheckBoxPreference;
    .param p2, "-this1"    # Landroid/support/v7/preference/CheckBoxPreference$Listener;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference$Listener;-><init>(Landroid/support/v7/preference/CheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/preference/CheckBoxPreference$Listener;->this$0:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 51
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/CheckBoxPreference$Listener;->this$0:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 54
    return-void
.end method
