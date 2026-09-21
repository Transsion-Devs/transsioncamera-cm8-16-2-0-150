.class Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;
.super Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessingProgress"
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V

    .line 227
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected correctAnimation(Ljava/lang/Long;)V
    .registers 2

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected startProgress(J)V
    .registers 3

    .line 232
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->startProgress(J)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void
.end method

.method protected stopProgress()V
    .registers 1

    .line 239
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->stopProgress()V

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method
