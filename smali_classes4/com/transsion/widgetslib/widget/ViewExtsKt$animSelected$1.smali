.class public final Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/ViewExtsKt;->animSelected(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

.field final synthetic $normalColor:I

.field final synthetic $selectedColor:I

.field final synthetic $this_animSelected:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/transsion/widgetslib/widget/FobAnimDelegate;II)V
    .registers 5

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$this_animSelected:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    iput p3, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$selectedColor:I

    iput p4, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$normalColor:I

    .line 50
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$this_animSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isReversed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$this_animSelected:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    goto :goto_25

    :cond_1a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$this_animSelected:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 54
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->setReversed(Z)V

    const p1, 0x10100a1

    .line 57
    filled-new-array {p1}, [I

    move-result-object p1

    .line 58
    new-array v0, v1, [I

    filled-new-array {p1, v0}, [[I

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$this_animSelected:Landroid/widget/TextView;

    new-instance v1, Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$selectedColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;->$normalColor:I

    filled-new-array {v2, p0}, [I

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
