.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/flipper/FlipperLayout$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/flipper/FlipperLayout$Companion;

.field private static final MSG_INTERVAL:J = 0xbb8L

.field private static final PAGE_OUT_ANIM_TIME:J = 0x96L

.field private static final PVH_ALPHA_PAGE_OUT:Ljava/lang/String; = "pvh_alpha_page_out"

.field private static final PVH_SHIFT:Ljava/lang/String; = "pvh_shift"

.field private static final SHIFT_ANIM_TIME:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "FlipperLayout"


# instance fields
.field private final alphaInpt$delegate:Lkotlin/Lazy;

.field private animator:Landroid/animation/ValueAnimator;

.field private attachHeadTailItem:I

.field private currentPst:I

.field private defaultAdapter:Lcom/transsion/widgetslib/flipper/DefaultAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/flipper/DefaultAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private descHeight:F

.field private dotLayout:Landroid/view/ViewGroup;

.field private downX:F

.field private isAutoPlay:Z

.field private isCyclic:Z

.field private isVisible:Z

.field private longestPrimaryStr:Ljava/lang/String;

.field private longestSecondaryStr:Ljava/lang/String;

.field private mCenterY:F

.field private maxTotalHeight:F

.field private final onPageChangeCallback:Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

.field private final onTouchListener$delegate:Lkotlin/Lazy;

.field private final pageTransformer:Lcom/transsion/widgetslib/flipper/PageAnimation;

.field private runnable:Ljava/lang/Runnable;

.field private shiftDistance:I

.field private final shiftInpt$delegate:Lkotlin/Lazy;

.field private shiftIntervalCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private shiftIntervalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private textParent:Landroid/widget/LinearLayout;

.field private textPrimaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private textSecondaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private topicHeight:F

.field private tvPrimary:Landroid/widget/TextView;

.field private tvSecondary:Landroid/widget/TextView;

