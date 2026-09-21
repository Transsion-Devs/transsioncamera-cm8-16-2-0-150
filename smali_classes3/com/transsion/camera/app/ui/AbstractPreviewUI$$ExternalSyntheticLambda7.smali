.class public final synthetic Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

.field public final synthetic f$2:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/common/IAppUI$AnimationType;Landroid/graphics/RectF;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;->f$1:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;->f$2:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;->f$1:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;->f$2:Landroid/graphics/RectF;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->$r8$lambda$jN9MoLy2JvsuYTJ58ITuhQmu0Lw(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/common/IAppUI$AnimationType;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method
