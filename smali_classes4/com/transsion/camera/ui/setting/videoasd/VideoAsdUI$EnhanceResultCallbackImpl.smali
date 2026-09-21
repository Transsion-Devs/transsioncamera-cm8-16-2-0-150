.class Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnhanceResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
