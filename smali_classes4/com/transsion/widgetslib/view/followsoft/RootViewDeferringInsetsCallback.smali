.class public Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field private decorFitsSystemWindows:Z

.field private deferredInsetTypes:I

.field private deferredInsets:Z

.field private isInOOBE:Z

.field private lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

.field private persistentInsetTypes:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->isInOOBE:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->decorFitsSystemWindows:Z

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    .line 59
    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 61
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    .line 51
    iput p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    and-int p0, p1, p2

    if-nez p0, :cond_19

    return-void

    .line 53
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IIZ)V
    .registers 6

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->isInOOBE:Z

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    .line 59
    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 61
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    .line 40
    iput p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    .line 41
    iput p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    .line 42
    iput-boolean p3, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->decorFitsSystemWindows:Z

    and-int p0, p1, p2

    if-nez p0, :cond_19

    return-void

    .line 44
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ZIIZ)V
    .registers 6

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    .line 59
    iput-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    .line 29
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->isInOOBE:Z

    .line 30
    iput p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    .line 31
    iput p3, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    .line 32
    iput-boolean p4, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->decorFitsSystemWindows:Z

    and-int p0, p2, p3

    if-nez p0, :cond_19

    return-void

    .line 34
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static dp2px(I)I
    .registers 3

    int-to-float p0, p0

    .line 103
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 102
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/res/Resources;)I
    .registers 4

    .line 107
    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    .line 72
    iput-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    .line 73
    iput-object p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 75
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    if-eqz v0, :cond_b

    .line 76
    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    goto :goto_10

    .line 79
    :cond_b
    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    iget v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    or-int/2addr v0, v1

    .line 83
    :goto_10
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 84
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->isInOOBE:Z

    if-nez v0, :cond_3c

    iget v0, p2, Landroidx/core/graphics/Insets;->bottom:I

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->dp2px(I)I

    move-result v1

    if-gt v0, v1, :cond_3c

    .line 85
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->decorFitsSystemWindows:Z

    if-eqz v0, :cond_32

    .line 86
    iget v0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v1, p2, Landroidx/core/graphics/Insets;->top:I

    iget v2, p2, Landroidx/core/graphics/Insets;->right:I

    iget v3, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3c

    .line 88
    :cond_32
    iget v0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v1, p2, Landroidx/core/graphics/Insets;->top:I

    iget v2, p2, Landroidx/core/graphics/Insets;->right:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 92
    :cond_3c
    :goto_3c
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->isInOOBE:Z

    if-eqz p0, :cond_55

    .line 93
    iget p0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v0, p2, Landroidx/core/graphics/Insets;->top:I

    iget p2, p2, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->getNavigationBarHeight(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v1}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->dp2px(I)I

    move-result v1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    :cond_55
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .registers 3

    .line 123
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    .line 132
    iget-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    if-eqz p0, :cond_1b

    .line 133
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :cond_1b
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .registers 3

    .line 113
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    :cond_c
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    return-object p1
.end method
