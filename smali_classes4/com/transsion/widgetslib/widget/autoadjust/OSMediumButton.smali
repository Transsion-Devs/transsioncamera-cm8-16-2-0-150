.class public Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

.field private mIsLeftButtonOverLimit:Z

.field private mIsRightButtonOverLimit:Z

.field private mIsVertical:Z

.field private mOccupyingSpace:Landroid/view/View;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;


# direct methods
.method public static synthetic $r8$lambda$TwususwYTkupKI42eVoMKTYfuUs(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;II)V
    .registers 6

    .line 102
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 102
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 103
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinLetterSpacing()F

    move-result v1

    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFI)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsLeftButtonOverLimit:Z

    .line 104
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->judgeButtonLayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$lvzfbMjpnXia1ULHFZOJzx5-PuA(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;II)V
    .registers 6

    .line 107
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 107
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 108
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinLetterSpacing()F

    move-result v1

    const/4 v2, 0x1

    .line 107
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFI)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsRightButtonOverLimit:Z

    .line 109
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->judgeButtonLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->init()V

    .line 34
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->MediumButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, p3, :cond_d7

    .line 37
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 38
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_first_text:I

    if-ne v2, v3, :cond_27

    .line 39
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d3

    .line 40
    :cond_27
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_second_text:I

    if-ne v2, v3, :cond_36

    .line 41
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d3

    .line 42
    :cond_36
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_style_mod:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_b8

    .line 43
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v4, :cond_93

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_49

    goto/16 :goto_d3

    .line 58
    :cond_49
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_button_on_color_outline_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 59
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_outline_white:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 60
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_button_on_color_outline_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 61
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_outline_white:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    goto :goto_d3

    .line 52
    :cond_6e
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_red_color_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 54
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_red_color_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 55
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    goto :goto_d3

    .line 46
    :cond_93
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 47
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 48
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 49
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    goto :goto_d3

    .line 64
    :cond_b8
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_first_enable:I

    if-ne v2, v3, :cond_c6

    .line 65
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_d3

    .line 66
    :cond_c6
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_second_enable:I

    if-ne v2, v3, :cond_d3

    .line 67
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_d3
    :goto_d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 70
    :cond_d7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_auto_adjust_double_botton_layout_base:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 v0, 0x11

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 85
    sget v0, Lcom/transsion/widgetslib/R$id;->os_auto_aj_left_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 86
    sget v0, Lcom/transsion/widgetslib/R$id;->os_auto_aj_right_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 87
    sget v0, Lcom/transsion/widgetslib/R$id;->os_auto_aj_linear_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mRootLayout:Landroid/widget/LinearLayout;

    .line 88
    sget v0, Lcom/transsion/widgetslib/R$id;->os_auto_aj_occupation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mOccupyingSpace:Landroid/view/View;

    .line 90
    new-instance v0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextLine(I)V

    .line 93
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextLine(I)V

    .line 95
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinButtonHeightDp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxButtonHeightDp(I)V

    .line 96
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinButtonHeightDp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxButtonHeightDp(I)V

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinTextSizeSp(I)V

    .line 99
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinTextSizeSp(I)V

    .line 101
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    new-instance v1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    new-instance v1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;)V

    return-void
.end method


# virtual methods
.method public getFirstButton()Lcom/transsion/widgetslib/view/OSBigButton;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    return-object p0
.end method

.method public getSecondButton()Lcom/transsion/widgetslib/view/OSBigButton;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mSecondButton:Lcom/transsion/widgetslib/view/OSBigButton;

    return-object p0
.end method

.method public judgeButtonLayout()V
    .registers 8

    .line 146
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsLeftButtonOverLimit:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsRightButtonOverLimit:Z

    if-eqz v0, :cond_9

    goto :goto_54

    .line 152
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsVertical:Z

    if-eqz v0, :cond_65

    .line 153
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mOccupyingSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 155
    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinLetterSpacing()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mFirstButton:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 156
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mOccupyingSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v5, v0

    div-int/lit8 v6, v5, 0x2

    const/4 v5, 0x1

    .line 154
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFII)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 157
    new-instance v0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 147
    :cond_54
    :goto_54
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsVertical:Z

    if-nez v0, :cond_65

    .line 148
    new-instance v0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsLeftButtonOverLimit:Z

    .line 150
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsRightButtonOverLimit:Z

    :cond_65
    return-void
.end method

.method public updateLayoutToHorizontal()V
    .registers 2

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsVertical:Z

    .line 115
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public updateLayoutToVertical()V
    .registers 2

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mIsVertical:Z

    .line 132
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
