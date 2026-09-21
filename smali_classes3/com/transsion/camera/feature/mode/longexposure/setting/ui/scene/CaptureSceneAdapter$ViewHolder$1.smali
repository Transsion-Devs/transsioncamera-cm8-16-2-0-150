.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;Landroid/view/View;)V
    .registers 3

    .line 232
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_item_background_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
