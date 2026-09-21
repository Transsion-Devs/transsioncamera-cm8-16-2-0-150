.class public Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;,
        Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;,
        Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;,
        Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mColorPickerListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;

.field private mColorPickerTouchListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;

.field private mCurrentPressItemRadius:F

.field private mCurrentPressItemShadowRadius:F

.field private final mHorizontalItemInterval:F

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mItems:Ljava/util/List;

.field private mMaxCenterX:F

.field private final mMaxColumnCount:I

.field private final mNormalItemRadius:F

.field private final mNormalPaint:Landroid/graphics/Paint;

.field private mPressItemAnimator:Landroid/animation/AnimatorSet;

.field private final mPressItemRadius:F

.field private final mPressItemShadowRadius:F

.field private final mPressPaint:Landroid/graphics/Paint;

.field private mRowCount:I

.field private final mSelectColor:I

.field private mSelectIndex:I

.field private final mSelectItemRadius:F

.field private final mSelectPaint:Landroid/graphics/Paint;

.field private mTouchX:F

.field private mTouchY:F

.field private final mVerticalItemInterval:F


# direct methods
.method public static synthetic $r8$lambda$0DNjiDohCiYf3-iVO16cKyBYgaw(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->lambda$updateSelected$2(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D23gdCpUKqW5lrgbFf6U3F1QFEU(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->lambda$updateSelected$3(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NsEKtL6_Zr7rVUnhH1cDL4_EvSM(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->lambda$startItemPressAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RL5IN88tvt4rfNuqVI_YD-qVCjc(ILcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)Z
    .registers 2

    .line 267
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmValue(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RTJTjFzCq463Mq2Z8e6JQmxahK8(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)Ljava/lang/Integer;
    .registers 1

    .line 269
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmIndex(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sRv7jumo8I9XAcGqE7_KYTRcpq8(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->lambda$startItemPressAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ColorPickerView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 23

    move-object/from16 v0, p0

    .line 120
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, -0x1

    .line 52
    iput v1, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    .line 88
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 123
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$integer;->default_color_picker_view_max_column_count:I

    .line 124
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 125
    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_color_picker_view_normal_item_radius:I

    .line 126
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 127
    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_color_picker_view_select_item_interval:I

    .line 128
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 129
    sget v8, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_color_picker_view_press_item_radius:I

    .line 130
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 131
    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_color_picker_view_press_item_shadow_radius:I

    .line 132
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 133
    sget v10, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_color_picker_view_horizontal_item_interval:I

    .line 134
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 135
    sget v11, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_color_picker_view_vertical_item_interval:I

    .line 136
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 137
    sget v12, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_color_picker_view_item_normal_color:I

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 139
    sget v13, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_color_picker_view_item_select_color:I

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 142
    sget-object v13, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView:[I

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v4, p3

    move/from16 v3, p4

    invoke-virtual {v14, v15, v13, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 144
    :try_start_89
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_maxColumnCount:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxColumnCount:I

    .line 146
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_normalItemRadius:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    .line 148
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_selectItemRadius:I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectItemRadius:F

    .line 150
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_pressItemRadius:I

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemRadius:F

    .line 152
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_pressItemShadowRadius:I

    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemShadowRadius:F

    .line 154
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_horizontalItemInterval:I

    invoke-virtual {v3, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mHorizontalItemInterval:F

    .line 156
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_verticalItemInterval:I

    invoke-virtual {v3, v5, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mVerticalItemInterval:F

    .line 159
    iput v4, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mCurrentPressItemRadius:F

    .line 161
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_normalItemColor:I

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 163
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->ColorPickerView_selectItemColor:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectColor:I

    move-object/from16 v0, v17

    .line 168
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v16

    .line 171
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    :try_end_e9
    .catchall {:try_start_89 .. :try_end_e9} :catchall_ed

    .line 173
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V

    return-void

    :catchall_ed
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_f9

    .line 142
    :try_start_f1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f5

    goto :goto_f9

    :catchall_f5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f9
    :goto_f9
    throw v1
.end method

.method private calculateItems(I)V
    .registers 10

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    .line 193
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxColumnCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, p1, :cond_65

    .line 199
    new-instance v3, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView-IA;)V

    .line 200
    invoke-static {v3, v2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmIndex(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;I)V

    add-int/lit8 v4, v2, 0x1

    .line 201
    invoke-static {v3, v4}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmValue(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;I)V

    .line 203
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    rem-int v5, v2, v5

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v5, :cond_37

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    :goto_35
    add-float/2addr v0, v5

    goto :goto_3e

    .line 206
    :cond_37
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mHorizontalItemInterval:F

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    goto :goto_35

    .line 208
    :goto_3e
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    .line 209
    invoke-static {v3, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmCenterX(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;F)V

    if-nez v2, :cond_4f

    .line 212
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    :goto_4d
    add-float/2addr v1, v2

    goto :goto_5b

    .line 213
    :cond_4f
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    rem-int/2addr v2, v5

    if-nez v2, :cond_5b

    .line 214
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mVerticalItemInterval:F

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    goto :goto_4d

    .line 216
    :cond_5b
    :goto_5b
    invoke-static {v3, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmCenterY(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;F)V

    .line 218
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_16

    :cond_65
    return-void
.end method

.method private calculateItems(Ljava/util/List;)V
    .registers 10

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 232
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxColumnCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_7b

    .line 238
    new-instance v4, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView-IA;)V

    .line 239
    invoke-static {v4, v3}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmIndex(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;I)V

    .line 240
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmValue(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;I)V

    .line 242
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    rem-int v5, v3, v5

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v5, :cond_4b

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    add-float/2addr v1, v5

    .line 244
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    goto :goto_5a

    .line 246
    :cond_4b
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mHorizontalItemInterval:F

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    add-float/2addr v1, v5

    .line 247
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    .line 249
    :goto_5a
    invoke-static {v4, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmCenterX(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;F)V

    if-nez v3, :cond_63

    .line 252
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    :goto_61
    add-float/2addr v2, v5

    goto :goto_70

    .line 253
    :cond_63
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    rem-int v5, v3, v5

    if-nez v5, :cond_70

    .line 254
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mVerticalItemInterval:F

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    goto :goto_61

    .line 256
    :cond_70
    :goto_70
    invoke-static {v4, v2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fputmCenterY(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;F)V

    .line 258
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_7b
    return-void
.end method

.method private getSelectValue()I
    .registers 3

    .line 276
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    goto :goto_1d

    .line 279
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmValue(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result p0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startItemPressAnimator$4(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 424
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mCurrentPressItemRadius:F

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startItemPressAnimator$5(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 433
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mCurrentPressItemShadowRadius:F

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateSelected$2(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I
    .registers 6

    .line 388
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterX(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchX:F

    sub-float/2addr v0, v1

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterX(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchY:F

    sub-float/2addr v1, v2

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result p1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchY:F

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterX(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result p1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchX:F

    sub-float/2addr p1, v1

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterX(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchX:F

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result p1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchY:F

    sub-float/2addr p1, v1

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result p2

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchY:F

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    sub-float/2addr v0, p1

    float-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$updateSelected$3(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)V
    .registers 2

    .line 391
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmIndex(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 393
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->notifyColorPickerListener()V

    return-void
.end method

.method private notifyColorPickerListener()V
    .registers 5

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mColorPickerListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;

    if-eqz v0, :cond_45

    .line 447
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    if-ltz v0, :cond_1f

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmValue(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 450
    :goto_20
    sget-object v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyColorPickerListener mSelectedIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", selectValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mColorPickerListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;->onColorPicked(I)V

    :cond_45
    return-void
.end method

.method private startItemPressAnimator(Z)V
    .registers 9

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_a

    .line 419
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectItemRadius:F

    goto :goto_c

    :cond_a
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemRadius:F

    :goto_c
    if-eqz p1, :cond_11

    .line 420
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemRadius:F

    goto :goto_13

    :cond_11
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectItemRadius:F

    :goto_13
    const/4 v2, 0x2

    .line 421
    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 423
    new-instance v3, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_2d

    move v5, v3

    goto :goto_2f

    .line 428
    :cond_2d
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemShadowRadius:F

    :goto_2f
    if-eqz p1, :cond_33

    .line 429
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemShadowRadius:F

    .line 430
    :cond_33
    new-array p1, v2, [F

    aput v5, p1, v4

    aput v3, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 432
    new-instance v3, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xfa

    .line 438
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 439
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    aput-object p1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateSelected()V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;)V

    .line 387
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;)V

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .line 399
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemAnimator:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 292
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 294
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    if-gtz v0, :cond_9

    goto/16 :goto_75

    .line 303
    :cond_9
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    if-gez v1, :cond_10

    const/4 v0, -0x1

    move v1, v0

    goto :goto_16

    .line 307
    :cond_10
    div-int v2, v1, v0

    .line 308
    rem-int v0, v1, v0

    move v1, v0

    move v0, v2

    .line 311
    :goto_16
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    .line 312
    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmIndex(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    if-ne v4, v5, :cond_49

    .line 313
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mCurrentPressItemRadius:F

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectItemRadius:F

    cmpl-float v6, v4, v5

    if-lez v6, :cond_43

    .line 315
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressPaint:Landroid/graphics/Paint;

    .line 316
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mCurrentPressItemShadowRadius:F

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectColor:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v8, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_69

    .line 319
    :cond_43
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectPaint:Landroid/graphics/Paint;

    move v9, v5

    move-object v5, v4

    move v4, v9

    goto :goto_69

    .line 321
    :cond_49
    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmIndex(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    div-int/2addr v4, v5

    if-ne v0, v4, :cond_57

    .line 322
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    .line 323
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectPaint:Landroid/graphics/Paint;

    goto :goto_69

    .line 324
    :cond_57
    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmIndex(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mRowCount:I

    rem-int/2addr v4, v5

    if-ne v1, v4, :cond_65

    .line 325
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    .line 326
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectPaint:Landroid/graphics/Paint;

    goto :goto_69

    .line 328
    :cond_65
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalItemRadius:F

    .line 329
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mNormalPaint:Landroid/graphics/Paint;

    .line 331
    :goto_69
    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterX(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result v6

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)F

    move-result v3

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_75
    :goto_75
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 467
    check-cast p1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;

    .line 468
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 469
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;->mSelected:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 459
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 460
    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 461
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;->mSelected:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3d

    if-eq p1, v3, :cond_28

    const/4 v4, 0x2

    if-eq p1, v4, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2c

    goto :goto_5b

    .line 358
    :cond_19
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchX:F

    .line 359
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchY:F

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->updateSelected()V

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mColorPickerTouchListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;

    if-eqz p0, :cond_5b

    .line 362
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;->onTouching()V

    return v3

    .line 367
    :cond_28
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchX:F

    .line 368
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchY:F

    .line 370
    :cond_2c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->updateSelected()V

    .line 371
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->startItemPressAnimator(Z)V

    .line 372
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mColorPickerTouchListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;

    if-eqz p0, :cond_5b

    .line 374
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;->onTouchEnd()V

    return v3

    .line 343
    :cond_3d
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mMaxCenterX:F

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr p1, v4

    cmpl-float p1, v0, p1

    if-lez p1, :cond_47

    return v2

    .line 346
    :cond_47
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchX:F

    .line 347
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mTouchY:F

    .line 348
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->updateSelected()V

    .line 349
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->startItemPressAnimator(Z)V

    .line 350
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mColorPickerTouchListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;

    if-eqz p0, :cond_5b

    .line 352
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;->onTouching()V

    :cond_5b
    :goto_5b
    return v3
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .line 412
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 413
    sget-object p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "colorPickerViewVisibility "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->iTrace(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setColorList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->calculateItems(Ljava/util/List;)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setColorPickerListener(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mColorPickerListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;

    return-void
.end method

.method public setColorPickerTouchListener(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mColorPickerTouchListener:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;

    return-void
.end method

.method public setColorSize(I)V
    .registers 5

    .line 185
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->calculateItems(I)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSelectColor(I)V
    .registers 6

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->getSelectValue()I

    move-result v0

    if-eq v0, p1, :cond_54

    .line 265
    sget-object v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectColor selectColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> color: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 267
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 268
    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda1;-><init>()V

    .line 269
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, -0x1

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_54
    return-void
.end method

.method public setSelectIndex(I)V
    .registers 5

    .line 283
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    if-eq v0, p1, :cond_29

    .line 284
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectIndex mSelectIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectIndex:I

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_29
    return-void
.end method

.method public visibilityChanged(Z)V
    .registers 5

    .line 404
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "visibilityChanged show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mPressItemAnimator:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 406
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mSelectItemRadius:F

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mCurrentPressItemRadius:F

    const/4 p1, 0x0

    .line 407
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->mCurrentPressItemShadowRadius:F

    return-void
.end method
