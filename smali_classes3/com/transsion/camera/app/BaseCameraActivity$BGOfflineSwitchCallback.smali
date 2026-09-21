.class Lcom/transsion/camera/app/BaseCameraActivity$BGOfflineSwitchCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGOfflineSwitchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 2223
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BGOfflineSwitchCallback;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$BGOfflineSwitchCallback;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onOfflineSwitchFinish(I)V
    .registers 2

    .line 2226
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BGOfflineSwitchCallback;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_9

    .line 2227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOfflineSwitchFinish(I)V

    :cond_9
    return-void
.end method
