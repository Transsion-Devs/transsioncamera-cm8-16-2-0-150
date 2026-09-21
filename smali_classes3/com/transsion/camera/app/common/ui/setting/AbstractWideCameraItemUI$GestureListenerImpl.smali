.class Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onLongClickEvent()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmIsLongPressTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)V

    :cond_e
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 282
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSingleTapUp], mIsEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmIsEnabled(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsZoomBarShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmIsZoomBarShow(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVideoStartRecording:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoStartRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmIsEnabled(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmIsZoomBarShow(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->isCurrentModeSupportZoom()Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_65

    .line 287
    :cond_51
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoStartRecording:Z

    if-eqz p1, :cond_60

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez p1, :cond_60

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->restoreZoomValue()Z

    move-result p0

    return p0

    .line 290
    :cond_60
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onClickEvent()Z

    move-result p0

    return p0

    :cond_65
    :goto_65
    const/4 p0, 0x0

    return p0
.end method
