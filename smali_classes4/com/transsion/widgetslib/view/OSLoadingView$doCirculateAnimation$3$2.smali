.class public final Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 288
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    # invokes: Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMAnimCircle(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 291
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    # invokes: Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMAnimAppeal(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 292
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    # invokes: Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMAnimRepel(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
