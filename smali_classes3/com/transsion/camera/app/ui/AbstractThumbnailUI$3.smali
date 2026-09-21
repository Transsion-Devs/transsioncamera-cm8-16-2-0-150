.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$needAnimation:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Landroid/graphics/Bitmap;Z)V
    .registers 4

    .line 413
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->val$needAnimation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 416
    const-string/jumbo v0, "updateThumbnailView"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$mwrapDrawable(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->hideThumbnailBg()V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] updateThumbnailView null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_93

    .line 423
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 424
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_40

    .line 425
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 426
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_47

    .line 428
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 430
    :goto_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->beforeThumbnailAnimation()V

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] updateThumbnailView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->val$bitmap:Landroid/graphics/Bitmap;

    .line 434
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->val$needAnimation:Z

    if-eqz v0, :cond_93

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->playThumbnailAnimation()V

    .line 441
    :cond_93
    :goto_93
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 442
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShot2SeeEndTime()V

    .line 443
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 v0, 0x3ec

    invoke-interface {p0, v0}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    return-void
.end method
