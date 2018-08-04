.class final Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;
.super Ljava/lang/Object;
.source "AlertSliderTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AlertSliderTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlertSliderDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;
    }
.end annotation


# instance fields
.field private mButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field private final mButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private mEvents:Landroid/widget/Switch;

.field private mEventsSwitchContainer:Landroid/widget/RelativeLayout;

.field private mMessageBox:Landroid/widget/RelativeLayout;

.field private mMessageText:Landroid/widget/TextView;

.field private mReminders:Landroid/widget/Switch;

.field private mRemindersSwitchContainer:Landroid/widget/RelativeLayout;

.field private mZenPriorityIntroduction:Landroid/widget/RelativeLayout;

.field private mZenPriorityIntroductionConfirm:Landroid/widget/ImageView;

.field private mZenPriorityIntroductionCustomize:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)Lcom/android/systemui/volume/SegmentedButtons;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)Landroid/widget/Switch;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEvents:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)Landroid/widget/Switch;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mReminders:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->refresh(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/AlertSliderTile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/AlertSliderTile;Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile;)V

    return-void
.end method

.method private refresh(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f110558

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 334
    packed-switch p1, :pswitch_data_0

    .line 367
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mRemindersSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEventsSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroduction:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 375
    :goto_0
    return-void

    .line 337
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1103ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mRemindersSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEventsSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroduction:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mRemindersSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEventsSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroduction:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 357
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mRemindersSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEventsSwitchContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "confirmed":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroductionConfirm:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroduction:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 243
    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    .line 247
    .local v0, "details":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-wrap2(Lcom/android/systemui/qs/tiles/AlertSliderTile;)I

    move-result v1

    .line 249
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v2, v7}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-set0(Lcom/android/systemui/qs/tiles/AlertSliderTile;Z)Z

    .line 251
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-set1(Lcom/android/systemui/qs/tiles/AlertSliderTile;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;

    .line 253
    if-nez p2, :cond_0

    .line 254
    const v2, 0x7f0a0037

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 255
    const v2, 0x7f0a0039

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageText:Landroid/widget/TextView;

    .line 256
    const v2, 0x7f0a0038

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mMessageBox:Landroid/widget/RelativeLayout;

    .line 257
    const v2, 0x7f0a02ee

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroduction:Landroid/widget/RelativeLayout;

    .line 258
    const v2, 0x7f0a02ef

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroductionConfirm:Landroid/widget/ImageView;

    .line 259
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroductionConfirm:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v2, 0x7f0a02f0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroductionCustomize:Landroid/widget/TextView;

    .line 266
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mZenPriorityIntroductionCustomize:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v2, 0x7f0a027e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mRemindersSwitchContainer:Landroid/widget/RelativeLayout;

    .line 274
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mRemindersSwitchContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v2, 0x7f0a0299

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mReminders:Landroid/widget/Switch;

    .line 284
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mReminders:Landroid/widget/Switch;

    new-instance v3, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 294
    const v2, 0x7f0a027d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEventsSwitchContainer:Landroid/widget/RelativeLayout;

    .line 295
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEventsSwitchContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$6;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v2, 0x7f0a0298

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEvents:Landroid/widget/Switch;

    .line 305
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEvents:Landroid/widget/Switch;

    new-instance v3, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$7;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 315
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 317
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 315
    const v4, 0x7f11022e

    .line 316
    const v5, 0x7f1103d8

    .line 315
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 318
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 320
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 318
    const v4, 0x7f110230

    .line 319
    const v5, 0x7f1103da

    .line 318
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 321
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mReminders:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v3, v7}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-wrap0(Lcom/android/systemui/qs/tiles/AlertSliderTile;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 325
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mEvents:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v3, v8}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-wrap0(Lcom/android/systemui/qs/tiles/AlertSliderTile;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 327
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 328
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->refresh(I)V

    .line 330
    return-object v0

    .line 244
    .end local v0    # "details":Landroid/widget/LinearLayout;
    .end local v1    # "state":I
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 245
    const v3, 0x7f0d001b

    .line 244
    invoke-virtual {v2, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0    # "details":Landroid/widget/LinearLayout;
    goto/16 :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 238
    const/16 v0, 0x95

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get3()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSilentMode(I)V
    .locals 4
    .param p1, "silentState"    # I

    .prologue
    .line 398
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    .line 399
    .local v0, "silentMode":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 400
    const-string/jumbo v2, "alert_slider_silent_mode"

    const/4 v3, -0x2

    .line 399
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 401
    return-void

    .line 398
    .end local v0    # "silentMode":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "silentMode":I
    goto :goto_0
.end method

.method public setToggleState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 234
    return-void
.end method
