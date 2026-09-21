.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .registers 2

    .line 944
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 947
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p1, v0

    .line 949
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 950
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
