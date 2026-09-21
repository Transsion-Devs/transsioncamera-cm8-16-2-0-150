.class public final Lcom/transsion/widgetslib/widget/FobAnimDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final animator:Landroid/animation/ValueAnimator;

.field private isReversed:Z


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public final getAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final isReversed()Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isReversed:Z

    return p0
.end method

.method public final isRunning()Z
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final reverse()V
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isReversed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isReversed:Z

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method public final setReversed(Z)V
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isReversed:Z

    return-void
.end method
