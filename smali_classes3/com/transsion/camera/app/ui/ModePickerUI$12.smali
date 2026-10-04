.class Lcom/transsion/camera/app/ui/ModePickerUI$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->playMoreModeGuideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 2062
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2065
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeRightGuide(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2066
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeRightGuide(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
