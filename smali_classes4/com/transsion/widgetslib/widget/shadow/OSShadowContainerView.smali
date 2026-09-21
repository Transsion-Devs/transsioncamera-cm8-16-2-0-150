.class public final Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$Companion;,
        Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$LEVEL;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$Companion;

.field public static final SHADOW_LEVEL1:I = 0x0

.field public static final SHADOW_LEVEL2:I = 0x1

.field public static final SHADOW_LEVEL3:I = 0x2

.field public static final SHADOW_LEVEL4:I = 0x3

.field public static final SHADOW_LEVEL_IMAGE_1:I = 0x4

.field public static final SHADOW_LEVEL_IMAGE_2:I = 0x5

.field public static final SHADOW_LEVEL_IMAGE_3:I = 0x6

.field public static final SHADOW_LEVEL_IMAGE_4:I = 0x7

.field public static final os_shadow_high:I = 0x3

.field public static final os_shadow_low:I = 0x1

.field public static final os_shadow_lowest:I = 0x0

.field public static final os_shadow_medium:I = 0x2

.field public static final os_shadow_pic_high:I = 0x7

.field public static final os_shadow_pic_low:I = 0x5

.field public static final os_shadow_pic_lowest:I = 0x4

.field public static final os_shadow_pic_medium:I = 0x6


# instance fields
.field private mCorner:I

.field private mCurrentLevel:I

.field private mIsHios:Z

.field private mPaddingBottom:I

.field private mPaddingHor:I

.field private mPaddingTop:I

.field private final mPaint$delegate:Lkotlin/Lazy;

.field private final mRectF:Landroid/graphics/RectF;

.field private mShadowColor:I

.field private mShadowDy:I

.field private mShadowRadius:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->Companion:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mRectF:Landroid/graphics/RectF;

    .line 32
    sget-object p3, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$mPaint$2;->INSTANCE:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$mPaint$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaint$delegate:Lkotlin/Lazy;

    const/4 p3, 0x1

    .line 35
    iput p3, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCurrentLevel:I

    .line 46
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object p4

    .line 47
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p4, p3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mIsHios:Z

    .line 48
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 50
    sget-object p4, Lcom/transsion/widgetslib/R$styleable;->OSShadowStyle:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026.styleable.OSShadowStyle)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShadowStyle_os_shadow_level:I

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCurrentLevel:I

    .line 56
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShadowStyle_os_shadow_corner:I

    .line 55
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCorner:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->initShadowParams()V

    .line 61
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    iget p2, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    iget p3, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    invoke-virtual {p0, p1, p2, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v0

    .line 25
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final getMPaint()Landroid/graphics/Paint;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaint$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final initShadowParams()V
    .registers 3

    .line 65
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCurrentLevel:I

    packed-switch v0, :pswitch_data_32a

    return-void

    .line 177
    :pswitch_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_image_color_level4:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 178
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 182
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 184
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    .line 164
    :pswitch_63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_image_color_level3:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 165
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 169
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 171
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    .line 150
    :pswitch_c0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_image_color_level2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 151
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 155
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 157
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    .line 136
    :pswitch_11d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_image_color_level1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 137
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 141
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 143
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 145
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    .line 118
    :pswitch_17a
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mIsHios:Z

    if-eqz v0, :cond_189

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level4_hios:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_193

    .line 121
    :cond_189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level4_xos:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 118
    :goto_193
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 123
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 127
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 129
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 131
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    .line 101
    :pswitch_1e6
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mIsHios:Z

    if-eqz v0, :cond_1f5

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level3_hios:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1ff

    .line 104
    :cond_1f5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level3_xos:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 101
    :goto_1ff
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 110
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    .line 84
    :pswitch_252
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mIsHios:Z

    if-eqz v0, :cond_261

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level2_hios:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_26b

    .line 87
    :cond_261
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level2_xos:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 84
    :goto_26b
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 93
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 95
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 97
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    .line 67
    :pswitch_2be
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mIsHios:Z

    if-eqz v0, :cond_2cd

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level1_hios:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_2d7

    .line 70
    :cond_2cd
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level1_xos:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 67
    :goto_2d7
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 72
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_hor_inset_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 78
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_bottom_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    return-void

    :pswitch_data_32a
    .packed-switch 0x0
        :pswitch_2be
        :pswitch_252
        :pswitch_1e6
        :pswitch_17a
        :pswitch_11d
        :pswitch_c0
        :pswitch_63
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 241
    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    const/4 v4, 0x0

    .line 240
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 244
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCorner:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 243
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 226
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 227
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 229
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mRectF:Landroid/graphics/RectF;

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p4

    int-to-float p4, p4

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    .line 229
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_23
    return-void
.end method

.method public final setShadowColor(I)V
    .registers 3

    .line 268
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    if-ne v0, p1, :cond_5

    return-void

    .line 271
    :cond_5
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowColor:I

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShadowCorner(I)V
    .registers 3

    .line 250
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCorner:I

    if-ne v0, p1, :cond_5

    return-void

    .line 253
    :cond_5
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCorner:I

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShadowDy(I)V
    .registers 2

    .line 276
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mShadowDy:I

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShadowLevel(I)V
    .registers 4

    .line 258
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCurrentLevel:I

    if-ne p1, v0, :cond_5

    return-void

    .line 261
    :cond_5
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mCurrentLevel:I

    .line 262
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->initShadowParams()V

    .line 263
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingHor:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingTop:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->mPaddingBottom:I

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
