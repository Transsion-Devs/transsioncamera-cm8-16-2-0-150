.class Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoldWaterMarkFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xb1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onFragmentResume()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xb2

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
