.class public Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpringFloatingOvalTestB"


# instance fields
.field defaultImageBackgroundSize:F

.field private mBackgroundColor:I

.field private mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

.field private mDefaultImageSize:F

.field private mFloatImageTintColor:Landroid/content/res/ColorStateList;

.field private mImgView:Landroid/widget/ImageView;

.field private mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

.field private mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRequireAlpha:Z

.field private mShadowColor:I

.field private mShadowDy:I

.field private mShadowRadius:I

.field private mUseDefaultInset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowRadius:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowDy:I

    .line 63
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingTop:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_shadow_ver_inset_bottom_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingBottom:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_shadow_inset_start_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingLeft:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_shadow_inset_end_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingRight:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mDefaultImageSize:F

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->defaultImageBackgroundSize:F

    .line 74
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 76
    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 77
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->getDefaultTinStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mFloatImageTintColor:Landroid/content/res/ColorStateList;

    .line 78
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 81
    sget v1, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_width:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->defaultImageBackgroundSize:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 83
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_height:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->defaultImageBackgroundSize:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 85
    sget v4, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_src:I

    .line 86
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 87
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_background_color:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    .line 88
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 87
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mBackgroundColor:I

    .line 89
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_use_default_inset:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mUseDefaultInset:Z

    .line 90
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_tint_color:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 91
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_tint_color:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mFloatImageTintColor:Landroid/content/res/ColorStateList;

    .line 93
    :cond_d3
    sget-boolean v5, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz v5, :cond_e9

    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_tint_color:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 94
    sget v5, Lcom/transsion/widgetslib/R$color;->os_platform_clickable_color:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_ee

    .line 96
    :cond_e9
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mFloatImageTintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 98
    :goto_ee
    sget v5, Lcom/transsion/widgetslib/R$attr;->os_shadow_color_level2_attr:I

    filled-new-array {v5}, [I

    move-result-object v5

    .line 99
    invoke-virtual {p1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 100
    sget v6, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level2_hios:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v5, v3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 101
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_shadow_color:I

    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    .line 103
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_require_alpha:I

    .line 104
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mRequireAlpha:Z

    .line 105
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mRequireAlpha:Z

    if-eqz p1, :cond_11f

    .line 107
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->requireAlpha()V

    .line 109
    :cond_11f
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p2, v1

    .line 110
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int p2, v2

    .line 111
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackgroundColor(I)V

    .line 115
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setShadowColor(I)V

    .line 116
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mDefaultImageSize:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImagePadding(F)V

    .line 117
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    invoke-direct {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startValue(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const v1, 0x3f6147ae    # 0.88f

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->finalValue(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    .line 118
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->floatVlaueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const/high16 v1, 0x43af0000    # 350.0f

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startStiffness(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endStiffness(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const v1, 0x3f99999a    # 1.2f

    .line 119
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->dampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endDampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->view(Landroid/view/View;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 120
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->setOnClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$3;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$3;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 130
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->setOnTouchListener(Landroid/view/View$OnTouchListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 138
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->addOnAnimationEndListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 145
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->addOnAnimationUpdateListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->build()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    .line 154
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    .line 156
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Landroid/view/View$OnTouchListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    return-object p0
.end method

.method private setDefaultInset()V
    .registers 4

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2e

    .line 181
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_margin_end_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_margin_bottom_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public getDefaultTinStateList(I)Landroid/content/res/ColorStateList;
    .registers 3

    const/4 p0, 0x0

    .line 292
    new-array p0, p0, [I

    filled-new-array {p0}, [[I

    move-result-object p0

    .line 293
    filled-new-array {p1}, [I

    move-result-object p1

    .line 294
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public getImage()Landroid/widget/ImageView;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 167
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 169
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mRequireAlpha:Z

    if-nez v1, :cond_18

    .line 170
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 173
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mUseDefaultInset:Z

    if-eqz v0, :cond_1f

    .line 174
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setDefaultInset()V

    :cond_1f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 262
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 264
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowDy:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 266
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_45
    return-void
.end method

.method public requireAlpha()V
    .registers 5

    .line 162
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingLeft:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingTop:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingRight:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setImageBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(I)V
    .registers 5

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x10100a7

    .line 228
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 229
    new-array v2, v2, [I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    .line 230
    filled-new-array {p1, p1}, [I

    move-result-object p1

    .line 231
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 232
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 233
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(II)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x10100a7

    .line 217
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 218
    new-array v2, v2, [I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    .line 219
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 220
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 202
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImagePadding(F)V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 252
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    float-to-int p1, v0

    .line 253
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageSize(II)V
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 243
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 244
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 245
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mDefaultImageSize:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImagePadding(F)V

    return-void
.end method

.method public setOnAnimationEndListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-void
.end method

.method public setOnAnimationUpdateListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-void
.end method

.method public setOnClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    return-void
.end method

.method public setOnFabTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setShadowColor(I)V
    .registers 2

    .line 237
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUseDefaultInset(Z)V
    .registers 2

    .line 189
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mUseDefaultInset:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 286
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
