.class public final Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsFirstTimeLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const-string p1, "OSEmptyPageLottieView"

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;->mIsFirstTimeLoaded:Z

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1b

    .line 27
    sget p1, Lcom/transsion/widgetslib/R$id;->os_empty_page_lottie_view_id:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_1b
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

    .line 17
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getMIsFirstTimeLoaded()Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;->mIsFirstTimeLoaded:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 44
    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->onAttachedToWindow()V

    .line 45
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;->mIsFirstTimeLoaded:Z

    if-nez v0, :cond_e

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_e
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 52
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;->mIsFirstTimeLoaded:Z

    return-void
.end method

.method public final setMIsFirstTimeLoaded(Z)V
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSEmptyPageLottieView;->mIsFirstTimeLoaded:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 35
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_10

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void

    .line 39
    :cond_10
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method
