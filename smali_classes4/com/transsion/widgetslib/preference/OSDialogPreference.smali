.class public abstract Lcom/transsion/widgetslib/preference/OSDialogPreference;
.super Landroid/preference/Preference;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mTitleRootPaddingEnd:I

.field private mTitleRootPaddingStart:I

.field private mWhichButtonClicked:I

.field private mXosDiff:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 117
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCancelable:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCanceledOnTouchOutside:Z

    .line 573
    new-instance v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;-><init>(Lcom/transsion/widgetslib/preference/OSDialogPreference;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    .line 69
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 71
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez p3, :cond_25

    .line 75
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 77
    :cond_25
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogMessage:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 78
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 79
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_positiveButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 80
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_negativeButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 81
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogLayout:I

    iget p4, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    .line 82
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogXosDiff:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mXosDiff:Z

    .line 83
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x10103bd

    const p3, 0x10103be

    .line 85
    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_no_curve_content_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingStart:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/widgetslib/R$dimen;->os_no_curve_content_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingEnd:I

    .line 89
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/preference/OSDialogPreference;)Landroid/app/Dialog;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private getDecorView()Landroid/view/View;
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 552
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private invokeMethod(Landroid/preference/PreferenceManager;Ljava/lang/String;)V
    .registers 5

    .line 364
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 365
    const-class v1, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x1

    .line 366
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 367
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private removeDismissCallbacks()V
    .registers 2

    .line 567
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 569
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .registers 2

    .line 388
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    .line 389
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .registers 1

    .line 467
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDialogLayoutResource()I
    .registers 1

    .line 281
    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    return p0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected needInputMethod()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityDestroy()V
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 479
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_10
    :goto_10
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 3

    .line 418
    sget v0, Lcom/transsion/widgetslib/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 421
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p0

    .line 424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 425
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 426
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    const/4 p0, 0x0

    goto :goto_20

    :cond_1e
    const/16 p0, 0x8

    .line 432
    :goto_20
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p0, :cond_29

    .line 433
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 5

    .line 99
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 100
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_38

    .line 101
    check-cast p1, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_38

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_38

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingStart:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingEnd:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_38
    return-void
.end method

.method protected onClick()V
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 439
    iput p2, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mWhichButtonClicked:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 583
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_d

    .line 584
    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_d
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .registers 3

    .line 401
    iget v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 406
    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onDialogClosed(Z)V
    .registers 2

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 445
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "unregisterOnActivityDestroyListener"

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->invokeMethod(Landroid/preference/PreferenceManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 447
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 448
    iget p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mWhichButtonClicked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
    .registers 2

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_22

    .line 504
    :cond_f
    check-cast p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    .line 505
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 506
    iget-boolean v0, p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_21

    .line 507
    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_21
    return-void

    .line 500
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 484
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_20

    .line 489
    :cond_f
    new-instance v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->isDialogShowing:Z

    .line 491
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_20
    :goto_20
    return-object v0
.end method

.method postDismiss()V
    .registers 2

    .line 558
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->removeDismissCallbacks()V

    .line 559
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 562
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/preference/OSDialogPreference;
    .registers 2

    .line 353
    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCancelable:Z

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/preference/OSDialogPreference;
    .registers 2

    .line 358
    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public setDialogIcon(I)V
    .registers 3

    .line 196
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .registers 2

    .line 271
    iput p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    return-void
.end method

.method public setDialogMessage(I)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(I)V
    .registers 3

    .line 139
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeButtonText(I)V
    .registers 3

    .line 250
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .registers 3

    .line 222
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 5

    .line 312
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    .line 314
    iput v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mWhichButtonClicked:I

    .line 316
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mXosDiff:Z

    invoke-direct {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 317
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 319
    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 320
    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 322
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 324
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 325
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    goto :goto_3e

    .line 327
    :cond_37
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 330
    :goto_3e
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V

    .line 331
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 333
    const-string v1, "registerOnActivityDestroyListener"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->invokeMethod(Landroid/preference/PreferenceManager;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCanceledOnTouchOutside:Z

    .line 337
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_65

    .line 340
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 342
    :cond_65
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->needInputMethod()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 343
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 345
    :cond_6e
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
