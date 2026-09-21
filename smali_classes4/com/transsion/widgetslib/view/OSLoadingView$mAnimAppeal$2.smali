.class final Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    # getter for: Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMOutCircleRadiusStatic$p(Lcom/transsion/widgetslib/view/OSLoadingView;)F

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x0

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
