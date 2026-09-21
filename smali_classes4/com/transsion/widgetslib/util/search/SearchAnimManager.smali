.class public Lcom/transsion/widgetslib/util/search/SearchAnimManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$ShowSoftInputRunnable;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$Type;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$Policy;
    }
.end annotation


# static fields
.field private static final DURATION_ENTER_ALPHA_FADE_OUT_A:J = 0xfaL

.field private static final DURATION_ENTER_ALPHA_FADE_OUT_B:J = 0xfaL

.field private static final DURATION_ENTER_ALPHA_FADE_OUT_C:J = 0xfaL

.field private static final DURATION_ENTER_ALPHA_SEARCHBAR_SHOW_IN_B:J = 0xfaL

.field private static final DURATION_ENTER_ALPHA_SHOW_IN_A:J = 0xfaL

.field private static final DURATION_ENTER_ALPHA_SHOW_IN_B:J = 0xfaL

.field private static final DURATION_ENTER_ALPHA_SHOW_IN_C:J = 0xfaL

.field private static final DURATION_ENTER_TRANS_FADE_OUT_A:J = 0x190L

.field private static final DURATION_ENTER_TRANS_FADE_OUT_B:J = 0x190L

.field private static final DURATION_ENTER_TRANS_FADE_OUT_C:J = 0x190L

.field private static final DURATION_ENTER_TRANS_SHOW_IN_A:J = 0x190L

.field private static final DURATION_ENTER_TRANS_SHOW_IN_B:J = 0x190L

.field private static final DURATION_ENTER_TRANS_SHOW_IN_C:J = 0x190L

.field private static final DURATION_EXIT_ALPHA_FADE_OUT_A:J = 0xc8L

.field private static final DURATION_EXIT_ALPHA_FADE_OUT_B:J = 0xfaL

.field private static final DURATION_EXIT_ALPHA_FADE_OUT_C:J = 0xfaL

.field private static final DURATION_EXIT_ALPHA_SEARCHBAR_FADE_OUT_B:J = 0xc8L

.field private static final DURATION_EXIT_ALPHA_SHOW_IN_A:J = 0xc8L

.field private static final DURATION_EXIT_ALPHA_SHOW_IN_B:J = 0xfaL

.field private static final DURATION_EXIT_ALPHA_SHOW_IN_C:J = 0xfaL

.field private static final DURATION_EXIT_TRANS_FADE_OUT_A:J = 0xc8L

.field private static final DURATION_EXIT_TRANS_FADE_OUT_B:J = 0x15eL

.field private static final DURATION_EXIT_TRANS_FADE_OUT_C:J = 0xfaL

.field private static final DURATION_EXIT_TRANS_SHOW_IN_A:J = 0xc8L

.field private static final DURATION_EXIT_TRANS_SHOW_IN_B:J = 0x15eL

.field private static final DURATION_EXIT_TRANS_SHOW_IN_C:J = 0x15eL

.field private static final INTER_ENTER_ALPHA_FADE_OUT_A:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_ALPHA_FADE_OUT_B:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_ALPHA_FADE_OUT_C:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_ALPHA_SEARCHBAR_SHOW_IN_B:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_ALPHA_SHOW_IN_A:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_ALPHA_SHOW_IN_B:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_ALPHA_SHOW_IN_C:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_TRANS_FADE_OUT_A:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_TRANS_FADE_OUT_B:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_TRANS_FADE_OUT_C:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_TRANS_SHOW_IN_A:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_TRANS_SHOW_IN_B:Landroid/view/animation/Interpolator;

.field private static final INTER_ENTER_TRANS_SHOW_IN_C:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_ALPHA_FADE_OUT_A:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_ALPHA_FADE_OUT_B:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_ALPHA_FADE_OUT_C:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_ALPHA_SEARCHBAR_FADE_OUT_B:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_ALPHA_SHOW_IN_A:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_ALPHA_SHOW_IN_B:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_ALPHA_SHOW_IN_C:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_TRANS_FADE_OUT_A:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_TRANS_FADE_OUT_B:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_TRANS_FADE_OUT_C:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_TRANS_SHOW_IN_A:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_TRANS_SHOW_IN_B:Landroid/view/animation/Interpolator;

