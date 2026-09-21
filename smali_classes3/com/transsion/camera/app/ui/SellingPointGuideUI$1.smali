.class Lcom/transsion/camera/app/ui/SellingPointGuideUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/SellingPointGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$mupdatePreviewRect(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/graphics/Rect;)V

    return-void
.end method
