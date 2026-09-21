.class public Lcom/opensource/svgaplayer/SVGAImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGAImageView$FillMode;,
        Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;,
        Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;,
        Lcom/opensource/svgaplayer/SVGAImageView$WhenMappings;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/opensource/svgaplayer/SVGACallback;

.field private clearsAfterDetached:Z

.field private clearsAfterStop:Z

.field private fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

.field private isAnimating:Z

.field private loops:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

.field private final mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

.field private mAntiAlias:Z

.field private mAutoPlay:Z

.field private mEndFrame:I

.field private mStartFrame:I


# direct methods
.method public static synthetic $r8$lambda$rWyJXrlT18QcwgGTXhyrEinqLJw(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation$lambda-3(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const-string p1, "SVGAImageView"

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    .line 47
    sget-object p1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    .line 53
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    .line 54
    new-instance p1, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    invoke-direct {p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    .line 55
    new-instance p1, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    invoke-direct {p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    if-eqz p2, :cond_28

    .line 63
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->loadAttrs(Landroid/util/AttributeSet;)V

    :cond_28
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 21
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$onAnimationEnd(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/Animator;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public static final synthetic access$onAnimatorUpdate(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->onAnimatorUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method

.method private final createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
    .registers 2

    .line 103
    new-instance p0, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;

    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object p0
.end method

.method private final generateScale()D
    .registers 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 167
    :try_start_2
    const-string v2, "android.animation.ValueAnimator"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 168
    const-string v3, "getDurationScale"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_12

    return-wide v0

    .line 169
    :cond_12
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_55

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_4f

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-nez v5, :cond_54

    .line 171
    :try_start_25
    const-string v5, "setDurationScale"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_34

    return-wide v3

    :cond_34
    const/4 v6, 0x1

    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 173
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_45} :catch_51

    .line 175
    :try_start_45
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    .line 176
    const-string v3, "The animation duration scale has been reset to 1.0x, because you closed it on developer options."

    .line 175
    invoke-virtual {v2, p0, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :catch_4f
    move-exception p0

    goto :goto_5d

    :catch_51
    move-exception p0

    move-wide v0, v3

    goto :goto_5d

    :cond_54
    return-wide v3

    .line 169
    :cond_55
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5d} :catch_4f

    .line 180
    :goto_5d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method

.method public static synthetic getClearsAfterStop$annotations()V
    .registers 0

    return-void
.end method

.method private final getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;
    .registers 2

    .line 160
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/opensource/svgaplayer/SVGADrawable;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private final loadAttrs(Landroid/util/AttributeSet;)V
    .registers 5

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_loopCount:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    .line 69
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_clearsAfterStop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 70
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_clearsAfterDetached:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    .line 71
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_antiAlias:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    .line 72
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    .line 73
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_fillMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_80

    goto :goto_71

    :pswitch_48
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_71

    .line 82
    :cond_51
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Clear:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    goto :goto_71

    .line 74
    :pswitch_56
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_71

    .line 79
    :cond_5f
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    goto :goto_71

    .line 74
    :pswitch_64
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_71

    .line 76
    :cond_6d
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 86
    :cond_71
    :goto_71
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_source:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 87
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->parserSource(Ljava/lang/String;)V

    .line 89
    :cond_7c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_80
    .packed-switch 0x30
        :pswitch_64
        :pswitch_56
        :pswitch_48
    .end packed-switch
.end method

.method private final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    .line 194
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 195
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 197
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    sget-object v1, Lcom/opensource/svgaplayer/SVGAImageView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_24

    const/4 v2, 0x3

    if-eq v0, v2, :cond_20

    goto :goto_2f

    .line 205
    :cond_20
    invoke-virtual {p1, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    goto :goto_2f

    .line 202
    :cond_24
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    goto :goto_2f

    .line 199
    :cond_2a
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    .line 209
    :cond_2f
    :goto_2f
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz p0, :cond_36

    invoke-interface {p0}, Lcom/opensource/svgaplayer/SVGACallback;->onFinished()V

    :cond_36
    return-void
.end method

.method private final onAnimatorUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 186
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_36

    :cond_7
    if-eqz p1, :cond_e

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_37

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    .line 188
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-double v1, p1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 189
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz p0, :cond_36

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result p1

    invoke-interface {p0, p1, v1, v2}, Lcom/opensource/svgaplayer/SVGACallback;->onStep(ID)V

    :cond_36
    :goto_36
    return-void

    .line 187
    :cond_37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final parserSource(Ljava/lang/String;)V
    .registers 9

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 94
    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    .line 95
    const-string v2, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "https://"

    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2e

    .line 98
    :cond_22
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)V

    return-void

    .line 96
    :cond_2e
    :goto_2e
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final play(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    .registers 8

    .line 133
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    const-string v1, "================ start animation ================"

    invoke-virtual {p1, v0, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p1

    if-nez p1, :cond_10

    return-void

    .line 135
    :cond_10
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setupDrawable()V

    const/4 v0, 0x0

    .line 136
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    .line 137
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const v1, 0x7fffffff

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    .line 139
    iget v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    iget v2, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFPS()I

    move-result p1

    div-int/2addr v2, p1

    mul-int/2addr v1, v2

    int-to-double v1, v1

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->generateScale()D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    if-gtz p1, :cond_62

    const p1, 0x1869f

    goto :goto_64

    :cond_62
    add-int/lit8 p1, p1, -0x1

    :goto_64
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 143
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_77

    .line 146
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_7a

    .line 148
    :cond_77
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 150
    :goto_7a
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final setupDrawable()V
    .registers 3

    .line 154
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    const-string v1, "scaleType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/opensource/svgaplayer/SVGADrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private final startAnimation(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 3

    .line 113
    new-instance v0, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final startAnimation$lambda-3(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .registers 4

    const-string v0, "$videoItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p1, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setAntiAlias(Z)V

    .line 115
    invoke-virtual {p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 116
    invoke-direct {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_25

    :cond_19
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    const-string v1, "scaleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    :goto_25
    iget-boolean p0, p1, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    if-eqz p0, :cond_2c

    .line 118
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_2c
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .line 213
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 214
    :goto_b
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->clear()V

    :cond_14
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getCallback()Lcom/opensource/svgaplayer/SVGACallback;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-object p0
.end method

.method public final getClearsAfterDetached()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    return p0
.end method

.method public final getClearsAfterStop()Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    return p0
.end method

.method public final getFillMode()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    return-object p0
.end method

.method public final getLoops()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    return p0
.end method

.method public final isAnimating()Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 294
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 295
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 296
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    if-eqz v0, :cond_f

    .line 297
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    if-eqz p1, :cond_6b

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6b

    .line 280
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 281
    :cond_13
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getMClickMap$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x2

    aget v3, v1, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 v2, 0x3

    aget v1, v1, v2

    goto :goto_23

    .line 290
    :cond_66
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 278
    :cond_6b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-void
.end method

.method public final setClearsAfterDetached(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    return-void
.end method

.method public final setClearsAfterStop(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    return-void
.end method

.method public final setFillMode(Lcom/opensource/svgaplayer/SVGAImageView$FillMode;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    return-void
.end method

.method public final setLoops(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    return-void
.end method

.method public final setOnAnimKeyClickListener(Lcom/opensource/svgaplayer/SVGAClickAreaListener;)V
    .registers 2

    const-string p0, "clickListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 3

    .line 237
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .registers 4

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 244
    :cond_7
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-nez p2, :cond_10

    new-instance p2, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {p2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    :cond_10
    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    const/4 p1, 0x1

    .line 245
    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 246
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final startAnimation()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void
.end method

.method public final startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->play(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void
.end method

.method public final stopAnimation()V
    .registers 2

    .line 225
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    return-void
.end method

.method public final stopAnimation(Z)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 231
    :cond_e
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 232
    :cond_15
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->stop()V

    .line 233
    :cond_1e
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p0

    if-nez p0, :cond_25

    return-void

    :cond_25
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    return-void
.end method
