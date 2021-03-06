.class public Lcom/android/settings/datausage/SpinnerPreference;
.super Landroid/support/v7/preference/Preference;
.source "SpinnerPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/SpinnerPreference$1;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCurrentObject:Ljava/lang/Object;

.field private mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPosition:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/SpinnerPreference;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/SpinnerPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/SpinnerPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/SpinnerPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/SpinnerPreference;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/SpinnerPreference;

    .prologue
    iget v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mPosition:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/SpinnerPreference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/datausage/SpinnerPreference;
    .param p1, "-value"    # Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/datausage/SpinnerPreference;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/datausage/SpinnerPreference;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mPosition:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Lcom/android/settings/datausage/SpinnerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/SpinnerPreference$1;-><init>(Lcom/android/settings/datausage/SpinnerPreference;)V

    .line 75
    iput-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 35
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/SpinnerPreference;->setLayoutResource(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    const v1, 0x7f0a013f

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 65
    .local v0, "spinner":Landroid/widget/Spinner;
    iget-object v1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget v1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 68
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    const v0, 0x7f0a013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 73
    return-void
.end method

.method public setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V
    .locals 0
    .param p1, "cycleAdapter"    # Lcom/android/settings/datausage/CycleAdapter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/datausage/SpinnerPreference;->notifyChanged()V

    .line 42
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 47
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mPosition:I

    .line 57
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget v1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/datausage/SpinnerPreference;->notifyChanged()V

    .line 59
    return-void
.end method
