.class Lcom/transsion/camera/app/ui/AbstractShutterUI$5;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;->transitionToSmall()V
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

    .line 1149
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1160
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 1161
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string/jumbo v0, "transitionToSmall, end Animation"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mupdateImageResourceByState(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    .line 1163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1152
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 1153
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string/jumbo v0, "transitionToSmall, start Animation"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    return-void
.end method
