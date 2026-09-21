.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;
    }
.end annotation


# instance fields
.field private mBGLayout:Landroid/view/View;

.field private mBGRadius:I

.field private mBackgroundGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mBackgroundRoundCornerColor:I

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field private mErrorColor:I

.field private mErrorText:Landroid/widget/TextView;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mLabel:Landroid/widget/TextView;

.field private mLabelText:Ljava/lang/String;

.field private mNormalColor:I

.field private mNumText:Landroid/widget/TextView;

.field private mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;

.field private mRootLayout:Landroid/view/View;

.field private mShowBackgroundRound:Z

.field private mShowError:Z

.field private mTextNum:I

.field private mTipInputMax:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    .line 59
    sget p3, Lcom/transsion/widgetslib/R$color;->os_edittext_hios_bg_color:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBackgroundRoundCornerColor:I

    .line 61
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, p3, :cond_65

    .line 64
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 65
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_field_label:I

    if-ne v2, v3, :cond_2a

    .line 66
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabelText:Ljava/lang/String;

    goto :goto_62

    .line 67
    :cond_2a
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_show_error:I

    if-ne v2, v3, :cond_35

    .line 68
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowError:Z

    goto :goto_62

    .line 69
    :cond_35
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_field_radius:I

    if-ne v2, v3, :cond_45

    const/4 v3, 0x6

    .line 70
    invoke-static {p1, v3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGRadius:I

    goto :goto_62

    .line 71
    :cond_45
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_bg_color:I

    if-ne v2, v3, :cond_58

    .line 72
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBackgroundRoundCornerColor:I

    goto :goto_62

    .line 73
    :cond_58
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_show_background_round:I

    if-ne v2, v3, :cond_62

    .line 74
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowBackgroundRound:Z

    :cond_62
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 77
    :cond_65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_field_layout_base:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    .line 85
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_field:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 86
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_text_error_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    .line 87
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowError:Z

    if-eqz v1, :cond_2d

    const/4 v1, 0x4

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_2d
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_second_root_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mRootLayout:Landroid/view/View;

    .line 91
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_field_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGLayout:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorColor:I

    .line 94
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_fill_weakest:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_fill_weakest_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNormalColor:I

    .line 96
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 97
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 99
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8b

    .line 102
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_text_label:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_8b
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isXOSorITEL()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_magin_xos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_magin_xos:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 108
    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setRootPaddingRelative(IIII)V

    .line 111
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_ca

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 114
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 115
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :cond_ca
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowBackgroundRound:Z

    if-eqz v0, :cond_d1

    .line 120
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->showBackgroundRoundCorner()V

    :cond_d1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    .line 209
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b0

    .line 210
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 211
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    const-string v2, "/"

    const-string v3, "%d"

    if-ge v0, v1, :cond_44

    .line 212
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91

    :cond_44
    if-ne v0, v1, :cond_91

    .line 215
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    .line 216
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 218
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_8c

    .line 219
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mToast:Landroid/widget/Toast;

    .line 221
    :cond_8c
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_91
    :goto_91
    if-lez v0, :cond_a1

    .line 226
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b0

    :cond_a1
    if-nez v0, :cond_b0

    .line 228
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    :cond_b0
    :goto_b0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;

    if-eqz v0, :cond_b9

    .line 233
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    invoke-interface {v0, p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;->onInputNum(Landroid/text/Editable;Landroid/widget/TextView;)V

    :cond_b9
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public getBackgroundRoundCornerColor()I
    .registers 1

    .line 261
    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBackgroundRoundCornerColor:I

    return p0
.end method

.method public getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getEditTextLabel()Landroid/widget/TextView;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public getNumText()Landroid/widget/TextView;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 186
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 193
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 194
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public setBackgroundRoundCornerColor(I)V
    .registers 2

    .line 265
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBackgroundRoundCornerColor:I

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .registers 4

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 140
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->updateUnderlineView(Z)V

    return-object p0

    .line 144
    :cond_16
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowError:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x4

    goto :goto_25

    :cond_23
    const/16 v0, 0x8

    :goto_25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->updateUnderlineView(Z)V

    return-object p0
.end method

.method public setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .registers 7

    .line 169
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_num_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    if-gtz p1, :cond_15

    const/4 p1, -0x1

    .line 171
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    const/16 p1, 0x8

    .line 172
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    .line 174
    :cond_15
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 177
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 178
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_63
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;

    return-object p0
.end method

.method public setRootPaddingRelative(IIII)V
    .registers 5

    .line 242
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mRootLayout:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method public showBackgroundRoundCorner()V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner14:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBackgroundRoundCornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 257
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mRootLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateUnderlineView(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 162
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x2

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorColor:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void

    .line 164
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method
