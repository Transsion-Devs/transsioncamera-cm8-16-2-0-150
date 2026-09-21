.class Lcom/transsion/camera/app/BaseCameraActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 1440
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyKeyEvent(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;)V
    .registers 3

    .line 1443
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->FROM_SETTING:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    if-ne p1, v0, :cond_10

    .line 1444
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_24

    const/16 p1, 0x1a2

    .line 1445
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void

    .line 1448
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p1, :cond_1b

    const/16 v0, 0x126

    .line 1449
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1451
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_24

    .line 1452
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notifyRecentAppChanged()V

    :cond_24
    return-void
.end method
