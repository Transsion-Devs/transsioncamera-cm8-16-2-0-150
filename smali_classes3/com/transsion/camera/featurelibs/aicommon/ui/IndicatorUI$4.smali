.class Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->onPreviewShot([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

.field final synthetic val$shotJpeg:[B


# direct methods
.method public static synthetic $r8$lambda$TVtUxI4JAC2ZukllBEhtrXch7Ao(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->lambda$doProcess$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Ljava/lang/String;[B)V
    .registers 4

    .line 631
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->val$shotJpeg:[B

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doProcess$0(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotImage(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotImage(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$mstartShotAnimation(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    return-void

    .line 643
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPreviewShot mPreviewShotImage is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;->val$shotJpeg:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 637
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