.field private static final INTER_EXIT_TRANS_SHOW_IN_C:Landroid/view/animation/Interpolator;

.field public static final POLICY_GO:I = 0x2

.field public static final POLICY_NOSEARCH_SEARCH:I = 0x1

.field public static final POLICY_SEARCH_SEARCH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SearchAnimManager"

.field public static final TRANS_Y_DEFAULT:I = 0x38

.field public static final TYPE_ACTIVITY:I = 0x0

.field public static final TYPE_VIEW:I = 0x1

.field private static sInstance:Lcom/transsion/widgetslib/util/search/SearchAnimManager;


# instance fields
.field private mAnimatorSet:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPageSearchViewY:I

.field private mIsInSearch:Z

.field private mOffset:F

.field private mPolicy:I

.field private mScale:F

.field private mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondPageReCreate:Z

.field private mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;"
        }
    .end annotation
.end field

.field private moveUpAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 34
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_SHOW_IN_A:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_FADE_OUT_A:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SHOW_IN_A:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_FADE_OUT_A:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_SHOW_IN_A:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_FADE_OUT_A:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SHOW_IN_A:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_FADE_OUT_A:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_SHOW_IN_B:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_FADE_OUT_B:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SHOW_IN_B:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SEARCHBAR_SHOW_IN_B:Landroid/view/animation/Interpolator;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_FADE_OUT_B:Landroid/view/animation/Interpolator;

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_SHOW_IN_B:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_FADE_OUT_B:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SHOW_IN_B:Landroid/view/animation/Interpolator;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SEARCHBAR_FADE_OUT_B:Landroid/view/animation/Interpolator;

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_FADE_OUT_B:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_SHOW_IN_C:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_FADE_OUT_C:Landroid/view/animation/Interpolator;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SHOW_IN_C:Landroid/view/animation/Interpolator;

    .line 86
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_FADE_OUT_C:Landroid/view/animation/Interpolator;

    .line 89
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_SHOW_IN_C:Landroid/view/animation/Interpolator;

    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_FADE_OUT_C:Landroid/view/animation/Interpolator;

    .line 93
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SHOW_IN_C:Landroid/view/animation/Interpolator;

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_FADE_OUT_C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 105
    iput v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mScale:F

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mOffset:F

    return-void
.end method

