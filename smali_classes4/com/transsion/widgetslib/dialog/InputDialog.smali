.class public Lcom/transsion/widgetslib/dialog/InputDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;,
        Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OSLengthFilter;,
        Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;
    }
.end annotation


# static fields
.field public static final SHOW_INPUT_DELAY:I = 0xc8


# instance fields
.field private mActiveColor:I

.field private mAppDialogFragment:Z

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field private mErrorColor:I

.field private mErrorText:Landroid/widget/TextView;

.field private mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

.field private mInputView:Landroid/view/View;

.field mIsPasswordChecked:Z

.field private mNormalColor:I

.field private mNumText:Landroid/widget/TextView;

.field private mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field mPasswordListener:Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;

.field private mRootLayout:Landroid/view/View;

.field private mShow:Z

.field private mShowSoftInput:Z

.field private mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

.field private mTipInputMax:Ljava/lang/String;

.field private needEmptyUnable:Z


# direct methods
.method public static synthetic $r8$lambda$gGagmbxZsnd8rM-E3C74BfdBsW4(Lcom/transsion/widgetslib/dialog/InputDialog;)V
    .registers 2

    .line 547
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    .line 547
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;->getEditTextWR()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 548
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 549
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 550
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->showSoftInput(Landroid/widget/EditText;)V

    :cond_17
    return-void
.end method

.method public static synthetic $r8$lambda$mg7IjYGc9L2A1BPzZDALjAkZyYo(Lcom/transsion/widgetslib/dialog/InputDialog;Z)V
    .registers 4

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 575
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mIsPasswordChecked:Z

    .line 576
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 577
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_inputtext_noeye:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 578
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateType()V

    goto :goto_45

    :cond_24
    const/4 p1, 0x1

    .line 580
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mIsPasswordChecked:Z

    .line 581
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 582
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_inputtext_eye:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 583
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateType()V

    .line 585
    :goto_45
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 586
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    .line 89
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v1, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 90
    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    .line 91
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setInputDialog(Z)V

    .line 92
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorColor:I

    .line 93
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNormalColor:I

    .line 94
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_fill_primary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mActiveColor:I

    .line 98
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    if-nez p1, :cond_3d

    .line 99
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->addInputView()V

    .line 101
    :cond_3d
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->initView()V

    .line 102
    new-instance p1, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-direct {p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    .line 103
    new-instance p1, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-direct {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/InputDialog;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/dialog/InputDialog;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/content/Context;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/dialog/InputDialog;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNormalColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/dialog/InputDialog;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mActiveColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/dialog/InputDialog;)Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method private addInputView()V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_input_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    .line 291
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method private initView()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->input_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    .line 108
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 109
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mTipInputMax:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getRootLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mRootLayout:Landroid/view/View;

    return-void
.end method

.method private transHintEllipsizeString(Ljava/lang/CharSequence;)V
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v0, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 263
    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog$2;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->installInputDialogFoldEngine(Landroid/view/Window;)V

    .line 308
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$3;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setOnPromptDialogStatusChangedListener(Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;)V

    .line 324
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, 0x30

    goto :goto_28

    :cond_26
    const/16 v2, 0x10

    :goto_28
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 326
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShowSoftInput:Z

    if-eqz v1, :cond_5c

    .line 327
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v1, :cond_5c

    .line 328
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_4a

    .line 329
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 331
    :cond_4a
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$4;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$4;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 351
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 356
    :cond_5c
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mAppDialogFragment:Z

    if-nez v1, :cond_68

    .line 357
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$5;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_68
    return-object v0
.end method

.method public dismissOprate(Landroid/content/DialogInterface;)V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->release()V

    .line 369
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 370
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 374
    :cond_21
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_28

    .line 375
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 377
    :cond_28
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz p1, :cond_2f

    .line 378
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->clearTextChangedListeners()V

    :cond_2f
    const/4 p1, 0x0

    .line 380
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z

    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 2

    .line 409
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getNeedEmptyUnable()Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    return p0
.end method

.method public getmEditText()Landroid/widget/EditText;
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getmErrorText()Landroid/widget/TextView;
    .registers 1

    .line 417
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getmOSMaterialEditText()Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-object p0
.end method

.method initPasswordHideMode()V
    .registers 3

    .line 573
    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mPasswordListener:Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;

    .line 589
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$6;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$6;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    const/4 p1, -0x1

    .line 391
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_25

    iget-boolean p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    if-eqz p2, :cond_25

    .line 392
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_25
    return-void
.end method

.method public removeTextWatcher(Landroid/text/TextWatcher;)V
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public requireHungStatus(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->setMRequireHungStatus(Z)V

    return-object p0
.end method

.method public setAppDialogFragment(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 2

    .line 225
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mAppDialogFragment:Z

    return-object p0
.end method

.method public setAutoDismiss(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setAutoDismiss(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setError(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    .line 203
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getErrorText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 204
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setOSMaterialEditTextError(Z)V

    return-object p0
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    .line 210
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getErrorText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setOSMaterialEditTextError(Z)V

    return-object p0
.end method

.method public setGetInputPositiveButton(ILcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setGetInputPositiveButton(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setGetInputPositiveButton(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setHasContent(Z)V
    .registers 3

    .line 435
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-void
.end method

.method public setInput(Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0, v0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setInput(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setInput(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->transHintEllipsizeString(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_f

    .line 254
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-interface {p3, p1}, Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;->onInput(Landroid/widget/EditText;)V

    :cond_f
    return-object p0
.end method

.method public setInputNum(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 7

    .line 274
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p3, :cond_10

    .line 275
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 277
    :cond_10
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_1e
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->transHintEllipsizeString(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    .line 281
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance p2, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    invoke-direct {p2, p0, p3}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p4, :cond_3a

    .line 284
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    invoke-interface {p4, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;->onInputNum(Landroid/widget/EditText;Landroid/widget/TextView;)V

    :cond_3a
    return-object p0
.end method

.method public setInputText(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 5

    .line 230
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setInputText(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->setMessage(II)Lcom/transsion/widgetslib/dialog/InputDialog;

    return-object p0
.end method

.method public setMessage(II)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(II)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->setMessage(Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/InputDialog;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setNeedEmptyUnable(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOSMaterialEditTextError(Z)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz p0, :cond_7

    .line 197
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setErrorLine(Z)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :cond_7
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setPasswordHideMode()Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 2

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->setPasswordHideMode(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    return-object p0
.end method

.method public setPasswordHideMode(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mPasswordListener:Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;

    if-nez v0, :cond_7

    .line 566
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->initPasswordHideMode()V

    .line 568
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mPasswordListener:Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;->onUpdate(Z)V

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setShowSoftInput(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 2

    .line 295
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShowSoftInput:Z

    return-object p0
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 1

    .line 384
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 385
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-object p0
.end method

.method public showSoftInput()V
    .registers 5

    .line 546
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
