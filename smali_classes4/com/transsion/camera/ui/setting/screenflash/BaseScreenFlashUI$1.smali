.class Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->handleShowScreenFlashView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$1;->this$0:Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 3

    .line 208
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$1;->this$0:Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$fgetmFlashingView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$1;->this$0:Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$fgetmFlashingView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-nez p1, :cond_23

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$1;->this$0:Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$fgetmFlashingView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_23
    return-void
.end method

.method public onError()V
    .registers 2

    .line 217
    invoke-static {}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[handleShowScreenFlashView] onError"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
