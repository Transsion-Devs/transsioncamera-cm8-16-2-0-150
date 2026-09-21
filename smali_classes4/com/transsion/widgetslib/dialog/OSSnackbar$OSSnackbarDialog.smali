.class public final Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/OSSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OSSnackbarDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;
    }
.end annotation


# instance fields
.field private final mButton$delegate:Lkotlin/Lazy;

.field private final mDelayDismissRunnable$delegate:Lkotlin/Lazy;

.field private final mHandler$delegate:Lkotlin/Lazy;

.field private final mTextView$delegate:Lkotlin/Lazy;

.field private final showDuration:I


# direct methods
.method public static synthetic $r8$lambda$l6HevSgX6nP53EflcSldKr5q8g0(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->setButtonVisible$lambda$1(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->showDuration:I

    .line 77
    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mTextView$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mTextView$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mTextView$delegate:Lkotlin/Lazy;

    .line 80
    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mButton$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mButton$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mButton$delegate:Lkotlin/Lazy;

    .line 83
    sget-object p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mHandler$2;->INSTANCE:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mHandler$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mHandler$delegate:Lkotlin/Lazy;

    .line 87
    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mDelayDismissRunnable$delegate:Lkotlin/Lazy;

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_8d

    const/16 v0, 0x20

    .line 92
    invoke-virtual {p2, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/16 v0, 0x8

    .line 96
    invoke-virtual {p2, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/16 v0, 0x50

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, p3, :cond_77

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_77

    .line 110
    :cond_63
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 111
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_8a

    .line 113
    :cond_70
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_button_navigation_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_8a

    .line 104
    :cond_77
    :goto_77
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 105
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_portrait_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_8a

    .line 107
    :cond_84
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_portrait_button_navigation_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_8a
    float-to-int v0, v0

    .line 102
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    :cond_8d
    sget p2, Lcom/transsion/widgetslib/R$layout;->ossnackbar_layout:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 120
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 121
    :cond_a8
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 123
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_bd

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_bd

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result p2

    goto :goto_bf

    .line 125
    :cond_bd
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 127
    :goto_bf
    sget p3, Lcom/transsion/widgetslib/R$dimen;->os_pop_tip_slide_width_weight:I

    invoke-static {p1, p3}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result p3

    int-to-float p2, p2

    mul-float/2addr p2, p3

    const/16 p3, 0x12

    .line 129
    invoke-static {p1, p3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const/4 p1, 0x3

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 130
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p2

    mul-int/lit8 p3, p1, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 131
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_108

    .line 132
    :cond_e4
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p3, :cond_108

    .line 133
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 134
    sget p3, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_textview_max_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 133
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 135
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object p1

    .line 136
    sget p3, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_button_max_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 135
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 138
    :cond_108
    :goto_108
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 140
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    const/high16 p3, 0x42440000    # 49.0f

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p2

    const/4 p3, 0x0

    .line 138
    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object p1

    .line 144
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    const/high16 p2, 0x42580000    # 54.0f

    invoke-static {p0, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    .line 142
    invoke-virtual {p1, p3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private final getMButton()Landroid/widget/Button;
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mButton>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method private final getMDelayDismissRunnable()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mDelayDismissRunnable$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    return-object p0
.end method

.method private final getMHandler()Landroid/os/Handler;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private static final setButtonVisible$lambda$1(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 161
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 172
    sget-object v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->Companion:Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->setMOSSnackbar(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V

    .line 173
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    :cond_1c
    if-eqz v1, :cond_21

    .line 174
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 178
    :cond_21
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMDelayDismissRunnable()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 179
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMDelayDismissRunnable()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3a
    return-void
.end method

.method public final getMTextView()Landroid/widget/TextView;
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->mTextView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mTextView>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getShowDuration()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->showDuration:I

    return p0
.end method

.method public final setButtonVisible(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    if-nez p2, :cond_9

    goto :goto_25

    .line 157
    :cond_9
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$$ExternalSyntheticLambda0;-><init>(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 154
    :cond_25
    :goto_25
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMButton()Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 5

    .line 167
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 168
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMDelayDismissRunnable()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object v1

    iget p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->showDuration:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
