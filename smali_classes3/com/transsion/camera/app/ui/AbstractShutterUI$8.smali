.class Lcom/transsion/camera/app/ui/AbstractShutterUI$8;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;->transitionToIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 1273
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1276
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1277
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmDrawableState(Lcom/transsion/camera/app/ui/AbstractShutterUI;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    .line 1278
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mupdateImageResourceByState(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    :cond_18
    return-void
.end method
