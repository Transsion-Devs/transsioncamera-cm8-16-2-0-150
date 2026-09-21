.class public final synthetic Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda0;->f$0:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda0;->f$0:Landroid/animation/ValueAnimator;

    check-cast p1, [Landroid/animation/Animator$AnimatorListener;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->$r8$lambda$048UHys8nRHvp8UYwi2iGR_ap4w(Landroid/animation/ValueAnimator;[Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
