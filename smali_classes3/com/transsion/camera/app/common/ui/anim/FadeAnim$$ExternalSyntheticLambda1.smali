.class public final synthetic Lcom/transsion/camera/app/common/ui/anim/FadeAnim$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->$r8$lambda$AW7XNYgo3nYeimzX_lWrTIF6Hr0(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method
