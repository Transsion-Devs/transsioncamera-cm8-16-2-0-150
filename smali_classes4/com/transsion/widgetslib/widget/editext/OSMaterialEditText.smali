.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;,
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;,
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;,
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OSMaterialEditText"


# instance fields
.field private LEFT:I

.field private LEFT_BIG_IMAGE_TYPE_1:I

.field private LEFT_BIG_IMAGE_TYPE_2:I

.field private NONE:I

.field private RIGHT:I

.field private RIGHT_BIG_IMAGE:I

.field private mActiveColor:I

.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mDialogMode:Z

.field private mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field private mEditTextPaddingStart:I

.field private mErrorColor:I

.field private mErrorText:Landroid/widget/TextView;

.field private mErrorTextString:Ljava/lang/String;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHasContent:Z

.field private mHasFocus:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mHelpTextString:Ljava/lang/String;

.field private mHiOSBackgroundMultiMode:I

.field private mHintTextString:Ljava/lang/String;

.field public mIsHiOSLayout:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLabelText:Ljava/lang/String;

.field public mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftImage:Landroid/widget/ImageView;

.field public mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftSecondImage:Landroid/widget/ImageView;

.field private mLeftText:Ljava/lang/String;

.field private mLeftTextView:Landroid/widget/TextView;

.field private mLeftlayout:Landroid/view/View;

.field private mNormalColor:I

.field private mNumText:Landroid/widget/TextView;

.field private mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;

.field private mRightButtonText:Ljava/lang/String;

.field private mRightDivider:Landroid/view/View;

.field private mRightImage:Landroid/widget/ImageView;

.field public mRightImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightText:Ljava/lang/String;

.field private mRightTextButton:Landroid/widget/TextView;

.field private mRightTextView:Landroid/widget/TextView;

.field private mRightlayout:Landroid/view/View;

.field private mRootEditTextLayout:Landroid/view/View;

.field private mRootLayout:Landroid/view/View;

.field private mShowDelete:Z

.field private mShowDivider:Z

.field private mShowError:Z

.field private mShowHelp:Z

.field private mTextNum:I

.field private mTipInputMax:Ljava/lang/String;

.field private mType:I

.field private mUnderLineMarginLeft:I

.field private mUnderLineMarginRight:I

.field private mUnderLinePadding:I