.method private assertWeak()Z
    .registers 1

    .line 478
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private calculateScaleAndOffset()V
    .registers 6

    .line 662
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    .line 663
    iget-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/SearchBar;

    .line 664
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_3e

    .line 665
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mScale:F

    .line 666
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mOffset:F

    const/4 v1, 0x1

    .line 667
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->requireSearchAnimManagerTrans(Z)V

    goto :goto_42

    :cond_3e
    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0, v4, v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setScaleAndOffset(FF)V

    .line 671
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateScaleAndOffset: mScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mOffset:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SearchAnimManager"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enterSearchForPolicyA()Landroid/animation/AnimatorSet;
    .registers 13

    .line 439
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->assertWeak()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 440
    const-string p0, "object recycled"

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 443
    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    .line 444
    iget v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchViewY:I

    .line 445
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 446
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 447
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterSearchForPolicyA: startY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " endY = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " transY = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAnimManager"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_57

    int-to-float v1, v4

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 455
    :cond_57
    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_SHOW_IN_A:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x190

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 458
    iget-object v3, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_FADE_OUT_A:Landroid/view/animation/Interpolator;

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 461
    iget-object v1, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_FADE_OUT_A:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0xfa

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterAlphaFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 464
    invoke-direct {v2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->initSecondPageAlphaView()V

    .line 465
    iget-object v6, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SHOW_IN_A:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x96

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterAlphaShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 468
    invoke-direct {v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->calculateScaleAndOffset()V

    .line 469
    iget-object v3, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/SearchBar;

    iget v4, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mScale:F

    iget v5, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mOffset:F

    invoke-virtual {v3, v4, v5}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearchForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 470
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x5

    .line 471
    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object v0, v5, p0

    const/4 p0, 0x2

    aput-object v1, v5, p0

    const/4 p0, 0x3

    aput-object v3, v5, p0

    const/4 p0, 0x4

    aput-object v2, v5, p0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 473
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-object v4
.end method

.method private enterSearchForPolicyB()Landroid/animation/AnimatorSet;
    .registers 13

    .line 482
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 483
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 485
    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_SHOW_IN_B:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x190

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 488
    iget-object v3, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_FADE_OUT_B:Landroid/view/animation/Interpolator;

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 490
    iget-object v1, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v1, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 493
    iget-object v1, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SEARCHBAR_SHOW_IN_B:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0xfa

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generatorEnterSearchBarShowInAnimator(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v7, 0x0

    .line 495
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 497
    iget-object v4, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_FADE_OUT_B:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v4, v7, v5, v6}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterAlphaFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 500
    invoke-direct {v2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->initSecondPageAlphaView()V

    .line 501
    iget-object v6, v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SHOW_IN_B:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x96

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterAlphaShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 504
    iget-object v5, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v5}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearchForTransition()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 505
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x6

    .line 506
    new-array v7, v7, [Landroid/animation/Animator;

    aput-object p0, v7, v3

    const/4 p0, 0x1

    aput-object v0, v7, p0

    const/4 p0, 0x2

    aput-object v4, v7, p0

    const/4 p0, 0x3

    aput-object v5, v7, p0

    const/4 p0, 0x4

    aput-object v2, v7, p0

    const/4 p0, 0x5

    aput-object v1, v7, p0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 508
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-object v6
.end method

.method private enterSearchForPolicyC()Landroid/animation/AnimatorSet;
    .registers 14

    .line 514
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v0, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    .line 517
    iget-object v4, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v6, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_SHOW_IN_C:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0x190

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 520
    iget-object v4, v3, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v6, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_TRANS_FADE_OUT_C:Landroid/view/animation/Interpolator;

    invoke-direct/range {v3 .. v8}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 523
    iget-object v2, v3, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_FADE_OUT_C:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0xfa

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterAlphaFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 526
    invoke-direct {v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->initSecondPageAlphaView()V

    .line 527
    iget-object v7, v3, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v8, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_ENTER_ALPHA_SHOW_IN_C:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0xfa

    const-wide/16 v11, 0x96

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateEnterAlphaShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 529
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x4

    .line 530
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object p0, v5, v1

    const/4 p0, 0x1

    aput-object v0, v5, p0

    const/4 p0, 0x2

    aput-object v2, v5, p0

    const/4 p0, 0x3

    aput-object v3, v5, p0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 531
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-object v4
.end method

.method private generateEnterAlphaFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 550
    new-array p0, p0, [F

    fill-array-data p0, :array_1a

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 551
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 552
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 553
    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private generateEnterAlphaShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "JJ)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 538
    new-array p0, p0, [F

    fill-array-data p0, :array_1c

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 539
    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 540
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 541
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 542
    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    :array_1c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private generateEnterTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;I",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    int-to-float p0, p2

    const/4 v0, 0x2

    .line 559
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 560
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 562
    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p3, p1, v1, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method private generateEnterTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;I",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    int-to-float p0, p2

    const/4 v0, 0x2

    .line 568
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p0, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 569
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 571
    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p3, p1, v1, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method private generateExitFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 774
    new-array p0, p0, [F

    fill-array-data p0, :array_1a

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 775
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 776
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 777
    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private generateExitTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;I",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    int-to-float p0, p2

    const/4 v0, 0x2

    .line 725
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 726
    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 727
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 728
    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p3, p1, v0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method private generateExitTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;I",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    int-to-float p0, p2

    const/4 v0, 0x2

    .line 734
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 735
    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 736
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 737
    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p4, 0x3

    invoke-direct {p3, p1, p4, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$TranslationAnimatorUpdateListener;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method private generatorEnterSearchBarShowInAnimator(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 764
    new-array p0, p0, [F

    fill-array-data p0, :array_20

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 765
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 766
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 767
    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_20
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private generatorExitSearchBarFadeOutAnimator(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 754
    new-array p0, p0, [F

    fill-array-data p0, :array_20

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 755
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 756
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 757
    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private generatorExitShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 744
    new-array p0, p0, [F

    fill-array-data p0, :array_1a

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 745
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 746
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 747
    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$AlphaAnimatorUpdateListener;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_1a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;
    .registers 1

    .line 140
    sget-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->sInstance:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    if-nez v0, :cond_b

    .line 141
    new-instance v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->sInstance:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    .line 143
    :cond_b
    sget-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->sInstance:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    return-object v0
.end method

.method private hideSoft()V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 408
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 410
    :goto_d
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_18

    .line 411
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    :cond_18
    if-eqz v0, :cond_37

    if-nez v1, :cond_1d

    goto :goto_37

    .line 418
    :cond_1d
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_37

    .line 420
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_37
    :goto_37
    return-void
.end method

.method private initSecondPageAlphaView()V
    .registers 6

    .line 576
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1d

    aget-object v3, p0, v2

    if-eqz v3, :cond_1a

    .line 578
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1a

    .line 580
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    .line 581
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method private initSecondPageStatus()V
    .registers 4

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSecondPageStatus: getSecondPageReCreate() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAnimManager"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 593
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_27

    :cond_26
    move-object v0, v1

    .line 595
    :goto_27
    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_31

    .line 596
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 598
    :cond_31
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result p0

    if-eqz p0, :cond_45

    if-eqz v0, :cond_3d

    const/4 p0, 0x0

    .line 600
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    if-eqz v1, :cond_51

    const/high16 p0, 0x3f800000    # 1.0f

    .line 603
    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_45
    if-eqz v0, :cond_4b

    const/4 p0, 0x4

    .line 607
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4b
    if-eqz v1, :cond_51

    const/4 p0, 0x0

    .line 610
    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_51
    return-void
.end method

.method private showSoft(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 4

    .line 378
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 379
    new-instance p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ShowSoftInputRunnable;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ShowSoftInputRunnable;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method private unionPgsTranslationY()V
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    .line 427
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_18

    .line 429
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 431
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchViewY:I

    :cond_18
    return-void

    .line 434
    :cond_19
    const-string p0, "unionPgsTranslationY object recycled"

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method private wrapperAlphaViews([Landroid/view/View;)[Ljava/lang/ref/WeakReference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            ")[",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1a

    .line 193
    array-length v0, p1

    if-nez v0, :cond_7

    goto :goto_1a

    .line 196
    :cond_7
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    .line 197
    :goto_a
    array-length v1, p1

    if-ge p0, v1, :cond_19

    .line 198
    new-instance v1, Ljava/lang/ref/WeakReference;

    aget-object v2, p1, p0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_19
    return-object v0

    .line 194
    :cond_1a
    :goto_1a
    new-array p0, p0, [Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public enterSearch()Landroid/animation/AnimatorSet;
    .registers 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterSearch: getSecondPageReCreate() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAnimManager"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setSecondPageReCreate(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_26
    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mIsInSearch:Z

    .line 292
    sget-boolean v1, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-nez v1, :cond_5a

    .line 293
    iget v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mPolicy:I

    if-nez v1, :cond_40

    .line 294
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->unionPgsTranslationY()V

    .line 296
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->enterSearchForPolicyA()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mAnimatorSet:Ljava/lang/ref/WeakReference;

    goto :goto_65

    :cond_40
    if-ne v1, v0, :cond_4e

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->enterSearchForPolicyB()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mAnimatorSet:Ljava/lang/ref/WeakReference;

    goto :goto_65

    .line 302
    :cond_4e
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->enterSearchForPolicyC()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mAnimatorSet:Ljava/lang/ref/WeakReference;

    goto :goto_65

    .line 306
    :cond_5a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->enterSearchForPolicyC()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mAnimatorSet:Ljava/lang/ref/WeakReference;

    .line 309
    :goto_65
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mAnimatorSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 310
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_81

    if-eqz p0, :cond_81

    .line 312
    new-instance v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_81
    return-object v0
.end method

.method public exitSearch()Landroid/animation/AnimatorSet;
    .registers 5

    .line 320
    iget-boolean v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mIsInSearch:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->isEnterAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3e

    :cond_b
    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mIsInSearch:Z

    .line 325
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-nez v0, :cond_28

    .line 326
    iget v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mPolicy:I

    if-nez v0, :cond_1b

    .line 327
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->exitSearchPolicyA()Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_2c

    :cond_1b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 329
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->exitSearchPolicyB()Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_2c

    .line 331
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->exitSearchPolicyC()Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_2c

    .line 334
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->exitSearchPolicyC()Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_2c
    if-eqz v0, :cond_3a

    .line 337
    new-instance v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;

    sget-object v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->sInstance:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;-><init>(Ljava/lang/Object;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 339
    :cond_3a
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->hideSoft()V

    return-object v0

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public exitSearchPolicyA()Landroid/animation/AnimatorSet;
    .registers 12

    .line 617
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->assertWeak()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 618
    const-string p0, "object recycled"

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 621
    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v1, 0x4

    .line 624
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_FADE_OUT_A:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0xc8

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 630
    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v6, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SHOW_IN_A:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3, v6, v4, v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generatorExitShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x32

    .line 632
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 634
    iget v4, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchViewY:I

    .line 635
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 636
    invoke-virtual {v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 637
    iget v0, v5, Landroid/graphics/Rect;->top:I

    sub-int v7, v4, v0

    .line 641
    iget-object v6, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v8, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_FADE_OUT_A:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0xc8

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 644
    iget-object v6, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v8, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_SHOW_IN_A:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 647
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 648
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v3, 0x2

    aput-object p0, v1, v3

    const/4 p0, 0x3

    aput-object v0, v1, p0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 649
    iget-object p0, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_85

    .line 650
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p0, :cond_85

    .line 652
    invoke-direct {v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->calculateScaleAndOffset()V

    .line 653
    iget v0, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mScale:F

    iget v1, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 654
    new-array v0, v2, [Landroid/animation/Animator;

    aput-object p0, v0, v6

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 657
    :cond_85
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-object v4
.end method

.method public exitSearchPolicyB()Landroid/animation/AnimatorSet;
    .registers 12

    .line 677
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_FADE_OUT_B:Landroid/view/animation/Interpolator;

    const-wide/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SHOW_IN_B:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generatorExitShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 682
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 684
    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SEARCHBAR_FADE_OUT_B:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0xc8

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generatorExitSearchBarFadeOutAnimator(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 687
    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x38

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    .line 688
    iget-object v6, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v8, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_FADE_OUT_B:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0x15e

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 691
    iget-object v6, v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v8, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_SHOW_IN_B:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 693
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x5

    .line 694
    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object p0, v5, v0

    const/4 p0, 0x3

    aput-object v3, v5, p0

    const/4 p0, 0x4

    aput-object v2, v5, p0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 695
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-object v4
.end method

.method public exitSearchPolicyC()Landroid/animation/AnimatorSet;
    .registers 11

    .line 702
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_FADE_OUT_C:Landroid/view/animation/Interpolator;

    const-wide/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitFadeOutAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_ALPHA_SHOW_IN_C:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generatorExitShowInAnimator([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 707
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 709
    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    .line 710
    iget-object v5, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_FADE_OUT_C:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0xfa

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitTranslationFadeOutAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 713
    iget-object v5, v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->INTER_EXIT_TRANS_SHOW_IN_C:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0x15e

    invoke-direct/range {v4 .. v9}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->generateExitTranslationShowInAnimator(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 715
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 717
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x4

    .line 718
    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    const/4 p0, 0x3

    aput-object v2, v4, p0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 719
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-object v3
.end method

.method public getActionPolicy()I
    .registers 1

    .line 161
    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mPolicy:I

    return p0
.end method

.method public getActionPolicyString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_18

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : policy_search_search"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : policy_go"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 167
    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : policy_nosearch_search"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOffset()F
    .registers 1

    .line 393
    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mOffset:F

    return p0
.end method

.method public getScale()F
    .registers 1

    .line 389
    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mScale:F

    return p0
.end method

.method public getSecondPageReCreate()Z
    .registers 1

    .line 401
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageReCreate:Z

    return p0
.end method

.method public isEnterAnimRunning()Z
    .registers 2

    .line 278
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mAnimatorSet:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 279
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_15

    .line 280
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v0
.end method

.method public isInSearch()Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mIsInSearch:Z

    return p0
.end method

.method public reset()V
    .registers 1

    const/4 p0, 0x0

    .line 785
    sput-object p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->sInstance:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    return-void
.end method

.method public resetFirstPageStatus()V
    .registers 7

    .line 348
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 349
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    .line 351
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 356
    :cond_18
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3c

    .line 357
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    if-eqz v3, :cond_39

    .line 359
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_39

    .line 360
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_39

    .line 361
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 367
    :cond_3c
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_52

    .line 368
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p0, :cond_52

    .line 370
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition()Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 372
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_52
    return-void
.end method

.method public setActionPolicy(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mPolicy:I

    return-void
.end method

.method public varargs setFirstPageSearchViews(Landroid/view/ViewGroup;[Landroid/view/View;)V
    .registers 6

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p2, :cond_22

    .line 205
    array-length v1, p2

    if-lez v1, :cond_22

    .line 206
    array-length v1, p2

    add-int/2addr v1, v0

    const-class v2, [Landroid/view/View;

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    .line 207
    array-length v1, p2

    sub-int/2addr v1, v0

    aput-object p1, p2, v1

    .line 208
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->wrapperAlphaViews([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    return-void

    .line 210
    :cond_22
    new-array p2, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->wrapperAlphaViews([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public varargs setFirstPageSearchViews(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/ViewGroup;[Landroid/view/View;)V
    .registers 5

    .line 183
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    .line 184
    new-array p1, p1, [Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setFirstPageSearchViews(Landroid/view/ViewGroup;[Landroid/view/View;)V

    return-void

    .line 186
    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageSearchBarWR:Ljava/lang/ref/WeakReference;

    .line 187
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageRootViewWR:Ljava/lang/ref/WeakReference;

    .line 188
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->wrapperAlphaViews([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mFirstPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setScaleAndOffset(FF)V
    .registers 3

    .line 384
    iput p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mScale:F

    .line 385
    iput p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mOffset:F

    return-void
.end method

.method public setSecondPageReCreate(Z)V
    .registers 2

    .line 397
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageReCreate:Z

    return-void
.end method

.method public setSecondPageSearchViews(Landroid/os/Bundle;Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 255
    :goto_5
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setSecondPageReCreate(Z)V

    .line 256
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->showSoft(Lcom/transsion/widgetslib/widget/SearchBar;)V

    .line 257
    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setSecondPageSearchViews(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    return-void
.end method

.method public varargs setSecondPageSearchViews(Landroid/os/Bundle;Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;[Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 222
    :goto_5
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setSecondPageReCreate(Z)V

    .line 223
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->showSoft(Lcom/transsion/widgetslib/widget/SearchBar;)V

    .line 224
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setSecondPageSearchViews(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;[Landroid/view/View;)V

    return-void
.end method

.method public setSecondPageSearchViews(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V
    .registers 4

    .line 267
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    .line 268
    filled-new-array {p2}, [Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->wrapperAlphaViews([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    .line 269
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    .line 270
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->initSecondPageStatus()V

    return-void
.end method

.method public varargs setSecondPageSearchViews(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;[Landroid/view/View;)V
    .registers 5

    .line 235
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz v0, :cond_8

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setSecondPageSearchViews(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    return-void

    .line 238
    :cond_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageRootViewWR:Ljava/lang/ref/WeakReference;

    .line 239
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 240
    array-length p3, p3

    aput-object p2, v0, p3

    .line 241
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->wrapperAlphaViews([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageAlphaViewWR:[Ljava/lang/ref/WeakReference;

    .line 242
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->mSecondPageSearchBarWR:Ljava/lang/ref/WeakReference;

    .line 243
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->initSecondPageStatus()V

    return-void
.end method
