.class public final Landroid/view/textclassifier/TextClassifierConstants;
.super Ljava/lang/Object;
.source "TextClassifierConstants.java"


# static fields
.field static final DEFAULT:Landroid/view/textclassifier/TextClassifierConstants;

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierConstants"

.field private static final SMART_SELECTION_DARK_LAUNCH:Ljava/lang/String; = "smart_selection_dark_launch"

.field private static final SMART_SELECTION_DARK_LAUNCH_DEFAULT:Z = false

.field private static final SMART_SELECTION_ENABLED_FOR_EDIT_TEXT:Ljava/lang/String; = "smart_selection_enabled_for_edit_text"

.field private static final SMART_SELECTION_ENABLED_FOR_EDIT_TEXT_DEFAULT:Z = true


# instance fields
.field private final mDarkLaunch:Z

.field private final mSuggestSelectionEnabledForEditableText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/view/textclassifier/TextClassifierConstants;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierConstants;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierConstants;->DEFAULT:Landroid/view/textclassifier/TextClassifierConstants;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "settings"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 66
    .local v1, "parser":Landroid/util/KeyValueListParser;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    const-string/jumbo v2, "smart_selection_dark_launch"

    .line 73
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    .line 75
    const-string/jumbo v2, "smart_selection_enabled_for_edit_text"

    .line 76
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    .line 77
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "TextClassifierConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad TextClassifier settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierConstants;
    .locals 1
    .param p0, "settings"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Landroid/view/textclassifier/TextClassifierConstants;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassifierConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isDarkLaunch()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    return v0
.end method

.method public isSuggestSelectionEnabledForEditableText()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    return v0
.end method