.field private mUnderlineView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$4r8EJtWdgAHOS5DysBGG00QsRUc([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 4

    const/4 v0, 0x0

    .line 452
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3f

    .line 453
    aget-object v1, p0, v0

    if-nez v1, :cond_24

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeBackgroundOnlyHiOS -> osMaterialEditTexts["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSMaterialEditText"

    invoke-static {v2, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_24
    if-nez v0, :cond_2c

    .line 459
    sget-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V

    goto :goto_3c

    .line 462
    :cond_2c
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_37

    .line 463
    sget-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V

    goto :goto_3c

    .line 466
    :cond_37
    sget-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3f
    return-void
.end method

.method public static synthetic $r8$lambda$LdLoeCGEbvO2sTH4XWKPj3PIdME([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 5

    const/4 v0, 0x1

    .line 401
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2a

    .line 402
    aget-object v1, p0, v0

    if-nez v1, :cond_24

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncOSEditTextArrayPaddingStart -> osMaterialEditTexts["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSMaterialEditText"

    invoke-static {v2, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 406
    :cond_24
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncOSEditTextPaddingStart(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method

.method public static synthetic $r8$lambda$QbJIdC4gDbJk7YNW9XyvlsFwqdI(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 6

    .line 199
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginLeft:I

    if-nez v0, :cond_3c

    .line 199
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginRight:I

    if-nez v0, :cond_3c

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLinePadding:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLinePadding:I

    add-int/2addr v1, v2

    .line 202
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_37

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    add-int/2addr v1, v2

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    :cond_3c
    return-void
.end method

.method public static synthetic $r8$lambda$q6CBS9CvLiK2LijDznlHvUAf2lo([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 5

    const/4 v0, 0x1

    .line 429
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2a

    .line 430
    aget-object v1, p0, v0

    if-nez v1, :cond_24

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncUnderlineMarginArray -> osMaterialEditTexts["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSMaterialEditText"

    invoke-static {v2, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 434
    :cond_24
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncUnderlineMargin(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method

.method public static synthetic $r8$lambda$xSIwl7vgsZbNEBMhJP5s2lYzeRo(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Landroid/view/View;)V
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 197
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 49
    iput p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->NONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT_BIG_IMAGE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_1:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_2:I

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLinePadding:I

    .line 115
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    .line 116
    sget v0, Lcom/transsion/widgetslib/R$color;->os_edittext_hios_bg_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mBackgroundColor:I

    .line 118
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, p3

    :goto_36
    if-ge v0, p2, :cond_126

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 122
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_layout_type:I

    if-ne v1, v2, :cond_48

    .line 123
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    goto/16 :goto_122

    .line 124
    :cond_48
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_show_delete:I

    if-ne v1, v2, :cond_54

    .line 125
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    goto/16 :goto_122

    .line 126
    :cond_54
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_image:I

    if-ne v1, v2, :cond_60

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_122

    .line 128
    :cond_60
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_label:I

    if-ne v1, v2, :cond_6c

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabelText:Ljava/lang/String;

    goto/16 :goto_122

    .line 130
    :cond_6c
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_text:I

    if-ne v1, v2, :cond_78

    .line 131
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightText:Ljava/lang/String;

    goto/16 :goto_122

    .line 132
    :cond_78
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_show_divide_line:I

    if-ne v1, v2, :cond_84

    .line 133
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDivider:Z

    goto/16 :goto_122

    .line 134
    :cond_84
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_image:I

    if-ne v1, v2, :cond_90

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_122

    .line 136
    :cond_90
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_image_secord:I

    if-ne v1, v2, :cond_9c

    .line 137
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_122

    .line 138
    :cond_9c
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_text:I

    if-ne v1, v2, :cond_a8

    .line 139
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftText:Ljava/lang/String;

    goto/16 :goto_122

    .line 140
    :cond_a8
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_button_text:I

    if-ne v1, v2, :cond_b4

    .line 141
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightButtonText:Ljava/lang/String;

    goto/16 :goto_122

    .line 142
    :cond_b4
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_error:I

    if-ne v1, v2, :cond_bf

    .line 143
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    goto :goto_122

    .line 144
    :cond_bf
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_help:I

    if-ne v1, v2, :cond_ca

    .line 145
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowHelp:Z

    goto :goto_122

    .line 146
    :cond_ca
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_error_text:I

    if-ne v1, v2, :cond_d5

    .line 147
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorTextString:Ljava/lang/String;

    goto :goto_122

    .line 148
    :cond_d5
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_help_text:I

    if-ne v1, v2, :cond_e0

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpTextString:Ljava/lang/String;

    goto :goto_122

    .line 150
    :cond_e0
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_bg_color:I

    if-ne v1, v2, :cond_f3

    .line 151
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mBackgroundColor:I

    goto :goto_122

    .line 152
    :cond_f3
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_hint:I

    if-ne v1, v2, :cond_fe

    .line 153
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHintTextString:Ljava/lang/String;

    goto :goto_122

    .line 154
    :cond_fe
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_right_padding:I

    if-ne v1, v2, :cond_10d

    .line 155
    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLinePadding:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLinePadding:I

    goto :goto_122

    .line 156
    :cond_10d
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_hios_background_multi_mode:I

    if-ne v1, v2, :cond_118

    .line 157
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    goto :goto_122

    .line 158
    :cond_118
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_dialog_mode:I

    if-ne v1, v2, :cond_122

    .line 159
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDialogMode:Z

    :cond_122
    :goto_122
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_36

    .line 162
    :cond_126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/content/Context;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 167
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    .line 168
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_text_layout_hios:I

    goto :goto_18

    :cond_16
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_text_layout_base:I

    :goto_18
    invoke-static {v2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTipInputMax:Ljava/lang/String;

    .line 171
    sget v0, Lcom/transsion/widgetslib/R$id;->oet_edit_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 173
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_left_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    .line 174
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    .line 175
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_second_root_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    .line 176
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_underline_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    .line 177
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    .line 178
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_error_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    .line 179
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_help_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpText:Landroid/widget/TextView;

    .line 180
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_limit_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    .line 181
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_delete_all:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    .line 183
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_left_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftTextView:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_left_edit_image_first:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    .line 185
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_left_edit_image_second:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    .line 186
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_image_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    .line 187
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightDivider:Landroid/view/View;

    .line 188
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_text_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextButton:Landroid/widget/TextView;

    .line 189
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextView:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorColor:I

    .line 192
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_border_default:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_border_default_hios:I

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNormalColor:I

    .line 193
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_border_focus:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_border_focus_hios:I

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mActiveColor:I

    .line 195
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_100

    .line 196
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(I)V

    .line 197
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    new-instance v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_100
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHintTextString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateType()V

    .line 211
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_124

    .line 212
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_label:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabel:Landroid/widget/TextView;

    .line 213
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_124
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_133

    .line 218
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorTextString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    .line 222
    :cond_133
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowHelp:Z

    if-eqz v0, :cond_145

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_145

    .line 223
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpTextString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    .line 227
    :cond_145
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setShowDelete(Z)V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDialogMode:Z

    if-eqz v0, :cond_17a

    .line 232
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_edit_text_padding_dialog_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootLayoutPaddingOnlyHiOS(I)V

    .line 233
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    if-eqz v0, :cond_17a

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-nez v2, :cond_17a

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    :cond_17a
    return-void
.end method

.method public static varargs mergeBackgroundOnlyHiOS([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 3

    .line 440
    array-length v0, p0

    if-nez v0, :cond_4

    goto :goto_15

    :cond_4
    const/4 v0, 0x0

    .line 443
    aget-object v0, p0, v0

    if-nez v0, :cond_11

    .line 445
    const-string p0, "OSMaterialEditText"

    const-string v0, "mergeBackgroundOnlyHiOS -> osMaterialEditTexts[0] is null !"

    invoke-static {p0, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 448
    :cond_11
    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-nez v1, :cond_16

    :goto_15
    return-void

    .line 451
    :cond_16
    new-instance v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda0;-><init>([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static varargs mergeOSMaterialEditTextStatic([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 1

    .line 380
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncOSEditTextArrayPaddingStart([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    .line 381
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncUnderlineMarginArray([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    .line 382
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mergeBackgroundOnlyHiOS([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    return-void
.end method

.method public static varargs syncOSEditTextArrayPaddingStart([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 3

    .line 392
    array-length v0, p0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 395
    aget-object v0, p0, v0

    if-nez v0, :cond_11

    .line 397
    const-string p0, "OSMaterialEditText"

    const-string v0, "syncOSEditTextArrayPaddingStart -> osMaterialEditTexts[0] is null !"

    invoke-static {p0, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 400
    :cond_11
    new-instance v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda2;-><init>([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static varargs syncUnderlineMarginArray([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 3

    .line 420
    array-length v0, p0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 423
    aget-object v0, p0, v0

    if-nez v0, :cond_11

    .line 425
    const-string p0, "OSMaterialEditText"

    const-string v0, "syncUnderlineMarginArray -> osMaterialEditTexts[0] is null !"

    invoke-static {p0, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 428
    :cond_11
    new-instance v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda1;-><init>([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    .line 519
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 520
    :goto_9
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasContent:Z

    .line 521
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateDeleteButton(ZZ)V

    .line 523
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_31

    .line 524
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :cond_31
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;

    if-eqz v0, :cond_3a

    .line 528
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    invoke-interface {v0, p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;->onInputNum(Landroid/text/Editable;Landroid/widget/TextView;)V

    :cond_3a
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public getDeleteButton()Landroid/widget/ImageView;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDialogMode()Z
    .registers 1

    .line 717
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDialogMode:Z

    return p0
.end method

.method public getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .registers 1

    .line 589
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getEditTextLabel()Landroid/widget/TextView;
    .registers 1

    .line 736
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public getEditTextPaddingStart()I
    .registers 1

    .line 597
    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditTextPaddingStart:I

    return p0
.end method

.method public getErrorText()Landroid/widget/TextView;
    .registers 1

    .line 741
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getLeftImage()Landroid/widget/ImageView;
    .registers 1

    .line 793
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLeftSecondImage()Landroid/widget/ImageView;
    .registers 1

    .line 798
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLeftTextView()Landroid/widget/TextView;
    .registers 1

    .line 788
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getLeftlayout()Landroid/view/View;
    .registers 1

    .line 761
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    return-object p0
.end method

.method public getNumTextView()Landroid/widget/TextView;
    .registers 1

    .line 803
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightDivider()Landroid/view/View;
    .registers 1

    .line 756
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightDivider:Landroid/view/View;

    return-object p0
.end method

.method public getRightImage()Landroid/widget/ImageView;
    .registers 1

    .line 731
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getRightText()Landroid/widget/TextView;
    .registers 1

    .line 746
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightTextButton()Landroid/widget/TextView;
    .registers 1

    .line 751
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightlayout()Landroid/view/View;
    .registers 1

    .line 766
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    return-object p0
.end method

.method public getRootEditTextLayout()Landroid/view/View;
    .registers 1

    .line 774
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    return-object p0
.end method

.method public getRootLayout()Landroid/view/View;
    .registers 1

    .line 770
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 636
    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    return p0
.end method

.method public getUnderLineMarginLeft()I
    .registers 1

    .line 628
    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginLeft:I

    return p0
.end method

.method public getUnderLineMarginRight()I
    .registers 1

    .line 632
    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginRight:I

    return p0
.end method

.method public getUnderLinePadding()I
    .registers 1

    .line 593
    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLinePadding:I

    return p0
.end method

.method public getUnderlineView()Landroid/view/View;
    .registers 2

    .line 779
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 782
    :cond_6
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    return-object p0
.end method

.method public isShowDelete()Z
    .registers 1

    .line 605
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 241
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setSelfOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 249
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 250
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    .line 561
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    .line 562
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    .line 563
    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    goto :goto_15

    :cond_11
    const/4 p1, 0x0

    .line 565
    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    .line 567
    :goto_15
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasContent:Z

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateDeleteButton(ZZ)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .line 477
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public removeColorTransparency(I)I
    .registers 2

    const p0, 0xffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public setBackgroundMultiModeOnlyHiOS(I)V
    .registers 14

    .line 331
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-nez v0, :cond_6

    goto/16 :goto_bb

    .line 335
    :cond_6
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    .line 336
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 337
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 338
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    .line 339
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mBackgroundColor:I

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->removeColorTransparency(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2c
    const/16 p1, 0x8

    .line 341
    new-array p1, p1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p1, v1

    aput v2, p1, v0

    const/4 v3, 0x2

    aput v2, p1, v3

    const/4 v4, 0x3

    aput v2, p1, v4

    const/4 v5, 0x4

    aput v2, p1, v5

    const/4 v6, 0x5

    aput v2, p1, v6

    const/4 v7, 0x6

    aput v2, p1, v7

    const/4 v8, 0x7

    aput v2, p1, v8

    .line 342
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_edit_corner:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 343
    iget-boolean v9, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDialogMode:Z

    if-eqz v9, :cond_64

    .line 344
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_edit_corner_dialog_mode:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 347
    :cond_64
    iget v9, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    sget-object v10, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eq v9, v11, :cond_78

    iget v9, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    sget-object v11, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 348
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_80

    .line 350
    :cond_78
    aput v2, p1, v4

    aput v2, p1, v3

    aput v2, p1, v0

    aput v2, p1, v1

    .line 353
    :cond_80
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    sget-object v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v0, v3, :cond_94

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    sget-object v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 354
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_9c

    .line 356
    :cond_94
    aput v2, p1, v8

    aput v2, p1, v7

    aput v2, p1, v6

    aput v2, p1, v5

    .line 359
    :cond_9c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 360
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_bc

    iget p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHiOSBackgroundMultiMode:I

    sget-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 364
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_bb

    goto :goto_bc

    :cond_bb
    :goto_bb
    return-void

    .line 365
    :cond_bc
    :goto_bc
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V
    .registers 2

    .line 327
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(I)V

    return-void
.end method

.method public setDialogMode(Z)V
    .registers 2

    .line 721
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDialogMode:Z

    return-void
.end method

.method public setEditTextPaddingStart(I)V
    .registers 2

    .line 601
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditTextPaddingStart:I

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .registers 5

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    .line 257
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-object p0

    .line 261
    :cond_1a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x4

    goto :goto_29

    :cond_27
    const/16 v0, 0x8

    :goto_29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-object p0
.end method

.method public setErrorLine(Z)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-object p0
.end method

.method public setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .registers 4

    .line 269
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-nez v0, :cond_5

    return-object p0

    .line 273
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowHelp:Z

    .line 275
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p0

    .line 281
    :cond_21
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowHelp:Z

    if-eqz v0, :cond_2d

    const/4 v1, 0x4

    :cond_2d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 2

    .line 554
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz p0, :cond_7

    .line 555
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .registers 7

    const/16 v0, 0x8

    if-gtz p1, :cond_d

    const/4 p1, -0x1

    .line 534
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    .line 535
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    .line 537
    :cond_d
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    .line 538
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;

    invoke-direct {v3, p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    aput-object v3, p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 541
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p1, :cond_2f

    .line 543
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowHelp:Z

    .line 547
    :cond_2f
    :goto_2f
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;

    return-object p0
.end method

.method public setRootLayoutPaddingOnlyHiOS(I)V
    .registers 2

    .line 376
    invoke-virtual {p0, p1, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootLayoutPaddingOnlyHiOS(II)V

    return-void
.end method

.method public setRootLayoutPaddingOnlyHiOS(II)V
    .registers 5

    .line 370
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_13

    .line 371
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, p1, p0, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_13
    return-void
.end method

.method public setRootPaddingRelative(IIII)V
    .registers 5

    .line 472
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setShowDelete(Z)V
    .registers 5

    .line 609
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_25

    .line 611
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    :cond_17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_30

    .line 620
    :cond_25
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    :goto_30
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)V
    .registers 2

    .line 640
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    .line 641
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateType()V

    return-void
.end method

.method public setType(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;)V
    .registers 2

    .line 645
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setType(I)V

    return-void
.end method

.method public setUnderlineMargin(II)V
    .registers 5

    .line 318
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginLeft:I

    .line 319
    iput p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginRight:I

    .line 321
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 322
    iget p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginLeft:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginRight:I

    invoke-virtual {p1, p2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 323
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public syncOSEditTextPaddingStart(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 3

    .line 386
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setType(I)V

    .line 387
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditTextPaddingStart:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setEditTextPaddingStart(I)V

    .line 388
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    return-void
.end method

.method public syncUnderlineMargin(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 3

    .line 412
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_c

    .line 413
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginLeft:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginRight:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    return-void

    .line 415
    :cond_c
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginLeft:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginRight:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    return-void
.end method

.method public updateDeleteButton(ZZ)V
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_e

    .line 571
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_e

    :cond_c
    move p2, v0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p2, 0x1

    .line 572
    :goto_f
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    .line 573
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_36

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    if-eqz v2, :cond_36

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 575
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    new-instance p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_29
    const/16 p1, 0x8

    .line 578
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    new-instance p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_36
    return-void
.end method

.method public updateTextPadding()V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 303
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_2:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2c

    .line 304
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditTextPaddingStart:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 305
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_48

    .line 308
    :cond_2c
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 309
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditTextPaddingStart:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 312
    :goto_48
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_53

    .line 313
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginLeft:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderLineMarginRight:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    :cond_53
    return-void
.end method

.method public updateType()V
    .registers 6

    .line 649
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b8

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT_BIG_IMAGE:I

    if-ne v0, v1, :cond_d

    goto/16 :goto_b8

    .line 680
    :cond_d
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT:I

    if-eq v0, v1, :cond_19

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_1:I

    if-eq v0, v1, :cond_19

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_2:I

    if-ne v0, v1, :cond_157

    .line 681
    :cond_19
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 683
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :cond_32
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    .line 688
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    :cond_42
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_52

    .line 693
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    :cond_52
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT:I

    if-eq v0, v1, :cond_157

    .line 698
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isXOSorITEL()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 699
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    .line 701
    :cond_7d
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9a

    .line 702
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 704
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    :cond_9a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_157

    .line 708
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 709
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 710
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 650
    :cond_b8
    :goto_b8
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_cd

    .line 652
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 656
    :cond_cd
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT_BIG_IMAGE:I

    if-ne v0, v1, :cond_126

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_126

    .line 657
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isXOSorITEL()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 658
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    .line 660
    :cond_fc
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_126

    .line 661
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 663
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 664
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    :cond_126
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDivider:Z

    if-eqz v0, :cond_12f

    .line 669
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :cond_12f
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_143

    .line 673
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    :cond_143
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_157

    .line 677
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_157
    return-void
.end method

.method public updateUnderlineView(ZZ)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_24

    .line 493
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p1, :cond_1c

    .line 494
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1c

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 498
    :cond_1c
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 500
    :cond_24
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p2, :cond_41

    .line 501
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    if-eqz p2, :cond_41

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_41

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->removeColorTransparency(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_41
    if-eqz p1, :cond_4b

    .line 506
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mActiveColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 508
    :cond_4b
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNormalColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
