.class Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/EditWaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkLocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V
    .registers 3

    .line 931
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 932
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 937
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_7

    goto :goto_1a

    .line 940
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 941
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$mupdateCityInfo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception p0

    .line 944
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
