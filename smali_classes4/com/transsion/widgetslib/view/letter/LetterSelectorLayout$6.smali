.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$6;
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

    .line 983
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$6;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 986
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 988
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$6;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAlpha:I
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-void
.end method
