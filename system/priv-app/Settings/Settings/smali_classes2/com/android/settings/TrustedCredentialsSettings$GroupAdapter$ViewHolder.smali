.class Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mSubjectPrimaryView:Landroid/widget/TextView;

.field private mSubjectSecondaryView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    .param p1, "-value"    # Landroid/widget/TextView;

    .prologue
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    .param p1, "-value"    # Landroid/widget/TextView;

    .prologue
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    .param p1, "-value"    # Landroid/widget/Switch;

    .prologue
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->this$1:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
    .param p2, "-this1"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V

    return-void
.end method
