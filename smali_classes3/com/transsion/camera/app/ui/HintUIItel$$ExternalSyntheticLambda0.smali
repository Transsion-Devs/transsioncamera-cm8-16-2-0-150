.class public final synthetic Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/HintUIItel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/LinearLayout;

.field public final synthetic f$3:Landroid/widget/LinearLayout;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/HintUIItel;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUIItel;

    iput p2, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$2:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$3:Landroid/widget/LinearLayout;

    iput p5, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUIItel;

    iget v1, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$3:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/ui/HintUIItel;->$r8$lambda$UNdhK613R0Gfjn6jwcocR2_bIig(Lcom/transsion/camera/app/ui/HintUIItel;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
