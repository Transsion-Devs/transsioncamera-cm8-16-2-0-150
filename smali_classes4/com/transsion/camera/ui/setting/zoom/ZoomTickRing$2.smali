.class Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$2;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;Ljava/lang/String;)V
    .registers 3

    .line 376
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 2

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->-$$Nest$fputmCenterToEndsStretchFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;F)V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