.field private viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public static synthetic $r8$lambda$7qNEigpg1Rx4tJZM5npF4OkldwA(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->_init_$lambda$2(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FeABlhJqf_ZFPL-3vdHUTqvrkU8(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->sendScrollMsg$lambda$14(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TfWJ-4Kxvfbr9790f5ieZrDO0rs(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setCurrentPst$lambda$16(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rsb7313afsDp1AhlXfAexoGxUv0(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initAnimator$lambda$6(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wV7rsRLCnLMBzGQQGCriMSnMneo(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->playFakeDragAnim$lambda$11$lambda$10(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->Companion:Lcom/transsion/widgetslib/flipper/FlipperLayout$Companion;

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

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic:Z

    .line 64
    iput p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I

    .line 65
    iput-boolean p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isAutoPlay:Z

    .line 71
    const-string p3, ""

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->longestPrimaryStr:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->longestSecondaryStr:Ljava/lang/String;

    .line 74
    sget-object p3, Lcom/transsion/widgetslib/flipper/FlipperLayout$shiftInpt$2;->INSTANCE:Lcom/transsion/widgetslib/flipper/FlipperLayout$shiftInpt$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftInpt$delegate:Lkotlin/Lazy;

    .line 77
    sget-object p3, Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;->INSTANCE:Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->alphaInpt$delegate:Lkotlin/Lazy;

    .line 82
    new-instance p3, Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-direct {p3}, Lcom/transsion/widgetslib/flipper/PageAnimation;-><init>()V

    .line 83
    invoke-virtual {p3, p0}, Lcom/transsion/widgetslib/flipper/PageAnimation;->bindFlipperLayout$widgetsLib_release(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    .line 82
    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->pageTransformer:Lcom/transsion/widgetslib/flipper/PageAnimation;

    .line 85
    new-instance p4, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

    invoke-direct {p4, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    iput-object p4, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->onPageChangeCallback:Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

    .line 130
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    sget p2, Lcom/transsion/widgetslib/R$layout;->os_flipper_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 132
    sget p1, Lcom/transsion/widgetslib/R$id;->textParentLayout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById<LinearLayout>(R.id.textParentLayout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textParent:Landroid/widget/LinearLayout;

    .line 133
    sget p1, Lcom/transsion/widgetslib/R$id;->flipPager:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    .line 135
    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 136
    invoke-virtual {p2, p4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 133
    const-string p3, "findViewById<ViewPager2>\u2026ChangeCallback)\n        }"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_flipper_layout_padding_lr:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$dimen;->os_flipper_layout_padding_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/widgetslib/R$dimen;->os_flipper_layout_padding_bottom:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 143
    invoke-virtual {p0, p1, p2, p1, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 144
    new-instance p1, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 441
    new-instance p1, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->onTouchListener$delegate:Lkotlin/Lazy;

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

    .line 34
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_f

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->mCenterY:F

    return-void
.end method

.method public static final synthetic access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I

    return p0
.end method

.method public static final synthetic access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I

    return p0
.end method

.method public static final synthetic access$getDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->descHeight:F

    return p0
.end method

.method public static final synthetic access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->downX:F

    return p0
.end method

.method public static final synthetic access$getMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->maxTotalHeight:F

    return p0
.end method

.method public static final synthetic access$getTextParent$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textParent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getTextPrimaryList$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTextSecondaryList$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTopicHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->topicHeight:F

    return p0
.end method

.method public static final synthetic access$getTvPrimary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvSecondary$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/widget/TextView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static final synthetic access$isAutoPlay$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isAutoPlay:Z

    return p0
.end method

.method public static final synthetic access$isVisible$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isVisible:Z

    return p0
.end method

.method public static final synthetic access$playFakeDragAnim(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->playFakeDragAnim()V

    return-void
.end method

.method public static final synthetic access$removeScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->removeScrollMsg()V

    return-void
.end method

.method public static final synthetic access$sendScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->sendScrollMsg()V

    return-void
.end method

.method public static final synthetic access$setCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I

    return-void
.end method

.method public static final synthetic access$setDefaultAdapter$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lcom/transsion/widgetslib/flipper/DefaultAdapter;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->defaultAdapter:Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    return-void
.end method

.method public static final synthetic access$setDescHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->descHeight:F

    return-void
.end method

.method public static final synthetic access$setDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->downX:F

    return-void
.end method

.method public static final synthetic access$setMaxTotalHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->maxTotalHeight:F

    return-void
.end method

.method public static final synthetic access$setTopicHeight$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->topicHeight:F

    return-void
.end method

.method private final cancelFakeDragAnim()V
    .registers 2

    .line 260
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    return-void
.end method

.method private final decorDataList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 395
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_10

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 398
    :cond_17
    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic:Z

    if-eqz p0, :cond_3e

    .line 399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3e

    const/4 p0, 0x0

    .line 400
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3e

    .line 402
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 403
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3e
    return-object p1
.end method

.method private final fakeDragPage()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_d

    .line 197
    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initAnimator(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 202
    :cond_d
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->playFakeDragAnim()V

    return-void
.end method

.method private final getAlphaInpt()Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->alphaInpt$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private final getOnTouchListener()Landroid/view/View$OnTouchListener;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->onTouchListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method private final getShiftInpt()Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftInpt$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private final getShiftWidth()I
    .registers 3

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private final initAnimator(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initAnimator$lambda$6(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/functions/Function1;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getShiftWidth()I

    move-result v0

    .line 169
    iput v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftDistance:I

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAnimator, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shiftDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlipperLayout"

    invoke-static {v2, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_7c

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 175
    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3f19999a    # 0.6f

    .line 176
    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 177
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getAlphaInpt()Landroid/view/animation/PathInterpolator;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 179
    invoke-static {v2, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p0

    filled-new-array {v3, v4, p0}, [Landroid/animation/Keyframe;

    move-result-object p0

    .line 173
    const-string v1, "pvh_alpha_page_out"

    invoke-static {v1, p0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 v1, 0x0

    .line 181
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-string v1, "pvh_shift"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 182
    filled-new-array {p0, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    .line 184
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_7d

    :cond_7c
    const/4 p0, 0x0

    .line 188
    :goto_7d
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final initLayoutDot()V
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->dotLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 613
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->inflateLayoutDot(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->dotLayout:Landroid/view/ViewGroup;

    :cond_a
    return-void
.end method

.method private final initPageInterval()V
    .registers 8

    .line 345
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 346
    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2b

    .line 348
    iget-object v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 350
    :cond_2b
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalCache:Ljava/util/List;

    if-eqz v0, :cond_5f

    .line 351
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    .line 352
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setPageInterval(IJ)V

    goto :goto_36

    .line 354
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    iput-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalCache:Ljava/util/List;

    :cond_5f
    return-void
.end method

.method private final initTouchListener()V
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textParent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    const-string v0, "textParent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 618
    :cond_a
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final initTvPrimary()V
    .registers 5

    .line 473
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;

    if-nez v0, :cond_40

    .line 475
    sget v0, Lcom/transsion/widgetslib/R$id;->stubTextPrimary:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 477
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_21

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_21
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 478
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;

    if-eqz v1, :cond_3e

    .line 479
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I

    if-ltz v3, :cond_3e

    if-ge v3, v2, :cond_3e

    .line 480
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_3e
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;

    :cond_40
    return-void
.end method

.method private final initTvSecondary()V
    .registers 5

    .line 543
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;

    if-nez v0, :cond_40

    .line 545
    sget v0, Lcom/transsion/widgetslib/R$id;->stubTextSecondary:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 547
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_21

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_21
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 548
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;

    if-eqz v1, :cond_3e

    .line 549
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I

    if-ltz v3, :cond_3e

    if-ge v3, v2, :cond_3e

    .line 550
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :cond_3e
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;

    :cond_40
    return-void
.end method

.method private final playFakeDragAnim()V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2d

    .line 208
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getShiftWidth()I

    move-result v1

    if-lez v1, :cond_15

    .line 209
    iget v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftDistance:I

    if-eq v2, v1, :cond_15

    .line 210
    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->pageTransformer:Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/flipper/PageAnimation;->updatePagePadding$widgetsLib_release()V

    .line 211
    iput v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftDistance:I

    .line 215
    :cond_15
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 216
    new-instance v2, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 236
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    new-instance v1, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2d
    return-void
.end method

.method private static final playFakeDragAnim$lambda$11$lambda$10(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    const-string v0, "pvh_alpha_page_out"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    check-cast v0, Ljava/lang/Float;

    goto :goto_1e

    :cond_1d
    move-object v0, v2

    :goto_1e
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->pageTransformer:Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/flipper/PageAnimation;->setAlphaPageOutRatio$widgetsLib_release(F)V

    .line 221
    :cond_29
    const-string v0, "pvh_shift"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_36

    check-cast v0, Ljava/lang/Integer;

    goto :goto_37

    :cond_36
    move-object v0, v2

    :goto_37
    if-eqz v0, :cond_76

    .line 222
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    .line 223
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getShiftInpt()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 224
    iget v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 225
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->pageTransformer:Lcom/transsion/widgetslib/flipper/PageAnimation;

    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getAlphaInpt()Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/transsion/widgetslib/flipper/PageAnimation;->setAlphaRatio$widgetsLib_release(F)V

    .line 227
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_62

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int p2, v0, p2

    goto :goto_65

    :cond_62
    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr p2, v0

    .line 232
    :goto_65
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_6f

    const-string p0, "viewPager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_70

    :cond_6f
    move-object v2, p0

    :goto_70
    int-to-float p0, p2

    invoke-virtual {v2, p0}, Landroidx/viewpager2/widget/ViewPager2;->fakeDragBy(F)Z

    .line 233
    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_76
    return-void
.end method

.method private final removeScrollMsg()V
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final sendScrollMsg()V
    .registers 7

    .line 290
    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isVisible:Z

    if-nez v0, :cond_6

    goto/16 :goto_7b

    .line 294
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isAutoPlay:Z

    if-eqz v0, :cond_7b

    .line 295
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_16

    .line 296
    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->runnable:Ljava/lang/Runnable;

    goto :goto_19

    .line 298
    :cond_16
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 300
    :goto_19
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v3, 0x0

    const-string v4, "viewPager"

    if-nez v2, :cond_2a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2a
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    if-ltz v2, :cond_49

    if-ge v2, v1, :cond_49

    .line 302
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_3a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3a
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_4b

    :cond_49
    const-wide/16 v0, 0xbb8

    .line 305
    :goto_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendScrollMsg, currentItem: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v5, :cond_5d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5e

    :cond_5d
    move-object v3, v5

    :goto_5e
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlipperLayout"

    invoke-static {v3, v2}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7b
    :goto_7b
    return-void
.end method

.method private static final sendScrollMsg$lambda$14(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->fakeDragPage()V

    return-void
.end method

.method public static synthetic setCurrentPst$default(Lcom/transsion/widgetslib/flipper/FlipperLayout;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 314
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setCurrentPst(I)V

    return-void
.end method

.method private static final setCurrentPst$lambda$16(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_f

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 321
    :cond_f
    iget-boolean v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic:Z

    if-eqz v1, :cond_16

    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I

    add-int/2addr p1, p0

    :cond_16
    const/4 p0, 0x0

    .line 320
    invoke-static {v0, p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    return-void
.end method

.method private final setNoTopicTextLayoutHeight(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setNoTopicTextLayoutHeight$1;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private final setTextLayoutHeight(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setTextLayoutHeight$1;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_27

    .line 156
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->mCenterY:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 158
    :goto_27
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_31

    const-string p0, "viewPager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_31
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getAnimator$widgetsLib_release()Landroid/animation/ValueAnimator;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getDotLayout$widgetsLib_release()Landroid/view/ViewGroup;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->dotLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getLayoutDot()Landroid/view/ViewGroup;
    .registers 1

    .line 629
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->dotLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getTvPrimary()Landroid/widget/TextView;
    .registers 1

    .line 627
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvPrimary:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTvSecondary()Landroid/widget/TextView;
    .registers 1

    .line 628
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->tvSecondary:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .registers 1

    .line 626
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_a

    const-string p0, "viewPager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    return-object p0
.end method

.method public final isCyclic$widgetsLib_release()Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 275
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 276
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->defaultAdapter:Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/transsion/widgetslib/flipper/DefaultAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    :cond_10
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1a

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1a
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->onPageChangeCallback:Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 279
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    :cond_26
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    :cond_2d
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3c

    .line 284
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 285
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_3c
    return-void
.end method

.method public final onItemClick(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->defaultAdapter:Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    if-nez p0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/DefaultAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    .line 264
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 265
    iput-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isVisible:Z

    if-eqz p1, :cond_b

    .line 267
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->sendScrollMsg()V

    return-void

    .line 269
    :cond_b
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->removeScrollMsg()V

    .line 270
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->cancelFakeDragAnim()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDisallowInterceptTouchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperLayout"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final setAnimator$widgetsLib_release(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setCurrentPst(I)V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    const-string v2, "viewPager"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_14

    .line 316
    iput p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I

    goto :goto_39

    .line 318
    :cond_14
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 319
    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 325
    :cond_23
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2c

    :cond_2b
    move-object v1, v0

    .line 326
    :goto_2c
    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I

    add-int/2addr v0, p1

    goto :goto_35

    :cond_34
    move v0, p1

    :goto_35
    const/4 v2, 0x0

    .line 325
    invoke-static {v1, v0, v2}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    .line 330
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentPst, pst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentPst: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlipperLayout"

    invoke-static {p1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCyclic$widgetsLib_release(Z)V
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic:Z

    return-void
.end method

.method public final setDotLayout$widgetsLib_release(Landroid/view/ViewGroup;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->dotLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setDrawableList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "drawableList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;-><init>(Ljava/util/List;Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setFlipperList(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setDrawableResList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "drawableResList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;-><init>(Ljava/util/List;Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setFlipperList(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setFlipperList(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->decorDataList(Ljava/util/List;)Ljava/util/List;

    .line 337
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_17

    const-string p1, "viewPager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_17
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 338
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initLayoutDot()V

    .line 339
    iget p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setCurrentPst(I)V

    .line 340
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initPageInterval()V

    return-void
.end method

.method public final setPageInterval(IJ)V
    .registers 8

    .line 361
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_a

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_30

    .line 362
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalCache:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalCache:Ljava/util/List;

    .line 365
    :cond_1b
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalCache:Ljava/util/List;

    if-eqz p0, :cond_2f

    new-instance v0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-void

    .line 369
    :cond_30
    iget-boolean v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic:Z

    if-eqz v0, :cond_8e

    .line 370
    iget v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I

    add-int/2addr v0, p1

    if-nez p1, :cond_47

    .line 372
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 373
    :cond_47
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_64

    .line 374
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I

    sub-int v0, p1, v0

    goto :goto_7a

    .line 378
    :cond_64
    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->attachHeadTailItem:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_7a

    .line 379
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    :goto_7a
    if-ltz v0, :cond_8d

    .line 382
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_8d

    .line 383
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    return-void

    :cond_8e
    if-ltz p1, :cond_a1

    .line 386
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a1

    .line 387
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->shiftIntervalList:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a1
    return-void
.end method

.method public final setPrimaryTextList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->decorDataList(Ljava/util/List;)Ljava/util/List;

    .line 434
    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;

    .line 436
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initTvPrimary()V

    return-void
.end method

.method public final setPrimaryTextResList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textResList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->decorDataList(Ljava/util/List;)Ljava/util/List;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    check-cast p1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "resources.getText(element)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 424
    :cond_34
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;

    .line 429
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initTvPrimary()V

    return-void
.end method

.method public final setSecondaryTextList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->decorDataList(Ljava/util/List;)Ljava/util/List;

    .line 500
    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;

    .line 502
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initTvSecondary()V

    .line 503
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_26

    .line 506
    :cond_1a
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textPrimaryList:Ljava/util/List;

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setTextLayoutHeight(Ljava/util/List;Ljava/util/List;)V

    :cond_25
    return-void

    .line 504
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setNoTopicTextLayoutHeight(Ljava/util/List;)V

    return-void
.end method

.method public final setSecondaryTextResList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textResList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->decorDataList(Ljava/util/List;)Ljava/util/List;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    check-cast p1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "resources.getText(element)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 490
    :cond_34
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout;->textSecondaryList:Ljava/util/List;

    .line 495
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->initTvSecondary()V

    return-void
.end method
