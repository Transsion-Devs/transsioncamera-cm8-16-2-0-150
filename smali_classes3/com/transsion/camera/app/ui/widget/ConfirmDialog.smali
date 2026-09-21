.class public Lcom/transsion/camera/app/ui/widget/ConfirmDialog;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/ConfirmDialog$DIALOG_TYPE;,
        Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;,
        Lcom/transsion/camera/app/ui/widget/ConfirmDialog$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mShowDialogs:Ljava/util/List;


# instance fields
.field private handler:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$UIHandler;

.field private horizontalMarginRatio:F

.field private mCallBack:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;

.field private mCancel:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxTextId:I

.field private mConfirm:Landroid/widget/Button;

.field private mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mDialogType:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$DIALOG_TYPE;

.field private mDialogWindowPosition:I

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsBeautyResetDialog:Z

.field private mLastDialogWindowPosition:I

.field private mMessage:Landroid/widget/TextView;

.field private mMsgId:I

.field private mNeedCheckBox:Z

.field private mNegativeTextId:I

.field private mOrientation:I

.field private mPositiveTextId:I

.field private mScreenFormType:I

.field private mTag:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleId:I

.field private verticalMarginRatio:F


# direct methods
.method public static synthetic $r8$lambda$9LKsQxz8crHwiA480lHJlB424nA(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->lambda$initView$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FrXVhP2kz47Cu8X-Ap61f_WwsHk(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->lambda$initView$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$H2OtB87bqMdP4O1a0Tjd9Y0ll60(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onConfirm(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SxTFs3keugrJJ2N7B8OeAPP8Wu8(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentManager(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;)Landroid/app/FragmentManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mFragmentManager:Landroid/app/FragmentManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monCutoutPositionChanged(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;Landroid/view/WindowInsets;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onCutoutPositionChanged(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ConfirmDialog"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mShowDialogs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    .line 89
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$DIALOG_TYPE;->TYPE_NORMAL:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$DIALOG_TYPE;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogType:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$DIALOG_TYPE;

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mIsBeautyResetDialog:Z

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mLastDialogWindowPosition:I

    return-void
.end method

.method private findView(Landroid/view/View;)V
    .registers 3

    .line 260
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->rootPanel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 261
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mTitle:Landroid/widget/TextView;

    .line 262
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mMessage:Landroid/widget/TextView;

    .line 263
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->button1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    .line 264
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->button2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCancel:Landroid/widget/Button;

    .line 265
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->check_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method private getRotationForDisplayShare(Ljava/lang/Object;)I
    .registers 6

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 352
    const-string p1, "rotation="

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_25

    .line 354
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRotationForDisplayShare invalid index, description: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_25
    add-int/lit8 v0, p1, 0x9

    add-int/lit8 p1, p1, 0xa

    .line 358
    :try_start_29
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_31} :catch_32

    return p0

    :catch_32
    move-exception p1

    .line 360
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRotationForDisplayShare, description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 360
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private initFlipDialog()V
    .registers 3

    .line 234
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_e

    .line 236
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initFlipDialog dialog is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_e
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 241
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initFlipDialog window is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_1c
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$style;->dialog_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v1, 0x200

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 248
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$1;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mTitleId:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setText(Landroid/widget/TextView;I)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mMessage:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mMsgId:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setText(Landroid/widget/TextView;I)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mPositiveTextId:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setText(Landroid/widget/TextView;I)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCancel:Landroid/widget/Button;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mNegativeTextId:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setText(Landroid/widget/TextView;I)V

    .line 276
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_button_layout_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    new-instance v3, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_78

    .line 289
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mNeedCheckBox:Z

    if-eqz v1, :cond_6d

    .line 290
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCheckBoxTextId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_6d
    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_78
    return-void
.end method

.method private synthetic lambda$initView$0(I)V
    .registers 7

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge v0, p1, :cond_3d

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    .line 280
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x2

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr p1, v4

    .line 279
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3d
    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCallBack:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;

    if-eqz p0, :cond_7

    .line 294
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;->onCheckedChanged(Z)V

    :cond_7
    return-void
.end method

.method private needHideDialog(I)Z
    .registers 4

    const/4 v0, 0x3

    if-nez p1, :cond_7

    .line 194
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    if-eq v1, v0, :cond_e

    :cond_7
    if-ne p1, v0, :cond_10

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(IIIIZILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;
    .registers 8

    .line 139
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;-><init>()V

    .line 140
    iput p0, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mTitleId:I

    .line 141
    iput p1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mMsgId:I

    .line 142
    iput p2, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mPositiveTextId:I

    .line 143
    iput p3, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mNegativeTextId:I

    .line 144
    iput-boolean p4, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mNeedCheckBox:Z

    .line 145
    iput p5, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCheckBoxTextId:I

    .line 146
    iput-object p6, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCallBack:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;

    return-object v0
.end method

.method public static newInstance(IIILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;
    .registers 5

    .line 123
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;-><init>()V

    .line 124
    iput p0, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mMsgId:I

    .line 125
    iput p1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mPositiveTextId:I

    .line 126
    iput p2, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mNegativeTextId:I

    const/4 p0, 0x0

    .line 127
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mNeedCheckBox:Z

    .line 128
    iput-object p3, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCallBack:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;

    return-object v0
.end method

.method private onBackPressed()Z
    .registers 1

    .line 543
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismissAllowingStateLoss()V

    const/4 p0, 0x1

    return p0
.end method

.method private onCancel(Landroid/view/View;)V
    .registers 2

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCallBack:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;

    if-eqz p1, :cond_7

    .line 386
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;->onCancel()V

    .line 388
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method private onConfirm(Landroid/view/View;)V
    .registers 2

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCallBack:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;

    if-eqz p1, :cond_7

    .line 379
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;->onConfirm()V

    .line 381
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method private onCutoutPositionChanged(Landroid/view/WindowInsets;)V
    .registers 7

    .line 305
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCutoutPositionChanged"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_13

    .line 309
    const-string p0, "onCutoutPositionChanged view is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 315
    const-string p0, "onCutoutPositionChanged display is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_1f
    :try_start_1f
    const-class v2, Landroid/view/WindowInsets;

    const-string v3, "getDisplayShape"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_28} :catch_85
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_28} :catch_85

    const/4 v3, 0x0

    .line 327
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_37

    .line 329
    const-string p0, "onCutoutPositionChanged displayShape is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_37
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->getRotationForDisplayShare(Ljava/lang/Object;)I

    move-result p1

    .line 334
    new-instance v2, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;-><init>(Landroid/view/Display;)V

    .line 335
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->getSafeInsetLeft(I)I

    move-result v1

    if-lez v1, :cond_49

    .line 336
    iput v3, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    goto :goto_52

    .line 337
    :cond_49
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->getSafeInsetRight(I)I

    move-result p1

    if-lez p1, :cond_52

    const/4 p1, 0x1

    .line 338
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    .line 341
    :cond_52
    :goto_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCutoutPositionChanged mDialogWindowPosition: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastDialogWindowPosition: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mLastDialogWindowPosition:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mLastDialogWindowPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7d

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    if-eq p1, v0, :cond_7c

    goto :goto_7d

    :cond_7c
    return-void

    .line 345
    :cond_7d
    :goto_7d
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mLastDialogWindowPosition:I

    .line 346
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateWindow()V

    return-void

    :catch_85
    move-exception p0

    .line 323
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCutoutPositionChanged getDisplayShapeMethod exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-gtz p2, :cond_b

    const/16 p0, 0x8

    .line 371
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 374
    :cond_b
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateWindow()V
    .registers 20

    move-object/from16 v0, p0

    .line 412
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindow, mScreenFormType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-nez v2, :cond_2c

    goto :goto_3d

    :cond_2c
    const/4 v3, 0x1

    .line 417
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 418
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_37

    goto :goto_3d

    .line 422
    :cond_37
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_3e

    :goto_3d
    return-void

    .line 426
    :cond_3e
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 428
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 429
    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 430
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 432
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 433
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    div-float v6, v5, v6

    iput v6, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    .line 434
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->horizontalMarginRatio:F

    .line 436
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 437
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v6, 0x0

    .line 438
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v7, 0x0

    .line 439
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 440
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 441
    iget v7, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    const/16 v8, 0xb4

    const/16 v9, 0x10e

    const/16 v10, 0x5a

    const/4 v11, -0x2

    if-eq v7, v3, :cond_236

    const/4 v12, 0x4

    if-eq v7, v12, :cond_236

    const/4 v12, 0x5

    if-ne v7, v12, :cond_8d

    goto/16 :goto_236

    :cond_8d
    const v12, 0x3eae147b    # 0.34f

    const/16 v14, 0x15

    const-wide v15, 0x3feccccccccccccdL    # 0.9

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    if-eqz v7, :cond_1c9

    const/4 v13, 0x3

    if-ne v7, v13, :cond_a0

    goto/16 :goto_1c9

    :cond_a0
    const/4 v6, 0x2

    if-ne v7, v6, :cond_ea

    .line 478
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    if-eq v1, v10, :cond_d8

    if-ne v1, v9, :cond_aa

    goto :goto_d8

    :cond_aa
    if-eqz v1, :cond_ae

    if-ne v1, v8, :cond_26a

    :cond_ae
    const/16 v1, 0x55

    .line 484
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 485
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const v1, 0x3ccccccd    # 0.025f

    .line 486
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/16 v1, 0x399

    .line 487
    invoke-virtual {v4, v1, v11}, Landroid/view/Window;->setLayout(II)V

    .line 489
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_26a

    .line 490
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_26a

    .line 479
    :cond_d8
    :goto_d8
    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x3e1eb852    # 0.155f

    .line 480
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 481
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    double-to-int v0, v0

    invoke-virtual {v4, v11, v0}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_26a

    :cond_ea
    const/4 v6, 0x7

    if-ne v7, v6, :cond_26a

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateWindow] mDialogWindowPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mIsBeautyResetDialog:Z

    if-eqz v1, :cond_10c

    const v1, 0x3d89374c    # 0.067f

    .line 496
    iput v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    .line 498
    :cond_10c
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    const v6, 0x800013

    if-eq v1, v10, :cond_18d

    if-ne v1, v9, :cond_117

    goto/16 :goto_18d

    :cond_117
    if-nez v1, :cond_152

    .line 509
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    if-nez v1, :cond_12f

    .line 510
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_filp_x_0:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_142

    :cond_12f
    if-ne v3, v1, :cond_142

    .line 512
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_filp_x_180:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 514
    :cond_142
    :goto_142
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 515
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 516
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    mul-double/2addr v0, v15

    double-to-int v0, v0

    invoke-virtual {v4, v0, v11}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_26a

    :cond_152
    if-ne v1, v8, :cond_26a

    .line 519
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    if-ne v3, v1, :cond_16a

    .line 520
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_filp_x_180:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_17d

    :cond_16a
    if-nez v1, :cond_17d

    .line 522
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_filp_x_0:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 524
    :cond_17d
    :goto_17d
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 525
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 526
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    mul-double/2addr v0, v15

    double-to-int v0, v0

    invoke-virtual {v4, v0, v11}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_26a

    .line 499
    :cond_18d
    :goto_18d
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mDialogWindowPosition:I

    if-nez v1, :cond_1a3

    .line 500
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_filp_x_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1b6

    :cond_1a3
    if-ne v1, v3, :cond_1b6

    .line 502
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_filp_x_270:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 504
    :cond_1b6
    :goto_1b6
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 505
    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 506
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3febd70a3d70a3d7L    # 0.87

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {v4, v11, v0}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_26a

    .line 455
    :cond_1c9
    :goto_1c9
    iget-boolean v7, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mIsBeautyResetDialog:Z

    if-eqz v7, :cond_1d2

    const v7, 0x3cb43958    # 0.022f

    .line 456
    iput v7, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    .line 458
    :cond_1d2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateWindow, verticalMarginRatio: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    if-eq v1, v10, :cond_228

    if-ne v1, v9, :cond_1f0

    goto :goto_228

    :cond_1f0
    if-eqz v1, :cond_1f4

    if-ne v1, v8, :cond_26a

    :cond_1f4
    const/16 v1, 0x51

    .line 465
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 466
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->verticalMarginRatio:F

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 467
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    mul-double/2addr v1, v15

    double-to-int v1, v1

    invoke-virtual {v4, v1, v11}, Landroid/view/Window;->setLayout(II)V

    .line 469
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_26a

    .line 470
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mIsBeautyResetDialog:Z

    if-eqz v1, :cond_21d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_21d

    .line 471
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_26a

    .line 473
    :cond_21d
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_26a

    .line 460
    :cond_228
    :goto_228
    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 461
    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 462
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    double-to-int v0, v0

    invoke-virtual {v4, v11, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_26a

    :cond_236
    :goto_236
    const/16 v1, 0x11

    .line 444
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 445
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    if-eq v1, v10, :cond_258

    if-ne v1, v9, :cond_241

    goto :goto_258

    :cond_241
    if-eqz v1, :cond_245

    if-ne v1, v8, :cond_26a

    .line 449
    :cond_245
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_w_expend:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0, v11}, Landroid/view/Window;->setLayout(II)V

    goto :goto_26a

    .line 447
    :cond_258
    :goto_258
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->confirm_dialog_w_expend:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 446
    invoke-virtual {v4, v11, v0}, Landroid/view/Window;->setLayout(II)V

    .line 531
    :cond_26a
    :goto_26a
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clearDialogList()V
    .registers 1

    .line 590
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mShowDialogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dismiss()V
    .registers 4

    .line 568
    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 570
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 4

    .line 577
    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 579
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissAllowingStateLoss exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public hasNavigationBar(Landroid/app/Activity;)Z
    .registers 6

    .line 594
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p0, :cond_47

    move v1, v0

    .line 596
    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 597
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 598
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "navigationBarBackground"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 p0, 0x1

    return p0

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_47
    return v0
.end method

.method public isDialogShow()Z
    .registers 4

    .line 584
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mShowDialogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 585
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialogShow,size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 393
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 394
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateWindow()V

    return-void
.end method

.method public onActivityPause()V
    .registers 3

    .line 399
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onActivityPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->handler:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$UIHandler;

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onConfigurationChanged"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 203
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne v1, p3, :cond_d

    .line 204
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->confirm_dialog_filp_layout:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_13

    .line 207
    :cond_d
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->confirm_dialog_layout:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 211
    :goto_13
    new-instance p2, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$UIHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$UIHandler;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;Lcom/transsion/camera/app/ui/widget/ConfirmDialog-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->handler:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$UIHandler;

    .line 213
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->findView(Landroid/view/View;)V

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->initView()V

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 219
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    if-ne v1, p2, :cond_2b

    .line 220
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->initFlipDialog()V

    .line 223
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 224
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->bg_dialog_night_round_corner:I

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_50

    .line 226
    :cond_43
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->bg_dialog_round_corner:I

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 228
    :goto_50
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 158
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 159
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mShowDialogs:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mCallBack:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;

    if-eqz p0, :cond_25

    .line 162
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;->onDismiss()V

    :cond_25
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p1, p2, :cond_8

    .line 537
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onBackPressed()Z

    move-result p0

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 407
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 408
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public setBeautyResetDialog(Z)V
    .registers 2

    .line 612
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mIsBeautyResetDialog:Z

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 6

    .line 549
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 550
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 551
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mTag:Ljava/lang/String;

    .line 553
    :try_start_1a
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 554
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 555
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 556
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 558
    :cond_31
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 559
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mShowDialogs:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p0

    .line 561
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateDialogLayout(II)V
    .registers 10

    .line 167
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDialogLayout, screenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_60

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    if-ne v1, p1, :cond_2d

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    if-eq v1, p2, :cond_60

    .line 169
    :cond_2d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->needHideDialog(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismissAllowingStateLoss()V

    .line 172
    :cond_36
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_47

    if-eq v1, v5, :cond_47

    if-eq v1, v4, :cond_47

    if-eq v1, v3, :cond_47

    if-ne v1, v2, :cond_60

    :cond_47
    if-eq p1, v6, :cond_51

    if-eq v1, v4, :cond_51

    if-eq p1, v5, :cond_51

    if-eq p1, v3, :cond_51

    if-ne p1, v2, :cond_60

    .line 182
    :cond_51
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->handler:Lcom/transsion/camera/app/ui/widget/ConfirmDialog$UIHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 183
    const-string/jumbo v1, "updateDialogLayout send MSG_SHOW_DIALOG"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    :cond_60
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mScreenFormType:I

    .line 187
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mOrientation:I

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_6c

    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_6c
    return-void
.end method
