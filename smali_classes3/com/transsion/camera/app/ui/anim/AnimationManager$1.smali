.class Lcom/transsion/camera/app/ui/anim/AnimationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isNeedFadeOutAnimator()Z
    .registers 2

    .line 150
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4FadeOutAnimator:Z

    if-nez v0, :cond_1b

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4GoToGalleryShareBackAnimator:Z

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$misSwitchAnimTypeGoToGallery(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public previewRendered(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 156
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "previewRendered"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmIsPreviewRendered(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 158
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->isNeedFadeOutAnimator()Z

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget-object v1, p1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v1, :cond_53

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$misNeedSwitchAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->switchBackground(Z)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$misSwitchAnimNeedDoubleFrame(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmPreviewController(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object p1

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmPreviewController(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v1

    if-eqz p1, :cond_4d

    if-eqz v1, :cond_4d

    .line 164
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v2, p1, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mupdateBlurBitmap(Lcom/transsion/camera/app/ui/anim/AnimationManager;Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 167
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mstartFadeSwitchAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 169
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmNeedWideScaleAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mstartWideAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    return-void

    .line 172
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mhidePreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    return-void
.end method
