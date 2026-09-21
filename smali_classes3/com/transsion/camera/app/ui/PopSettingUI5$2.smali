.class Lcom/transsion/camera/app/ui/PopSettingUI5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PopSettingUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI5;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5$2;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5$2;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI5;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI5;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/app/ui/PopSettingUI5;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
