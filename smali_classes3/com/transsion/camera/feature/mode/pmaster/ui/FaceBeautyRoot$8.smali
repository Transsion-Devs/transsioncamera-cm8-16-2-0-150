.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$8;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 569
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_12

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$8;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0xc4

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    :cond_12
    if-nez p2, :cond_1f

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$8;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0xc5

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1f
    return-void
.end method
