.class final synthetic Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->lambda$-com_android_settings_applications_autofill_DefaultAutofillPicker_2800(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
