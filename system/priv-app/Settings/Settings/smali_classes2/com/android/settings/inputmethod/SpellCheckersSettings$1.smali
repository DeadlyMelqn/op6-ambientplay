.class Lcom/android/settings/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field final synthetic val$currentSci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 209
    if-nez p2, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 215
    .local v1, "subtypeId":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->-wrap0(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 216
    const-string/jumbo v3, "selected_spell_checker_subtype"

    .line 215
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->-wrap3(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    .line 225
    return-void

    .line 212
    .end local v1    # "subtypeId":I
    :cond_0
    invoke-static {p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->-wrap1(I)I

    move-result v0

    .line 213
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v1

    .restart local v1    # "subtypeId":I
    goto :goto_0
.end method
