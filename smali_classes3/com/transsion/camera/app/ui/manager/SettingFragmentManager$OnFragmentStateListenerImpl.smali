.class Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFragmentStateListenerImpl"
.end annotation


# instance fields
.field private oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;Lcom/transsion/camera/app/ui/SettingFragment;)V
    .registers 3

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;Lcom/transsion/camera/app/ui/SettingFragment;Lcom/transsion/camera/app/ui/manager/SettingFragmentManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;Lcom/transsion/camera/app/ui/SettingFragment;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 379
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz v0, :cond_7a

    .line 380
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentDestroy remove old fragment :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/SettingFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/SettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/SettingFragment;->unInit()V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmSettingFragment(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/ui/SettingFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-ne v0, v2, :cond_78

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInitSettingUIs()V

    .line 387
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFragmentDestroy release mSettingFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmSettingFragment(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/ui/SettingFragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fputmSettingFragment(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;Lcom/transsion/camera/app/ui/SettingFragment;)V

    .line 390
    :cond_78
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->oldSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    :cond_7a
    return-void
.end method

.method public onFragmentExitView()V
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xfd

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onFragmentResume()V
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x6a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
