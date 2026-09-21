.class Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$5;
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

    .line 653
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$5;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 656
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$5;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$fgetmStreetPhotoStyleSelectRoot(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$5;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$fgetmStreetPhotoStyleSelectRoot(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method
