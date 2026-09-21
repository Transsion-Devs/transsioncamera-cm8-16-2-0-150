.class Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEnd()V
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->-$$Nest$fgetmSkinCardMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->-$$Nest$fgetmSkinCardMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;->onSkinColorTouchEnd()V

    :cond_11
    return-void
.end method

.method public onTouching()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->-$$Nest$fgetmSkinCardMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->-$$Nest$fgetmSkinCardMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;->onSkinColorTouching()V

    :cond_11
    return-void
.end method
