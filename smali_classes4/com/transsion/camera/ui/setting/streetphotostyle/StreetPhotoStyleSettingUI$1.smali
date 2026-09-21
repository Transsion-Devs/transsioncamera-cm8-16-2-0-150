.class Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$fgetmStreetPhotoStyleSelectRoot(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$fgetmStreetPhotoStyleSelectRoot(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 94
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$fgetmStreetPhotoStyleSelectRoot(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$fgetmStreetPhotoStyleSelectRoot(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method
