.class Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Context;)V
    .registers 3

    .line 1639
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    .line 1640
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 1652
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmPhysicalKeyManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1653
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmPhysicalKeyManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onOrientationChanged(I)V

    .line 1657
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmOriginalOrientation(Lcom/transsion/camera/app/BaseCameraActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$smroundOrientation(II)I

    move-result p1

    .line 1658
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmOriginalOrientation(Lcom/transsion/camera/app/BaseCameraActivity;I)V

    .line 1659
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->correctOrientation(I)I

    move-result p1

    .line 1660
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->changeAndNotifyOrientation(I)V

    return-void
.end method
