.class Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 109
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationCancel,mAnimShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmAnimShow(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmAnimShow(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->updateBottomUIStatus(Z)V

    :cond_38
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 101
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd,mAnimShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmAnimShow(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmAnimShow(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->updateBottomUIStatus(Z)V

    :cond_38
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 117
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationRepeat"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 93
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart,mAnimShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmAnimShow(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmAnimShow(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->updateBottomUIStatus(Z)V

    :cond_38
    return-void
.end method
