.class Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSuggestionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p2, "-this1"    # Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-static {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->-wrap3(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->-wrap4(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
