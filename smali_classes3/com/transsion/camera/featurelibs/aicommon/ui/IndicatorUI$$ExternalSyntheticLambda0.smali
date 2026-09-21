.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

.field public final synthetic f$1:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Landroid/widget/FrameLayout$LayoutParams;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    iput p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->$r8$lambda$4VHoKtb42oIzKlMqmjqeMA-BZIM(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Landroid/widget/FrameLayout$LayoutParams;IZLandroid/animation/ValueAnimator;)V

    return-void
.end method
