.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V
    .registers 2

    .line 1145
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1148
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1149
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmGraduationContainer(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmGraduationView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1155
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1156
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmGraduationContainer(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmGraduationView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
