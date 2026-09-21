.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 9

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v1, v5

    .line 142
    invoke-static {v1, v2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmaster_top_ui_contrast_icon_margin_bottom_changed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fputmContactBottomMarginChanged(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;I)V

    return-void

    .line 145
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fputmContactBottomMarginChanged(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;I)V

    return-void
.end method
