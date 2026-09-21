.class Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 699
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->-$$Nest$fgetmCameraSwitch(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->-$$Nest$fgetmCameraSwitch(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/vlog/R$drawable;->vlog_camera_switcher:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method
